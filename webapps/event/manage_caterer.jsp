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
	
	String cname = request.getParameter("cname");
	String cpname = request.getParameter("cpname");
	String addr = request.getParameter("addr");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");

	PreparedStatement ps = con.prepareStatement("insert into caterer(caterer_name, caterer_contact_person, caterer_address, caterer_phone, caterer_email) values(?,?,?,?,?)");

	if(cname!=null && cpname!=null && addr!=null && phone!=null && email!=null){
		ps.setString(1,cname);
		ps.setString(2,cpname);
		ps.setString(3,addr);
		ps.setString(4,phone);
		ps.setString(5,email);
		ps.executeUpdate();
	}
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
		<form method='post' action='manage_caterer.jsp' name='reg' onsubmit='return validate()'>
		<table width='100%' height='100%' class='admin'>
		<tr>
			<td align='right' class='text'><b>Caterer Name:</b></td>
			<td><input type='text' name='cname' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Contact Person Name:</b></td>
			<td><input type='text' name='cpname' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
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
		ResultSet rs = s.executeQuery("select * from caterer");
	%>
	<table width='100%' style='background:orange;border:none;font-size:10pt;'>
	<tr style='background:red;'>
		<th>Caterer ID</th>
		<th>Name</th>
		<th>Contact</th>
		<th>Address</th>
		<th>Phone</th>
		<th>Email</th>
		<th colspan=2>Operation</th>
	</tr>
	<%
		while(rs.next()){
	%>
	<tr>
		<td align='center'><%=rs.getString(1)%></td>
		<td align='center'><%=rs.getString(2)%></td>
		<td align='center'><%=rs.getString(3)%></td>
		<td align='center'><%=rs.getString(4)%></td>
		<td align='center'><%=rs.getString(5)%></td>
		<td align='center'><%=rs.getString(6)%></td>
		<td align='center'><a href='delete_caterer.jsp?cid=<%=rs.getString(1)%>' class='opr'>Delete</a></td>
		<td align='center' style='padding:15px;'><a href='update_caterer.jsp?cid=<%=rs.getString(1)%>' class='opr'>Update</a></td>
	</tr>
	<%
		}
	%>
	</table>	
	</td>
</tr>
</table>
</article>
