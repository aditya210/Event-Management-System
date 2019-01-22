<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	

	int bno = Integer.parseInt(request.getParameter("bno"));

	PreparedStatement ps = con.prepareStatement("select * from bill where status='Booked' and bill.cust_id=? and bill_no=? and event_date > current_date");

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
		ps = con.prepareStatement("update bill set status='Canceled' where bill_no=?");
		ps.setInt(1,bno);
		ps.executeUpdate();
%>
<h3>Booking canceled successfully.</h3>
<%		
	}
	else{
%>
<h3>Invalid bill no or event date passed or bill already canceled.</h3>
<%
	}
%>
	</td>
</tr>
</table>
</form>
