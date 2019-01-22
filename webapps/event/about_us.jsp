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

<article style='background:none;padding:20px;color:white;font-size:11pt;'>
<span style='font-size:20pt;font-weight:bold;'>ABOUT US</span>
<p style='text-align:justify;'>We are a team of Graduate students who have completed Advance Software Engineering course , from CSUDH and have have an experience of more than 5 years in Computer Science..We started as a group at California State University, Dominguez Hills. We Successfully implemented an Event Management System .</p>
<p style='text-align:justify;'></p>
<p>Our aim and our mission is provide simple but Out-of-the-box concepts, refreshing and satisfying experience with fruitful results to our clients. We are different from others because it's not about what we do, it's all about how we do, and we do it with high level of efficiency, dedication and perfection.</p>
 
<span style='font-size:20pt;font-weight:bold;'>TEAM'S MESSAGE</span>
<p style='text-align:justify;'>"We combine imagination with experience to create and deliver our customer's expectations. Our local and international experience enables us to rise to any challenge to deliver the best service possible. We believe that there is no better business referral than that given by a satisfied customer.</p>
<p style='text-align:justify;'>We promise to incorporate originality and creativity to enhance the event experience, and create inspiring, exhilarating celebrations."</p>
<p style='text-align:justify;'>- <span style='font-size:14pt;font-weight:bold;color:yellow;text-shadow:2px 2px 2px white;'>Aishwarya Murkute and Team</span>, Team's Message</p>

</article>

<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
