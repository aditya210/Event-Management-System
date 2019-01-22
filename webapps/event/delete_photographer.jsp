<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	int cid = Integer.parseInt(request.getParameter("cid"));
	
	PreparedStatement ps = con.prepareStatement("delete from photographer where p_id=?");
	ps.setInt(1,cid);

	ps.executeUpdate();

	response.sendRedirect("manage_photographer.jsp");
%>
