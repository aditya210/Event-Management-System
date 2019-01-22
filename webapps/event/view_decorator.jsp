<link type='text/css' rel='stylesheet' href='style.css'>
<article>
<table width='100%' height='100%' class='admin' style='border-spacing:20px;'>
<tr>
	<td colspan=4 align='center'>
		<a href='cust_home.jsp'><img src='images/users.jpg' width=200 height=200/></a>
		<h1>Welcome Customer - <%=session.getAttribute("cname")%></h1>
	</td>
</tr>
<tr>
	<td>
<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	

	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from decorator");
%>
<table width='100%' style='background:orange;border:none;font-size:10pt;'>
<tr style='background:red;'>
	<th>Decorator ID</th>
	<th>Name</th>
	<th>Contact</th>
	<th>Address</th>
	<th>Phone</th>
	<th>Email</th>
	<th>Rate</th>
</tr>
<%
	while(rs.next()){
%>
<tr>
	<td align='center'><%=rs.getString(1)%></td>
	<td align='center'><%=rs.getString(2)%></td>
	<td align='center'><%=rs.getString(3)%></td>
	<td align='center'><%=rs.getString(4)%></td>
	<td align='center'><%=rs.getString(5)%></td>
	<td align='center'><%=rs.getString(6)%></td>
	<td align='center'><%=rs.getString(7)%></td>
</tr>
<%
	}
%>
	</table>	
	</td>
</tr>
</table>
</article>
