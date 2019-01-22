<script src="datetimepicker_css.js"></script>
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
	
	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select count(*) from bill");
	rs.next();
	int bno = rs.getInt(1)+1;
	rs = s.executeQuery("select current_date");
	rs.next();	
%>
<link type='text/css' rel='stylesheet' href='style.css'>
<article>
<table width='100%' height='100%' class='admin' style='border-spacing:20px;'>
<tr>
	<td colspan=4 align='center'>
		<a href='cust_home.jsp'><img src='images/users.jpg' width=200 height=200/></a>
		<h1>Welcome Customer - <%=session.getAttribute("cname")%></h1>
	</td>
</tr>
<tr>
	<td>
		<form method='post' action='booking1.jsp' name='reg' onsubmit='return validate()'>
		<table width='100%' height='100%' class='admin'>
		<tr>
			<td align='right' class='text'><b>Bill No:</b></td>
			<td><input type='text' name='bno' class='text' required onfocus='change(this)' onblur='unchange(this)' value='<%=bno%>'  readOnly></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Bill Date:</b></td>
			<td><input type='text' name='bdate' class='text' required onfocus='change(this)' onblur='unchange(this)' value='<%=rs.getString(1)%>' readOnly></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Event Date:</b></td>
			<td style='padding:5px;'>
			<input type='text' name='edate' id='demo1' required class='text' onfocus='change(this)' onblur='unchange(this)'>
        		<img src="images/cal.gif" onclick="javascript:NewCssCal('demo1','yyyyMMdd')" style="cursor:pointer"/>
			</td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Occassion:</b></td>		
			<td>
			<select name='occ' class='text' required onfocus='change(this)' onblur='unchange(this)'>
			<option value=''>Select Occassion</option>
			<option value='Marriage'>Marriage</option>
			<option value='Birthday Party'>Birthday Party</option>
			</select>			
			</td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Venue:</b></td>		
			<td>
			<select name='vid' class='text' required onfocus='change(this)' onblur='unchange(this)'>
			<option value=''>Select Venue</option>
			<%
				rs = s.executeQuery("select * from venue");
				while(rs.next()){
			%>
			<option value=<%=rs.getInt(1)%>><%=rs.getString(2)%></option>
			<%
				}
			%>
			</select>			
			</td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Decorator:</b></td>		
			<td>
			<select name='did' class='text' required onfocus='change(this)' onblur='unchange(this)'>
			<option value=''>Select Decorator</option>
			<%
				rs = s.executeQuery("select * from decorator");
				while(rs.next()){
			%>
			<option value=<%=rs.getInt(1)%>><%=rs.getString(2)%></option>
			<%
				}
			%>
			</select>			
			</td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Caterer:</b></td>		
			<td>
			<select name='cid' class='text' required onfocus='change(this)' onblur='unchange(this)'>
			<option value=''>Select Caterer</option>
			<%
				rs = s.executeQuery("select * from caterer");
				while(rs.next()){
			%>
			<option value=<%=rs.getInt(1)%>><%=rs.getString(2)%></option>
			<%
				}
			%>
			</select>			
			</td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Photographer:</b></td>		
			<td>
			<select name='pid' class='text' required onfocus='change(this)' onblur='unchange(this)'>
			<option value=''>Select Photorapher</option>
			<%
				rs = s.executeQuery("select * from photographer");
				while(rs.next()){
			%>
			<option value=<%=rs.getInt(1)%>><%=rs.getString(2)%></option>
			<%
				}
			%>
			</select>			
			</td>
		</tr>
		<tr>
			<td align='right' class='text'><b>No.of Persons:</b></td>
			<td><input type='text' name='nop' class='text' required onfocus='change(this)' onblur='unchange(this)'></td>
		</tr>
		<tr>
			<td align='right' class='text'><b>Cusine:</b></td>		
			<td>
			<select name='tid' class='text' required onfocus='change(this)' onblur='unchange(this)'>
			<option value=''>Select Food</option>
			<%
				rs = s.executeQuery("select * from thali");
				while(rs.next()){
			%>
			<option value=<%=rs.getInt(1)%>><%=rs.getString(2)%></option>
			<%
				}
			%>
			</select>			
			</td>
		</tr>
		<tr>
			<td align='right'><input type='submit' value='SAVE' class='btn'></td>
			<td><input type='reset' value='CLEAR' class='btn'></td>
		</tr>
		</table>
		</form>		
	</td>
</tr>
</table>
</article>
