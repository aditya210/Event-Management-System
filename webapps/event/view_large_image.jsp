<link type='text/css' rel='stylesheet' href='style.css'>

<script type='text/javascript'>
var imgs = new Array();
imgs[0] = 'images/back1.jpg';
imgs[1] = 'images/back2.jpg';
imgs[2] = 'images/back3.jpg';
imgs[3] = 'images/back4.jpg';

var i=1;

function change()
{
	document.getElementById('back').background = imgs[i];
	i=(i+1)%4;
}

setInterval('change()',3000);

</script>


</script>

<body id='back' background='images/back1.jpg' style='background-size:100%;padding:20px;'>
<header>
	<jsp:include page="header.jsp"></jsp:include>
</header>

<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	
	
	int id = Integer.parseInt(request.getParameter("id"));
	PreparedStatement ps = con.prepareStatement("select * from gallery where g_id=?");
	ps.setInt(1,id);
	ResultSet rs = ps.executeQuery();
	rs.next();
%>	
<table style='background:white;' align='center'>	
<tr>
	<td align='right'><a href='view_gallery.jsp'>X</a></td>
</tr>
<tr>
	<td align='center'><img src='images/<%=rs.getString(3)%>' width=500 height=500/></td>
<tr>
</table>


<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
