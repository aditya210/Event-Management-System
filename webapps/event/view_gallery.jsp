<link type='text/css' rel='stylesheet' href='style.css'>

<script type='text/javascript'>
var imgs = new Array();
imgs[0] = 'images/college.jpg';
imgs[1] = 'images/conference.jpg';
imgs[2] = 'images/download.jpg';
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

<body id='back' background='images/college.jpg' style='background-size:100%;padding:20px;'>
<header>
	<jsp:include page="header.jsp"></jsp:include>
</header>
<article style='padding:30px;'>
<%@page import="java.sql.*" errorPage="err.jsp"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","jasper");
	
	Statement s = con.createStatement();
	ResultSet rs = s.executeQuery("select distinct g_type from gallery");
	
	PreparedStatement ps = con.prepareStatement("select * from gallery where g_type=?");

	while(rs.next()){
%>	
<table style='background:white;' align='center'>	
<tr>
	<td colspan=4 align='center'><h3><%=rs.getString(1)%></h3></td>
<tr>
<%
		int i=0;
		ps.setString(1,rs.getString(1));
		ResultSet rs1 = ps.executeQuery();
		while(rs1.next()){
%>
			<td width='30%' height='30%' align='center' style='padding:10px;'><a href='view_large_image.jsp?id=<%=rs1.getInt(1)%>'><img src='images/<%=rs1.getString(3)%>'></a></td>
<%
			i++;
			if(i%4==0) out.print("</tr><tr>");
		}
%>
</table>
<%
	}
%>
</article>

<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
