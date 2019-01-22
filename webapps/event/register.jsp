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
	x = document.forms["reg"]["pwd"];
	y = document.forms["reg"]["cpwd"];

	if(x.value != y.value)
	{
		alert("Password and confirm password doesn't match");
		x.focus();
		return false;
	}	

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

<link type='text/css' rel='stylesheet' href='style.css'>
<form method='post' action='register1.jsp' name='reg' onsubmit='return validate()'>
<table width='100%' height='100%' class='admin'>
<tr>
	<td colspan=2 align='center'><a href='customer.jsp'><img src='images/usersn.jpg' width=300 height=300/></a></td>
</tr>
<tr>
	<td align='right' class='text'><b>Customer ID:</b></td>
	<td><input type='text' name='cid' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
</tr>
<tr>
	<td align='right' class='text'><b>Customer Password:</b></td>
	<td><input type='password' name='pwd' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
</tr>
<tr>
	<td align='right' class='text'><b>Confirm Password:</b></td>
	<td><input type='password' name='cpwd' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
</tr>
<tr>
	<td align='right' class='text'><b>Name:</b></td>
	<td><input type='text' name='name' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
</tr>
<tr>
	<td align='right' class='text'><b>Address:</b></td>
	<td><textarea name='addr' class='text' required onfocus='change(this)' onblur='unchange(this)' rows=4 cols=50></textarea></td>
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
	<td align='right'><input type='submit' value='REGISTER' class='btn'></td>
	<td><input type='reset' value='RESET' class='btn'></td>
</tr>
</table>
</form>
