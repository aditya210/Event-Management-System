<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	

	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select bill_no,bill_date,event_date,cust_name,status from bill,customer where bill.cust_id=customer.cust_id");
%>
	
<link type='text/css' rel='stylesheet' href='style.css'>
<table width='100%' height='100%' class='admin' style='border-spacing:20px;'>
<tr>
	<td colspan=4 align='center'>
		<a href='admin_home.jsp'><img src='images/admin.png' width=200 height=200/></a>
		<h1>Welcome Admin - <%=session.getAttribute("aname")%></h1>
	</td>
</tr>
<tr>	
	<td align='center'>
	<table style='background:white;border:1px solid black;' width='50%'>
	<tr style='background:black;color:white;'>
		<th>Bill No</th>
		<th>Bill Date</th>
		<th>Event Date</th>
		<th>Customer</th>
		<th>Status</th>
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
	</tr>
<%
	}
%>
	</table>			
	</td>
</tr>
</table>

	
