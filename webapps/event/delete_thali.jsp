<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	int vid = Integer.parseInt(request.getParameter("vid"));
	
	PreparedStatement ps = con.prepareStatement("delete from thali where t_id=?");
	ps.setInt(1,vid);

	ps.executeUpdate();

	response.sendRedirect("manage_food.jsp");
%>
