import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,
			HttpServletResponse response)
	throws ServletException,IOException{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		String un = request.getParameter("uname");
		String p = request.getParameter("pass");

		if(un.equals("MCA") && p.equals("CS"))
			response.sendRedirect("http://localhost:8080/mca/welcome.html");
		else
			response.sendRedirect("http://localhost:8080/mca/error.html");

	}
}



