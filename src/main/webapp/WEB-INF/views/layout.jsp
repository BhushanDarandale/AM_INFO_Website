<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="title" content="${MetaTag.title }">
<meta name="description" content="${MetaTag.description }">
<meta name="keywords" content="${MetaTag.keywords }">
<meta name="og:url" content="${MetaTag.link }">
<meta name="og:site_name" content="Arun Maharana">
<meta name="ag:image" content="${MetaTag.image }">
<meta name="author" content="Arun Maharana">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon"
	href="<%=request.getContextPath()%>/resources/resume_template/images/favicon.jpg" />
<!-- Place favicon.ico in the root directory -->

<title>Arun Maharana | Home</title>

<link media="all" type="text/css"
	href="http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link media="all" type="text/css"
	href="<%=request.getContextPath()%>/resources/main_template/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/resume_template/css/bootstrap.min.css"
	type="text/css" media="screen" />
<link media="all" type="text/css"
	href="<%=request.getContextPath()%>/resources/main_template/css/core.css"
	rel="stylesheet">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/main_template/js/jquery-1.11.2.min.js"></script>

<style type="text/css">
a.popular-tag {
	font-size: 16px;
	margin: 5px;
}

a {
	word-break: break-all;
}
</style>

</head>
<body class="home">
	<!-- #masthead -->
	<div id="masthead">
		<div id="site-header" role="banner">
			<div class="container">
				<div class="row">
					<div id="branding">
						<a class="logo" href="<c:url value='/home' ></c:url>">Arun
							Maharana</a>
					</div>

					<nav id="main-menu" role="navigation">
						<ul class="horizontal-navigation">
							<li class="menu-home"><a
								href='<c:url value="/home" ></c:url>' title="Home">Home</a></li>
							<li class="menu-home"><a
								href='<c:url value="/article" ></c:url>' title="Articles">Articles</a></li>
							<li class="menu-home"><a
								href='<c:url value="/java" ></c:url>' title="Java Articles">Java</a></li>
							<li class="menu-home"><a
								href='<c:url value="/news" ></c:url>' title="Trending News">News</a></li>
							<c:choose>
								<c:when
									test="${(USER_SESSION_USERROLE eq 1) || (USER_SESSION_USERROLE eq 2) || (USER_SESSION_USERROLE eq 3) }">

									<li class="menu-home" class="dropdown"><a title="Account"
										href="#" class="dropdown-toggle" data-toggle="dropdown">${USER_SESSION_NAME }
											<i class="fa fa-chevron-circle-down"></i>
									</a>
										<ul class="dropdown-menu">
											<li class="menu-home"><a
												style="color: #333; text-decoration: none; font-size: 14px; font-weight: bold;"
												href='<c:url value="/dashboard" ></c:url>' title="Dashboard">Dashboard</a></li>
											<li class="menu-home"><a
												style="color: #333; text-decoration: none; font-size: 14px; font-weight: bold;"
												href='<c:url value="/profile" ></c:url>' title="My Profile">My
													Profile</a></li>
											<li class="menu-home"><a
												style="color: #333; text-decoration: none; font-size: 14px; font-weight: bold;"
												href='<c:url value="/logout" ></c:url>' title="Logout">Logout</a></li>
										</ul></li>
									<c:if test="${USER_SESSION_USERROLE eq 1}">
										<li class="menu-home"><a
											href='<c:url value="/article/add" ></c:url>'
											title="Post Topic"><i class="fa fa-plus"></i>&nbsp;</a></li>
									</c:if>
								</c:when>
								<c:otherwise>

									<li class="menu-home" class="dropdown"><a title="Account"
										href="#" class="dropdown-toggle" data-toggle="dropdown">Account
											<i class="fa fa-chevron-circle-down"></i>
									</a>
										<ul class="dropdown-menu">

											<li class="menu-home"><a
												style="color: #333; text-decoration: none; font-size: 14px; font-weight: bold;"
												href='#' data-toggle="modal" data-target="#loginModal"
												title="About">Login</a></li>
											<li class="menu-home"><a
												style="color: #333; text-decoration: none; font-size: 14px; font-weight: bold;"
												href='#' data-toggle="modal" data-target="#RegisterModal"
												title="About">Register</a></li>
										</ul></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</nav>
					<!-- #main-menu -->
				</div>
				<!-- .row -->
			</div>
			<!-- .container -->
		</div>
	</div>
	<!-- #masthead -->
	<!-- Login Modal -->
	<div id="loginModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Login</h4>
				</div>
				<div class="modal-body">
					<form action="<c:url value="/login" ></c:url>" method="post"
						class="comment-form">
						<div class="form-group">
							<input type="text" class="form-control" name="username"
								placeholder="Enter email or username">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="password"
								placeholder="Enter password">
						</div>
						<div class="checkbox">
							<label><input type="checkbox"> Remember me</label>
						</div>
						<div class="form-group" align="right">
							<button type="submit" class="btn btn-success"
								style="background-color: #333; border-color: #333;">Login</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
	<!-- Login Modal -->
	<div id="RegisterModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Register</h4>
				</div>
				<div class="modal-body">
					<form action="<c:url value="/register" ></c:url>" method="post"
						class="comment-form">
						<div class="form-group">
							<input type="text" class="form-control" name="fullname"
								placeholder="Enter name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="Enter email">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="designation"
								placeholder="Enter Designation">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="company"
								placeholder="Enter Company Name">
						</div>

						<div class="form-group">
							<input type="text" class="form-control" name="address"
								placeholder="Enter Address">
						</div>

						<div class="form-group">
							<input type="text" class="form-control" name="username"
								placeholder="Create username">
						</div>

						<div class="form-group">
							<input type="password" class="form-control" name="password"
								placeholder="Enter password">
						</div>

						<div class="form-group">
							<input type="text" class="form-control" name="confirmpassword"
								placeholder="Enter confirm password">
						</div>
						<div class="form-group" align="right">
							<button type="submit" class="btn btn-success"
								style="background-color: #333; border-color: #333;">Register</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
	<main id="content" role="main">
	<div class="section">
		<div class="container">
			<div class="row">
				<tiles:insertAttribute name="body" />
			</div>
			<!-- .row -->
		</div>
		<!-- .container -->
	</div>
	<!-- .section --> </main>
	<!-- #content -->
	<main id="content" role="main">
	<div class="section">
		<div class="container">
			<div class="row">

				<div id="disqus_thread"></div>
			</div>
		</div>
	</div>
	</main>
	<div id="prefooter" role="complementary">
		<div class="container">
			<div class="row">
				<div class="one-third-block">

					<div class="contact-widget widget">

						<h4 class="widget-title">Arun Maharana</h4>
						<p>A clean coder Java developer. If you have any requirement
							contact us.</p>

						<p>Address : Kumarpani, Ganjam, Odisha 761106</p>
						<!-- .address -->

						<p>
							<i class="fa fa-phone fa-fw"></i>+91 9011822778
						</p>
						<p>
							<i class="fa fa-envelope fa-fw"></i>arun.maharana@outlook.com
						</p>

					</div>
					<!-- .contact-widget -->

				</div>
				<!-- .one-third-block -->

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
					<!-- .recent-posts-widget -->

				</div>
				<!-- .one-third-block -->

				<div class="one-third-block">

					<div class="connect-widget widget">
						<div class="social-icons">
							<h4 class="widget-title">Connect with us</h4>
							<ul class="horizontal-navigation">
								<li><a title="Facebook"
									href="https://facebook.com/arunmaharana123" target="_blank"><i
										class="fa fa-facebook"></i></a></li>
								<li><a title="LinkedIn"
									href="https://in.linkedin.com/in/arunmaharana123"
									target="_blank"><i class="fa fa-linkedin"></i></a></li>
								<li><a title="GitHub"
									href="https://github.com/arunmaharana123" target="_blank"><i
										class="fa fa-github"></i></a></li>
								<li><a title="Stack-OverFlow"
									href="https://stackoverflow.com/users/6708771/arun-maharana"
									target="_blank"><i class="fa fa-stack-overflow"></i></a></li>
								<li><a title="Instagram"
									href="https://www.instagram.com/arunmaharana123/"
									target="_blank"><i class="fa fa-instagram"></i></a></li>
								<li><a title="Twitter"
									href="https://twitter.com/arunmaharana123" target="_blank"><i
										class="fa fa-twitter"></i></a></li>
							</ul>
							<!-- .horizontal-navigation -->
						</div>
						<!-- .social-icons -->
					</div>
					<!-- .connect-widget -->

				</div>
				<!-- .one-third-block -->

			</div>
			<!-- .row -->
		</div>
		<!-- .container -->
	</div>
	<!-- #prefooter -->

	<footer id="footer" role="contentinfo">
		<div class="container">
			<div class="row">
				<div class="copyright">&copy; arunmaharana.info 2017-18
					&nbsp;&nbsp;&nbsp; Design by Arun Maharana</div>
			</div>
			<!-- .row -->
		</div>
		<!-- .container -->
	</footer>
	<!-- #footer -->

	<!-- Scripts -->

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



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