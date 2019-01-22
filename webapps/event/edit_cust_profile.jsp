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
	
	PreparedStatement ps = con.prepareStatement("update customer set cust_pwd=?, cust_name=?, cust_addr=?, cust_phone=?, cust_email=? where cust_id=?");
	ps.setString(1,pwd);
	ps.setString(2,name);
	ps.setString(3,addr);
	ps.setString(4,phone);
	ps.setString(5,email);
	ps.setString(6,cid);
	ps.executeUpdate();
%>
<body style='background:#F0A000;'>
<h1>Profile updated successfully.</h1>
<h3>Click <a href='cust_home.jsp'>here</a> to continue.</h3>
</body>

