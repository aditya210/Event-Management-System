<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	String cid = request.getParameter("cid");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	
	PreparedStatement ps = con.prepareStatement("insert into customer values(?,?,?,?,?,?)");
	ps.setString(1,cid);
	ps.setString(2,pwd);
	ps.setString(3,name);
	ps.setString(4,addr);
	ps.setString(5,phone);
	ps.setString(6,email);
	ps.executeUpdate();
%>
<body style='background:#F0A000;'>
<h1>You are registered successfully.</h1>
<h3>Click <a href='customer.jsp'>here</a> to login.</h3>
</body>

