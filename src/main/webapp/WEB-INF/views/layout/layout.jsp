<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="author" content="Arun and Bhushan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon" href="<%=request.getContextPath()%>/resources/main_template/images/logo.png" />

<title>J4Java | Home</title>
<link media="all" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link media="all" type="text/css" href=" main_template/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/main_template/css/bootstrap.min.css" type="text/css" media="screen" />
<link media="all" type="text/css" href="<%=request.getContextPath()%>/resources/main_template/css/core.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/main_template/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/main_template/js/bootstrap337.min.js"></script>
</head>
<body class="home">
	<!-- #masthead -->
	<div id="masthead" class="fixed-header"
		style="-webkit-filter: drop-shadow(0px 1px 2px #FF9800);">
		<div id="site-header" role="banner">
			<div class="container">
				<div class="row">
					<nav id="main-menu" role="navigation">
						<ul class="horizontal-navigation">
							<li class="menu-home"><a href='<c:url value="/home" ></c:url>' title="Home">Home</a></li>
							<li class="menu-home"><a href='<c:url value="/quiz" ></c:url>' title="Quiz">Quiz</a></li>
							<li class="menu-home"><a href='<c:url value="/tutorial" ></c:url>' title="Tutorial">Tutorial</a></li>
							<li class="menu-home"><a href='<c:url value="/program" ></c:url>' title="Programs">Programs</a></li>
							<li class="menu-home"><a href='<c:url value="/question" ></c:url>' title="Q &amp; A">Q&amp;A</a></li>
						</ul>
					</nav>
					<!-- #main-menu -->
				</div>
				<!-- .row -->
			</div>
			<!-- .container -->
		</div>
	</div>

	<main id="content" role="main">
		<div class="section" style="margin-top: 100px;">
			<div class="container">
				<div class="row"><tiles:insertAttribute name="error" /></div>
				<div class="row"><tiles:insertAttribute name="body" /></div>
			</div>
		</div>
	</main>
	<!-- #content -->
	<main id="content" role="main">
		<div class="section">
			<div class="container">
				<div class="row"><div id="disqus_thread"></div></div>
			</div>
		</div>
	</main>
	<div id="prefooter" role="complementary">
		<div class="container">
			<div class="row">
				<div class="one-third-block">
					<div class="contact-widget widget">
						<h4 class="widget-title">J4JAVA</h4>
						<p>.....</p>
						<p>Address : Old Sangavi, Pune, MH 411045</p>
						<p>
							<i class="fa fa-phone fa-fw"></i>+91 9011822778
						</p>
						<p>
							<i class="fa fa-envelope fa-fw"></i>info@j4java.com
						</p>
					</div>
				</div>
				<div class="one-third-block">
					<div class="connect-widget widget">
						<h4 class="widget-title">Join our Mailing List</h4>
						<p>Be first person to receive our new post in your mail.</p>
						<form class="widget-form" action="#" method="get">
							<input type="email" class="form-control"
								placeholder="Enter your email address" value="" name="email"
								title="Enter your email address" />
							<button class="btn btn-success"
								style="background-color: #333; border-color: #333;">Subscribe</button>
						</form>
					</div>
				</div>
				<div class="one-third-block">
					<div class="connect-widget widget">
						<div class="social-icons">
							<h4 class="widget-title">Connect with us</h4>
							<ul class="horizontal-navigation">
								<li><a title="Facebook" href="https://facebook.com/arunmaharana123" target="_blank"><i class="fa fa-facebook"></i></a></li>
								<li><a title="LinkedIn" href="https://in.linkedin.com/in/arunmaharana123" target="_blank"><i class="fa fa-linkedin"></i></a></li>
								<li><a title="GitHub" href="https://github.com/arunmaharana123" target="_blank"><i class="fa fa-github"></i></a></li>
								<li><a title="Stack-OverFlow" href="https://stackoverflow.com/users/6708771/arun-maharana" target="_blank"><i class="fa fa-stack-overflow"></i></a></li>
								<li><a title="Instagram" href="https://www.instagram.com/arunmaharana123/" target="_blank"><i class="fa fa-instagram"></i></a></li>
								<li><a title="Twitter" href="https://twitter.com/arunmaharana123" target="_blank"><i class="fa fa-twitter"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- #prefooter -->
	<footer id="footer" role="contentinfo">
		<div class="container">
			<div class="row">
				<div class="copyright">&copy; j4java.com 2018-19
					&nbsp;&nbsp;&nbsp; Design by Arun & Bhushan</div>
			</div>
			<!-- .row -->
		</div>
		<!-- .container -->
	</footer>
	<!-- #footer -->
	<!-- Scripts -->
	<script>
		(function() { // DON'T EDIT BELOW THIS LINE
			var d = document, s = d.createElement('script');
			s.src = 'https://arunmaharana.disqus.com/embed.js';
			s.setAttribute('data-timestamp', +new Date());
			(d.head || d.body).appendChild(s);
		})();
	</script>
	<noscript>
		Please enable JavaScript to view the <a
			href="https://disqus.com/?ref_noscript">comments powered by
			Disqus.</a>
	</noscript>

</body>
</html>