/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.56
 * Generated at: 2018-12-03 21:11:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<script type='text/javascript'>\n");
      out.write("function change(x)\n");
      out.write("{\n");
      out.write("\tx.style.border='1px solid black';\n");
      out.write("}\n");
      out.write("\n");
      out.write("function unchange(x)\n");
      out.write("{\n");
      out.write("\tx.style.border='none';\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("function validate()\n");
      out.write("{\n");
      out.write("\tx = document.forms[\"reg\"][\"pwd\"];\n");
      out.write("\ty = document.forms[\"reg\"][\"cpwd\"];\n");
      out.write("\n");
      out.write("\tif(x.value != y.value)\n");
      out.write("\t{\n");
      out.write("\t\talert(\"Password and confirm password doesn't match\");\n");
      out.write("\t\tx.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\t\n");
      out.write("\n");
      out.write("\tx = document.forms[\"reg\"][\"phone\"];\n");
      out.write("\n");
      out.write("\tif(!x.value.match(/^\\d{10}$/))\n");
      out.write("\t{\n");
      out.write("\t\talert(\"Invalid phone number.\");\n");
      out.write("\t\tx.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\tx = document.forms[\"reg\"][\"email\"];\n");
      out.write("\tif(!x.value.match(/^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/))\n");
      out.write("\t{\n");
      out.write("\t\talert(\"Invalid email id.\");\n");
      out.write("\t\tx.focus();\n");
      out.write("\t\treturn false;\n");
      out.write("\t}\t\n");
      out.write("\t\n");
      out.write("\treturn true;\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<link type='text/css' rel='stylesheet' href='style.css'>\n");
      out.write("<form method='post' action='register1.jsp' name='reg' onsubmit='return validate()'>\n");
      out.write("<table width='100%' height='100%' class='admin'>\n");
      out.write("<tr>\n");
      out.write("\t<td colspan=2 align='center'><a href='customer.jsp'><img src='images/usersn.jpg' width=300 height=300/></a></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td align='right' class='text'><b>Customer ID:</b></td>\n");
      out.write("\t<td><input type='text' name='cid' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td align='right' class='text'><b>Customer Password:</b></td>\n");
      out.write("\t<td><input type='password' name='pwd' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td align='right' class='text'><b>Confirm Password:</b></td>\n");
      out.write("\t<td><input type='password' name='cpwd' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td align='right' class='text'><b>Name:</b></td>\n");
      out.write("\t<td><input type='text' name='name' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td align='right' class='text'><b>Address:</b></td>\n");
      out.write("\t<td><textarea name='addr' class='text' required onfocus='change(this)' onblur='unchange(this)' rows=4 cols=50></textarea></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td align='right' class='text'><b>Phone:</b></td>\n");
      out.write("\t<td><input type='text' name='phone' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td align='right' class='text'><b>Email:</b></td>\n");
      out.write("\t<td><input type='text' name='email' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td align='right'><input type='submit' value='REGISTER' class='btn'></td>\n");
      out.write("\t<td><input type='reset' value='RESET' class='btn'></td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</form>\n");
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