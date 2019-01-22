<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	String cid = request.getParameter("aid");
	String pwd = request.getParameter("apwd");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	
	PreparedStatement ps = con.prepareStatement("select * from admin where admin_id = ? and admin_pwd=?");
	ps.setString(1,cid);
	ps.setString(2,pwd);
	ResultSet rs = ps.executeQuery();
	
	if(rs.next()){
		session.setAttribute("aid",cid);
		session.setAttribute("aname",rs.getString(3));
		response.sendRedirect("admin_home.jsp");
	}
	else{
%>
<body style='background:orange;'>
<h1>Login Failed.</h1>
Click <a href='admin.jsp'>here</a> to login again.
</body>
<%
	}
%>

