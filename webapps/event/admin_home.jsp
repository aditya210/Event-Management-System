<link type='text/css' rel='stylesheet' href='style.css'>
<table width='100%' height='100%' class='admin' style='border-spacing:20px;'>
<tr>
	<td colspan=4 align='center'>
		<a href='admin_home.jsp'><img src='images/admin.png' width=200 height=200/></a>
		<h1>Welcome Admin - <%=session.getAttribute("aname")%></h1>
	</td>
</tr>
<tr>	
	<td class='op'><a href='manage_photographer.jsp' class='menu1'>PHOTOGRAPHER</td>
	<td class='op'><a href='manage_caterer.jsp' class='menu1'>CATERER</td>
	<td class='op'><a href='manage_decorator.jsp' class='menu1'>DECORATOR</td>
	<td class='op'><a href='manage_venue.jsp' class='menu1'>VENUE</td>
</tr>
<tr>	
	<td class='op'><a href='manage_food.jsp' class='menu1'>FOOD</td>
	<td class='op'><a href='manage_bookings.jsp' class='menu1'>BOOKINGS</td>
	<td class='op'><a href='manage_customer.jsp' class='menu1'>CUSTOMER</td>	
	<td class='op'><a href='manage_gallery.jsp' class='menu1'>GALLERY</td>
</tr>
<tr>
	<td class='op'><a href='logout.jsp' class='menu1'>LOGOUT</td>
</tr>
</table>

	
