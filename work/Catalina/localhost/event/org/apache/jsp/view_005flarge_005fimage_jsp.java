/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.56
 * Generated at: 2018-12-17 17:13:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class view_005flarge_005fimage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"err.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<link type='text/css' rel='stylesheet' href='style.css'>\r\n");
      out.write("\r\n");
      out.write("<script type='text/javascript'>\r\n");
      out.write("var imgs = new Array();\r\n");
      out.write("imgs[0] = 'images/back1.jpg';\r\n");
      out.write("imgs[1] = 'images/back2.jpg';\r\n");
      out.write("imgs[2] = 'images/back3.jpg';\r\n");
      out.write("imgs[3] = 'images/back4.jpg';\r\n");
      out.write("\r\n");
      out.write("var i=1;\r\n");
      out.write("\r\n");
      out.write("function change()\r\n");
      out.write("{\r\n");
      out.write("\tdocument.getElementById('back').background = imgs[i];\r\n");
      out.write("\ti=(i+1)%4;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("setInterval('change()',3000);\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<body id='back' background='images/back1.jpg' style='background-size:100%;padding:20px;'>\r\n");
      out.write("<header>\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("</header>\r\n");
      out.write("\r\n");
      out.write("\r\n");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	
	
	int id = Integer.parseInt(request.getParameter("id"));
	PreparedStatement ps = con.prepareStatement("select * from gallery where g_id=?");
	ps.setInt(1,id);
	ResultSet rs = ps.executeQuery();
	rs.next();

      out.write("\t\r\n");
      out.write("<table style='background:white;' align='center'>\t\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td align='right'><a href='view_gallery.jsp'>X</a></td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td align='center'><img src='images/");
      out.print(rs.getString(3));
      out.write("' width=500 height=500/></td>\r\n");
      out.write("<tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<footer>\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</footer>\r\n");
      out.write("</body>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}