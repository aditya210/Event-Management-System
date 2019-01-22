<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");

	int cid = Integer.parseInt(request.getParameter("cid"));
	String cname = request.getParameter("cname");
	String cpname = request.getParameter("cpname");
	String addr = request.getParameter("addr");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String rate = request.getParameter("rate");

	PreparedStatement ps = con.prepareStatement("update photographer set p_name=?, p_contact_person=?, p_address=?, p_phone=?, p_email=?, p_rate=? where p_id=?");

	ps.setString(1,cname);
	ps.setString(2,cpname);
	ps.setString(3,addr);
	ps.setString(4,phone);
	ps.setString(5,email);
	ps.setFloat(6,Float.parseFloat(rate));
	ps.setInt(7,cid);
	
	ps.executeUpdate();

	response.sendRedirect("manage_photographer.jsp");
%>
