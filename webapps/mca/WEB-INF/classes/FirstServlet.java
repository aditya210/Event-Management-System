import java.io.*;
import javax.servlet.*;

public class FirstServlet extends GenericServlet{
	public void service(ServletRequest request,
			ServletResponse response)
	throws ServletException,IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		for(int i=1;i<=6;i++)
			out.print("<h"+i+">My First Servlet</h"+i+">");
	
	}
}
	
