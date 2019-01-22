<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	
%>
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
	<%
		Statement s = con.createStatement();
		ResultSet rs = s.executeQuery("select * from venue");
		while(rs.next()){
	%>
	<table width='70%' align='center' style='background:orange;border:none;font-size:10pt;'>
	<tr>
		<td align='center'><img src='images/<%=rs.getString(8)%>'></td>
	
		<td align='center'>
			<table style='padding:10px;'>		
			<tr>
				<td style='padding:10px;'><b>Venue ID:</b></td><td><%=rs.getString(1)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Name:</b></td><td><%=rs.getString(2)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Contact:</b></td><td><%=rs.getString(3)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Address:</b></td><td><%=rs.getString(4)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Phone:</b></td><td><%=rs.getString(5)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Email:</b></td><td><%=rs.getString(6)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Per Day Rate:</b></td><td><%=rs.getString(7)%></td>
			</tr>
			</table>
		</td>
	</tr>
	</table><br>
	<%
		}
	%>
	</td>
</tr>
</table>
</article>
