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
		<form method='post' action='http://localhost:8080/event/gallery' enctype="multipart/form-data">
		<table width='100%' height='100%' class='admin'>
		<tr>
			<td align='right' class='text'><b>Photo Type:</b></td>
			<td>
			<select name='ptype' class='text' required onfocus='change(this)' onblur='unchange(this)'>
			<option value=''>Select Gallery Type</option>
			<option value='Party Lawns'>Party Lawns</option>
			<option value='Banquet Hall'>Banquet Hall</option>
			<option value='Catering Services'>Catering Services</option>
			<option value='Flower Decoration'>Flower Decoration</option>
			<option value='Tenting & Decorations'>Tenting & Decorations</option>
			</select>			
			</td>
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
		ResultSet rs = s.executeQuery("select * from gallery");
		while(rs.next()){
	%>
	<table width='70%' align='center' style='background:orange;border:none;font-size:10pt;'>
	<tr>
		<td align='center'><img src='images/<%=rs.getString(3)%>'></td>
	
		<td align='center'>
			<table style='padding:10px;'>		
			<tr>
				<td style='padding:10px;'><b>Gallery ID:</b></td><td><%=rs.getString(1)%></td>
			</tr>
			<tr>
				<td style='padding:10px;'><b>Name:</b></td><td><%=rs.getString(2)%></td>
			</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td align='center' colspan=2 style='padding:20px;'><a href='delete_gallery.jsp?vid=<%=rs.getString(1)%>' class='opr'>Delete</a></td>
	</tr>
	</table><br>
	<%
		}
	%>
	</td>
</tr>
</table>
</article>
