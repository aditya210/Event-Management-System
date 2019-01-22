<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	

	int did = Integer.parseInt(request.getParameter("did"));
	
	PreparedStatement ps = con.prepareStatement("delete from decorator where decorator_id=?");
	ps.setInt(1,did);

	ps.executeUpdate();

	response.sendRedirect("manage_decorator.jsp");
%>
