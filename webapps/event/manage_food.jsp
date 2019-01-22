<script type='text/javascript'>
function change(x)
{
	x.style.border='1px solid black';
}

function unchange(x)
{
	x.style.border='none';

}

</script>
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
		<a href='admin_home.jsp'><img src='images/admin.png' width=200 height=200/></a>
		<h1>Welcome Admin - <%=session.getAttribute("aname")%></h1>
	</td>
</tr>
<tr>
	<td>
		<form method='post' action='http://localhost:8080/event/thali' name='reg' onsubmit='return validate()' enctype="multipart/form-data">
		<table width='100%' height='100%' class='admin'>
		<tr>
			<td align='right' class='text'><b>Cusine Name:</b></td>
			<td><input type='text' name='tname' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Cusine Type:</b></td>		
			<td>
			<select name='ttype' class='text' required onfocus='change(this)' onblur='unchange(this)'>
			<option value=''>Select Cusine Type</option>
			<option value='Vegetarian'>Vegetarian</option>
			<option value='Non Vegetarian'>Non-Vegetarian</option>
			</select>			
			</td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Rate Per Plate:</b></td>
			<td><input type='text' name='rate' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Photo:</b></td>
			<td><input type='file' name='photo' required></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Cusine Details:</b></td>
			<td><input type='file' name='pdf' required></td>
		</tr>
		<tr>
			<td align='right'><input type='submit' value='ADD' class='btn'></td>
			<td><input type='reset' value='CLEAR' class='btn'></td>
		</tr>
		</table>
		</form>		
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
				<td style='padding:10px;'><b>Thali ID:</b></td><td><%=rs.getString(1)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Thali Name:</b></td><td><%=rs.getString(2)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Thali Type:</b></td><td><%=rs.getString(3)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Per Person Rate:</b></td><td><%=rs.getString(4)%></td>
			</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td align='center'><a href='delete_thali.jsp?vid=<%=rs.getString(1)%>' class='opr'>Delete</a></td>
		<td align='center' style='padding:15px;'><a href='update_thali.jsp?vid=<%=rs.getString(1)%>' class='opr'>Update</a></td>
	</tr>
	</table><br>
	<%
		}
	%>
	</td>
</tr>
</table>
</article>
