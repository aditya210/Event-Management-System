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

<link type='text/css' rel='stylesheet' href='style.css'>
<form method='post' action='customer1.jsp'>
<table width='100%' height='100%' class='admin'>
<tr>
	<td colspan=2 align='center'><a href='index.jsp'><img src='images/users.jpg' width=300 height=300/></a></td>
</tr>
<tr>
	<td align='right' class='text'><b>Customer ID:</b></td>
	<td><input type='text' name='cid' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
</tr>
<tr>
	<td align='right' class='text'><b>Customer Password:</b></td>
	<td><input type='password' name='cpwd' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
</tr>
<tr>
	<td align='right' style='padding:10px;'><b><a href='register.jsp' class='link'>New User</a></b></td>
	<td style='padding:10px;'><b><a href='recover.jsp' class='link'>Recover Password</a></b></td>
</tr>
<tr>
	<td align='right'><input type='submit' value='Login' class='btn'></td>
	<td><input type='reset' value='Reset' class='btn'></td>
</tr>
</table>
</form>
