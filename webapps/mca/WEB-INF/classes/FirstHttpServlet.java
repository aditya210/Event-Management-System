import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class FirstHttpServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,
			HttpServletResponse response)
	throws ServletException,IOException{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		boolean flag=false;

		out.println("<table border=1>");
		
		for(int i=0;i<8;i++){
			out.println("<tr>");
			for(int j=0;j<8;j++){
				String c = flag?"red":"green";
				out.print("<td width=75 height=75 bgcolor="+c+"></td>");
				flag=!flag;
			}
			out.println("</tr>");
			flag=!flag;
		}

		out.println("</table>");
	}
}



