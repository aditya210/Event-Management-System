/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.56
 * Generated at: 2018-12-13 08:07:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_005fus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<link type='text/css' rel='stylesheet' href='style.css'>\n");
      out.write("\n");
      out.write("<script type='text/javascript'>\n");
      out.write("var imgs = new Array();\n");
      out.write("imgs[0] = 'images/college.jpg';\n");
      out.write("imgs[1] = 'images/conference.jpg';\n");
      out.write("imgs[2] = 'images/download.jpg';\n");
      out.write("imgs[3] = 'images/back4.jpg';\n");
      out.write("\n");
      out.write("var i=1;\n");
      out.write("\n");
      out.write("function change()\n");
      out.write("{\n");
      out.write("\tdocument.getElementById('back').background = imgs[i];\n");
      out.write("\ti=(i+1)%4;\n");
      out.write("}\n");
      out.write("\n");
      out.write("setInterval('change()',3000);\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<body id='back' background='images/college.jpg' style='background-size:100%;padding:20px;'>\n");
      out.write("<header>\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<article style='background:none;padding:20px;color:white;font-size:11pt;'>\n");
      out.write("<span style='font-size:20pt;font-weight:bold;'>ABOUT US</span>\n");
      out.write("<p style='text-align:justify;'>We are a team of Graduate students who have completed Advance Software Engineering course , from CSUDH and have have an experience of more than 5 years in Computer Science..We started as a group at California State University, Dominguez Hills. We Successfully implemented an Event Management System .</p>\n");
      out.write("<p style='text-align:justify;'></p>\n");
      out.write("<p>Our aim and our mission is provide simple but Out-of-the-box concepts, refreshing and satisfying experience with fruitful results to our clients. We are different from others because it's not about what we do, it's all about how we do, and we do it with high level of efficiency, dedication and perfection.</p>\n");
      out.write(" \n");
      out.write("<span style='font-size:20pt;font-weight:bold;'>TEAM'S MESSAGE</span>\n");
      out.write("<p style='text-align:justify;'>\"We combine imagination with experience to create and deliver our customer's expectations. Our local and international experience enables us to rise to any challenge to deliver the best service possible. We believe that there is no better business referral than that given by a satisfied customer.</p>\n");
      out.write("<p style='text-align:justify;'>We promise to incorporate originality and creativity to enhance the event experience, and create inspiring, exhilarating celebrations.\"</p>\n");
      out.write("<p style='text-align:justify;'>- <span style='font-size:14pt;font-weight:bold;color:yellow;text-shadow:2px 2px 2px white;'>Aishwarya Murkute and Team</span>, Team's Message</p>\n");
      out.write("\n");
      out.write("</article>\n");
      out.write("\n");
      out.write("<footer>\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("</footer>\n");
      out.write("</body>\n");
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