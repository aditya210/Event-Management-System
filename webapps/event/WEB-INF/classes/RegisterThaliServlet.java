import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.sql.*;
import java.text.*;
 
@WebServlet("/RegisterThaliServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class RegisterThaliServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();	
		try{
	        	String appPath = request.getServletContext().getRealPath("/");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
		
			String tname = request.getParameter("tname");
			String ttype = request.getParameter("ttype");
			float rate = Float.parseFloat(request.getParameter("rate"));
	
			String photo="",pdf="";
			int i=0;
		
		        for(Part part : request.getParts()) {
		        	String fileName = extractFileName(part);

		    		if(!fileName.equals(""))
		    		{
					if(i==0){
						photo= fileName;
                    				part.write(appPath + "/images/" + photo);
						i++;
					}
					else if(i==1){
						pdf = fileName;
                    				part.write(appPath + "/images/" + pdf);
					}
				}
		    	}

			PreparedStatement ps = con.prepareStatement("insert into thali(t_name, t_type, t_rate, t_path, t_img) values(?,?,?,?,?)");
			
			ps.setString(1,tname);
			ps.setString(2,ttype);
			ps.setFloat(3,rate);
			ps.setString(4,photo);
			ps.setString(5,pdf);
			ps.executeUpdate();
			
			response.sendRedirect("http://localhost:8080/event/manage_food.jsp");
	        }
		catch(Exception e){
			out.println("<h4>"+e+"</h4>");
		}	
	}

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
		return "";
	}
}
