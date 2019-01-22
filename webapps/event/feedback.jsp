<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");

	String fdate = request.getParameter("fdate");
	String name = request.getParameter("name");
	String msg = request.getParameter("msg");
	
	if(fdate!=null && name!=null && msg!=null)
	{
		PreparedStatement ps = con.prepareStatement("insert into feedback(f_date,f_by,f_msg) values(?,?,?)");
		ps.setString(1,fdate);
		ps.setString(2,name);
		ps.setString(3,msg);
		ps.executeUpdate();
	}

	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select * from feedback");	
	while(rs.next()){
%>
<table style='padding:10px;'>
<tr>
	<td><b>Post Date:</b></td>
	<td><%=rs.getString(2)%></td>
<tr>
<tr>
	<td><b>Post By:</b></td>
	<td><%=rs.getString(3)%></td>
<tr>
<tr>
	<td><b>Feedback:</b></td>
	<td><%=rs.getString(4)%></td>
<tr>
</table>
<%
	}

	s = con.createStatement();
	rs = s.executeQuery("select current_date");
	rs.next();
%>
<form method='post' action='feedback.jsp'>
<table>
<tr>
	<td>Date:</td>
	<td><input type='text' name='fdate' value='<%=rs.getString(1)%>' readOnly></td>
</tr>
<tr>
	<td>Name:</td>
	<td><input type='text' name='name' required></td>
</tr>
<tr>
	<td>Feedback:</td>
	<td><textarea rows=4 cols=50 name='msg' required></textarea></td>
</tr>
<tr>
	<td><input type='submit' value='POST'></td>
	<td><input type='reset' value='CLEAR'></td>
</tr>
</table>
</form>
<div><a href='index.jsp' style='text-decoration:none;padding:10px;background:black;color:white;font-weight:bold;'>Back</a></div>
	
