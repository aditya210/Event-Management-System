<link type='text/css' rel='stylesheet' href='style.css'>
<form method='post' action='cancel_bookings1.jsp'>
<table width='100%' height='100%' class='admin' style='border-spacing:20px;'>
<tr>
	<td colspan=4 align='center'>
		<a href='cust_home.jsp'><img src='images/users.jpg' width=200 height=200/></a>
		<h1>Welcome Customer - <%=session.getAttribute("cname")%></h1>
	</td>
</tr>
<tr>	
	<td align='center'>
		<table>
		<tr>
			<td><b>Bill No:</b></td>
			<td><input type='text' name='bno' required></td>
			<td><input type='submit' value='Show' class='btn'></td>
		</tr>
		</table>
	</td>
</tr>
</table>
</form>
