<link type='text/css' rel='stylesheet' href='style.css'>
<table width='100%' height='100%' class='admin' style='border-spacing:20px;'>
<tr>
	<td colspan=4 align='center'>
		<a href='cust_home.jsp'><img src='images/users.jpg' width=200 height=200/></a>
		<h1>Welcome Customer - <%=session.getAttribute("cname")%></h1>
	</td>
</tr>
<tr>	
	<td class='op'><a href='view_cust_profile.jsp' class='menu1'>PROFILE</td>
	<td class='op'><a href='view_caterer.jsp' class='menu1'>VIEW CATERERS</td>
	<td class='op'><a href='view_decorator.jsp' class='menu1'>VIEW DECORATOR</td>
	<td class='op'><a href='view_venue.jsp' class='menu1'>VIEW VENUE</td>
</tr>
<tr>	
	<td class='op'><a href='view_food.jsp' class='menu1'>VIEW FOOD</td>
	<td class='op'><a href='view_bookings.jsp' class='menu1'>VIEW BOOKINGS</td>
	<td class='op'><a href='cancel_bookings.jsp' class='menu1'>CANCEL BOOKING</td>
	<td class='op'><a href='booking.jsp' class='menu1'>BOOKING</td>
</tr>
<tr>	
	<td class='op'><a href='logout.jsp' class='menu1'>LOGOUT</td>
</tr>
</table>
