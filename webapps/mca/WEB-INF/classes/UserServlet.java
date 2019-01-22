import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class UserServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,
			HttpServletResponse response)
	throws ServletException,IOException{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		String uname = request.getParameter("uname");
		out.println("<h3>Welcome "+uname+"</h3>");
	}
}



