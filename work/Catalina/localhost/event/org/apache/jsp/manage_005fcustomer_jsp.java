/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.56
 * Generated at: 2018-12-03 09:03:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class manage_005fcustomer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<article>\r\n");
      out.write("<table width='100%' height='100%' class='admin' style='border-spacing:20px;'>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td colspan=4 align='center'>\r\n");
      out.write("\t\t<a href='admin_home.jsp'><img src='images/admin.png' width=200 height=200/></a>\r\n");
      out.write("\t\t<h1>Welcome Admin - ");
      out.print(session.getAttribute("aname"));
      out.write("</h1>\r\n");
      out.write("\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td>\r\n");
      out.write("\r\n");

	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	
	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from customer");

      out.write("\r\n");
      out.write("<table width='100%' style='background:orange;border:none;font-size:10pt;'>\r\n");
      out.write("<tr style='background:red;'>\r\n");
      out.write("\t<th>Customer ID</th>\r\n");
      out.write("\t<th>Name</th>\r\n");
      out.write("\t<th>Address</th>\r\n");
      out.write("\t<th>Phone</th>\r\n");
      out.write("\t<th>Email</th>\r\n");
      out.write("</tr>\r\n");

	while(rs.next()){

      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td align='center'>");
      out.print(rs.getString(1));
      out.write("</td>\r\n");
      out.write("\t<td align='center'>");
      out.print(rs.getString(3));
      out.write("</td>\r\n");
      out.write("\t<td align='center'>");
      out.print(rs.getString(4));
      out.write("</td>\r\n");
      out.write("\t<td align='center'>");
      out.print(rs.getString(5));
      out.write("</td>\r\n");
      out.write("\t<td align='center'>");
      out.print(rs.getString(6));
      out.write("</td>\r\n");
      out.write("</tr>\r\n");

	}

      out.write("\r\n");
      out.write("\t</table>\t\r\n");
      out.write("\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</article>\r\n");
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
