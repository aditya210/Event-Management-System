<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	
	int bno = Integer.parseInt(request.getParameter("bno"));

	PreparedStatement ps = con.prepareStatement("select bill_no, bill_date, cust_name, event_date, occassion, venue_name, decorator_name, caterer_name, p_name, no_of_person, t_name, total_amt from bill, venue, caterer, decorator, photographer, thali, customer where bill.cust_id = customer.cust_id and bill.venue_id = venue.venue_id and bill.p_id = photographer.p_id and bill.t_id = thali.t_id and bill.caterer_id = caterer.caterer_id and bill.decorator_id = decorator.decorator_id and status='Booked' and bill.cust_id=? and bill_no=?");

	ps.setString(1,session.getAttribute("custid").toString());
	ps.setInt(2,bno);

	ResultSet rs = ps.executeQuery();
%>
<link type='text/css' rel='stylesheet' href='style.css'>
<form method='post' action='view_bookings1.jsp'>
<table width='100%' height='100%' class='admin' style='border-spacing:20px;'>
<tr>
	<td colspan=4 align='center'>
		<a href='cust_home.jsp'><img src='images/users.jpg' width=200 height=200/></a>
		<h1>Welcome Customer - <%=session.getAttribute("cname")%></h1>
	</td>
</tr>
<tr>	
	<td align='center'>
<%
	if(rs.next()){
%>
		<table>
		<tr><td><b>Bill No:</b></td><td><%=rs.getString(1)%></td></tr>
		<tr><td><b>Bill Date:</b></td><td><%=rs.getString(2)%></td></tr>
		<tr><td><b>Customer:</b></td><td><%=rs.getString(3)%></td></tr>
		<tr><td><b>Event Date:</b></td><td><%=rs.getString(4)%></td></tr>
		<tr><td><b>Occassion:</b></td><td><%=rs.getString(5)%></td></tr>
		<tr><td><b>Venue:</b></td><td><%=rs.getString(6)%></td></tr>
		<tr><td><b>Decorator:</b></td><td><%=rs.getString(7)%></td></tr>
		<tr><td><b>Caterer:</b></td><td><%=rs.getString(8)%></td></tr>
		<tr><td><b>Photographer:</b></td><td><%=rs.getString(9)%></td></tr>
		<tr><td><b>No.of Persons:</b></td><td><%=rs.getString(10)%></td></tr>
		<tr><td><b>Cuisine:</b></td><td><%=rs.getString(11)%></td></tr>
		<tr><td><b>Bill Amount:</b></td><td>$.<%=rs.getString(12)%>/-</td></tr>
		</table>
<%
	}
	else{
%>
<h1>Invalid bill no or event date passed or bill already canceled.</h1>
<%
	}
%>
	</td>
</tr>
</table>
</form>
