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
</headerr>

<article style='background:none;padding:20px;color:white;font-size:11pt;'>
<table style='padding:10px;'>
<tr>
	<td valign='center'><img src='images/contact1.png' width=200 height=200/></td>

	<td align='center'>
		<table style='color:white;font-size:10pt;font-weight:bold;'>
		<tr>
			<td>Event Management System</td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td>1000 E Victoria Street,</td>
		</tr>
		<tr>
			<td>California State University Dominguez Hills,</td>
		</tr>
		<tr>
			<td>California-90746.</td>
		</tr>
		<tr>
			<td>United States</td>
		</tr>
		<tr>
			<td>Ph. : +1 424-381-8357</td>
		</tr>
		<tr>
			<td>Mo. : +1 423-456-1234</td>
		</tr>
		<tr>
			<td>emaiil id: murkuteaishwarya@gmail.com</td>
		</tr>
		<tr>
			<td>ems.com</td>
		</tr>
		</table>
	</td>
</tr>
</table>
</article>

<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
