import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.sql.*;
import java.text.*;
 
@WebServlet("/RegisterLearnerServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class RegisterVenueServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();	
		try{
	        	String appPath = request.getServletContext().getRealPath("/");

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/event","root","jasper");
		
			String vname = request.getParameter("vname");
			String cname = request.getParameter("cname");
			String addr = request.getParameter("addr");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			float rate = Float.parseFloat(request.getParameter("rate"));
	
			String photo="";
		
		        for(Part part : request.getParts()) {
		        	String fileName = extractFileName(part);

		    		if(!fileName.equals(""))
		    		{
					photo= fileName;
                    			part.write(appPath + "/images/" + photo);
				}
		    	}

			PreparedStatement ps = con.prepareStatement("insert into venue(venue_name, venue_contact_person, venue_address, venue_phone, venue_email, venue_rate, venue_img) values(?,?,?,?,?,?,?)");
			
			ps.setString(1,vname);
			ps.setString(2,cname);
			ps.setString(3,addr);
			ps.setString(4,phone);
			ps.setString(5,email);
			ps.setFloat(6,rate);
			ps.setString(7,photo);

			ps.executeUpdate();
			
			response.sendRedirect("http://localhost:8080/event/manage_venue.jsp");
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
