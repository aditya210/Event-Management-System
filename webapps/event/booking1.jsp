<link type='text/css' rel='stylesheet' href='style.css'>
<table width='100%' height='100%' class='admin' style='border-spacing:20px;'>
<tr>
	<td colspan=4 align='center'>
		<a href='cust_home.jsp'><img src='images/users.jpg' width=200 height=200/></a>
		<h1>Welcome Customer - <%=session.getAttribute("cname")%></h1>
	</td>
</tr>
</table>
<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");

	int bno = Integer.parseInt(request.getParameter("bno"));
	String bdate = request.getParameter("bdate");
	String edate = request.getParameter("edate");
	String occ = request.getParameter("occ");
	int vid = Integer.parseInt(request.getParameter("vid"));
	int did = Integer.parseInt(request.getParameter("did"));
	int cid = Integer.parseInt(request.getParameter("cid"));
	int pid = Integer.parseInt(request.getParameter("pid"));
	int nop = Integer.parseInt(request.getParameter("nop"));
	int tid = Integer.parseInt(request.getParameter("tid"));

	PreparedStatement ps = con.prepareStatement("select * from bill where venue_id=? and event_date=? and status='Booked'");
	ps.setInt(1,vid);
	ps.setString(2,edate);

	ResultSet rs = ps.executeQuery();

	if(rs.next()){
%>
<script type='text/javascript'>
alert("Venue not available");
</script>
<%
		return;
	}

	ps = con.prepareStatement("select * from bill where decorator_id=? and event_date=? and status='Booked'");
	ps.setInt(1,did);
	ps.setString(2,edate);

	rs = ps.executeQuery();

	if(rs.next()){
%>
<script type='text/javascript'>
alert("Decorator not available");
</script>
<%
		return;
	}

	ps = con.prepareStatement("select * from bill where caterer_id=? and event_date=? and status='Booked'");
	ps.setInt(1,cid);
	ps.setString(2,edate);

	rs = ps.executeQuery();

	if(rs.next()){
%>
<script type='text/javascript'>
alert("Caterer not available");
</script>
<%
		return;
	}
	
	ps = con.prepareStatement("select * from bill where p_id=? and event_date=? and status='Booked'");
	ps.setInt(1,pid);
	ps.setString(2,edate);

	rs = ps.executeQuery();

	if(rs.next()){
%>
<script type='text/javascript'>
alert("Photographer not available");
</script>
<%
		return;
	}

	ps = con.prepareStatement("select venue_rate from venue where venue_id=?");
	ps.setInt(1,vid);
	rs = ps.executeQuery();
	rs.next();
	float vrate = rs.getFloat(1);

	ps = con.prepareStatement("select decorator_rate from decorator where decorator_id=?");
	ps.setInt(1,did);
	rs = ps.executeQuery();
	rs.next();
	float drate = rs.getFloat(1);

	ps = con.prepareStatement("select p_rate from photographer where p_id=?");
	ps.setInt(1,pid);
	rs = ps.executeQuery();
	rs.next();
	float prate = rs.getFloat(1);
	
	ps = con.prepareStatement("select t_rate from thali where t_id=?");
	ps.setInt(1,tid);
	rs = ps.executeQuery();
	rs.next();
	float food = rs.getFloat(1)*nop;

	float tot = vrate + drate + prate + food;
	float tax = tot * 0.12F;
	float amt = tot + tax;

	ps = con.prepareStatement("insert into bill values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setInt(1,bno);
	ps.setString(2,bdate);
	ps.setString(3,edate);
	ps.setString(4,occ);
	ps.setInt(5,vid);
	ps.setInt(6,did);
	ps.setInt(7,cid);
	ps.setInt(8,pid);
	ps.setInt(9,nop);
	ps.setInt(10,tid);
	ps.setFloat(11,amt);
	ps.setString(12,session.getAttribute("custid").toString());
	ps.setString(13,"Booked");
	ps.executeUpdate();
%>
<h1>Your booking is done successfully.</h1>


	












	
