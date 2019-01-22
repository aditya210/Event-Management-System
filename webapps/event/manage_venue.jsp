<script type='text/javascript'>
function change(x)
{
	x.style.border='1px solid black';
}

function unchange(x)
{
	x.style.border='none';

}

function validate()
{
	x = document.forms["reg"]["phone"];

	if(!x.value.match(/^\d{10}$/))
	{
		alert("Invalid phone number.");
		x.focus();
		return false;
	}

	x = document.forms["reg"]["email"];
	if(!x.value.match(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/))
	{
		alert("Invalid email id.");
		x.focus();
		return false;
	}	
	
	return true;
}
</script>
<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root", "jasper");
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
		<form method='post' action='http://localhost:8080/event/venue' name='reg' onsubmit='return validate()' enctype="multipart/form-data">
		<table width='100%' height='100%' class='admin'>
		<tr>
			<td align='right' class='text'><b>Venue Name:</b></td>
			<td><input type='text' name='vname' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Contact Person Name:</b></td>
			<td><input type='text' name='cname' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Address:</b></td>
			<td><textarea name='addr' class='text' required onfocus='change(this)' onblur='unchange(this)' rows=5 cols=50></textarea></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Phone:</b></td>
			<td><input type='text' name='phone' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Email:</b></td>
			<td><input type='text' name='email' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Per Day Rate:</b></td>
			<td><input type='text' name='rate' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Photo:</b></td>
			<td><input type='file' name='photo' required></td>
			
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
		ResultSet rs = s.executeQuery("select * from venue");
		while(rs.next()){
	%>
	<table width='70%' align='center' style='background:orange;border:none;font-size:10pt;'>
	<tr>
		<td align='center'><img src='images/<%=rs.getString(8)%>'></td>
	
		<td align='center'>
			<table style='padding:10px;'>		
			<tr>
				<td style='padding:10px;'><b>Venue ID:</b></td><td><%=rs.getString(1)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Name:</b></td><td><%=rs.getString(2)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Contact:</b></td><td><%=rs.getString(3)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Address:</b></td><td><%=rs.getString(4)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Phone:</b></td><td><%=rs.getString(5)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Email:</b></td><td><%=rs.getString(6)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Per Day Rate:</b></td><td><%=rs.getString(7)%></td>
			</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td align='center'><a href='delete_venue.jsp?vid=<%=rs.getString(1)%>' class='opr'>Delete</a></td>
		<td align='center' style='padding:15px;'><a href='update_venue.jsp?vid=<%=rs.getString(1)%>' class='opr'>Update</a></td>
	</tr>
	</table><br>
	<%
		}
	%>
	</td>
</tr>
</table>
</article>
