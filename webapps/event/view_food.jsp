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
		ResultSet rs = s.executeQuery("select * from thali");
		while(rs.next()){
	%>
	<table width='70%' align='center' style='background:orange;border:none;font-size:10pt;'>
	<tr>
		<td align='center' style='padding:20px;'>
			<div style='padding:10px;'><img src='images/<%=rs.getString(5)%>'></div>
			<a href='images/<%=rs.getString(6)%>' class='opr'>View Details</a>
		</td>
		<td align='center'>
			<table style='padding:10px;'>		
			<tr>
				<td style='padding:10px;'><b>Food Type:</b></td><td><%=rs.getString(1)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Select Cuisine:</b></td><td><%=rs.getString(2)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Select Food</b></td><td><%=rs.getString(3)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Per Person Rate:</b></td><td><%=rs.getString(4)%></td>
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
