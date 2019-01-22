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

	PreparedStatement ps = con.prepareStatement("update caterer set caterer_name=?, caterer_contact_person=?, caterer_address=?, caterer_phone=?, caterer_email=? where caterer_id=?");

	ps.setString(1,cname);
	ps.setString(2,cpname);
	ps.setString(3,addr);
	ps.setString(4,phone);
	ps.setString(5,email);
	ps.setInt(6,cid);
	
	ps.executeUpdate();

	response.sendRedirect("manage_caterer.jsp");
%>
