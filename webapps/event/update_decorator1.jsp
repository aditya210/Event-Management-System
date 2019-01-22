<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	

	int did = Integer.parseInt(request.getParameter("did"));
	String dname = request.getParameter("dname");
	String cname = request.getParameter("cname");
	String addr = request.getParameter("addr");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String rate = request.getParameter("rate");

	PreparedStatement ps = con.prepareStatement("update decorator set decorator_name=?, decorator_contact_person=?, decorator_address=?, decorator_phone=?, decorator_email=?, decorator_rate=? where decorator_id=?");

	ps.setString(1,dname);
	ps.setString(2,cname);
	ps.setString(3,addr);
	ps.setString(4,phone);
	ps.setString(5,email);
	ps.setFloat(6,Float.parseFloat(rate));
	ps.setInt(7,did);
	ps.executeUpdate();

	response.sendRedirect("manage_decorator.jsp");
%>
