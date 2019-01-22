<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	String cid = request.getParameter("cid");
	String pwd = request.getParameter("cpwd");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	
	PreparedStatement ps = con.prepareStatement("select * from customer where cust_id = ? and cust_pwd=?");
	ps.setString(1,cid);
	ps.setString(2,pwd);
	ResultSet rs = ps.executeQuery();
	
	if(rs.next()){
		session.setAttribute("custid",cid);
		session.setAttribute("cname",rs.getString(3));
		response.sendRedirect("cust_home.jsp");
	}
	else{
%>
<body style='background:orange;'>
<h1>Login Failed.</h1>
Click <a href='customer.jsp'>here</a> to login again.
</body>
<%
	}
%>

