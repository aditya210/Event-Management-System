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
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	int vid = Integer.parseInt(request.getParameter("vid"));
	
	PreparedStatement ps = con.prepareStatement("select * from thali where t_id=?");
	ps.setInt(1,vid);

	ResultSet rs = ps.executeQuery();
	rs.next();
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
		<form method='post' action='http://localhost:8080/event/thali1' name='reg' onsubmit='return validate()' enctype="multipart/form-data">
		<table width='100%' height='100%' class='admin'>
		<tr>
			<td align='right' class='text'><b>Thali ID:</b></td>
			<td><input type='text' name='tid' class='text' required onfocus='change(this)' onblur='unchange(this)' value=<%=rs.getString(1)%> readOnly></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Thali Name:</b></td>
			<td><input type='text' name='tname' class='text' required onfocus='change(this)' onblur='unchange(this)' value='<%=rs.getString(2)%>'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Thali Type:</b></td>		
			<td>
			<select name='ttype' class='text' required onfocus='change(this)' onblur='unchange(this)'>
			<option value=''>Select Thali Type</option>
			<option value='Vegetarian' <% if(rs.getString(3).equals("Vegetarian")) out.print(" selected");%>>Vegetarian</option>
			<option value='Non Vegetarian' <% if(rs.getString(3).equals("Non Vegetarian")) out.print(" selected");%>>Non-Vegetarian</option>
			</select>			
			</td>
		</tr>

		<tr>
			<td align='right' class='text'><b>Per Plate Rate:</b></td>
			<td><input type='text' name='rate' class='text' required onfocus='change(this)' onblur='unchange(this)' value='<%=rs.getString(4)%>'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Photo:</b></td>
			<td><input type='file' name='photo'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Thali Details:</b></td>
			<td><input type='file' name='pdf'></td>
		</tr>

		<tr>
			<td align='right'><input type='submit' value='UPDATE' class='btn'></td>
			<td><input type='reset' value='CLEAR' class='btn'></td>
		</tr>
		</table>
		</form>		
	</td>
</tr>
</table>
</article>
