<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
<title>Arun Maharana | Resume | Java Developer</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="title"
	content="Arun Maharana - Resume | Java Developer | 2+ Years Experience | J2EE, Spring, Hibernate">
<meta name="description"
	content="Hi, I am Arun Maharana having 2+ years of experience as Software Engineer (Java).">
<meta name="description"
	content="Working with Java, J2EE, Hibernate, Spring Framework.">
<meta name="description"
	content="Hands on experience with Eclipse IDE with Maven.">
<meta name="description"
	content="Also working with other tools like DWR, Quartz, POI.Using GitHub, Zillow API, Tomcat, MySQL, Tiles, etc.">
<meta name="keywords"
	content="arunmaharana.info, Arun Maharana, Resume Of Arun Maharana, Arun Maharana's Resume, Profile of Arun Maharana, Arun's Profile">
<meta name="author" content="Arun Maharana">

<link rel="icon"
	href="<%=request.getContextPath()%>/resources/resume_template/images/favicon.jpg" />
<link href='https://fonts.googleapis.com/css?family=Raleway:400,700'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/resume_template/css/bootstrap.min.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/resume_template/css/font-awesome.min.css"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/resume_template/css/style.css"
	type="text/css" media="screen" />
</head>

<body>
	<div class="preloader">
		<div class="spinner">
			<strong>Loading...<i class="fa-li fa fa-spinner fa-spin"></i></strong>
		</div>
	</div>
	<div class="preloader-left"></div>
	<div class="preloader-right"></div>
	<div class="inline-menu-container hidex">
		<ul class="inline-menu">
			<li class="about menu-item">Resume</li>
			<li class="portfolio menu-item">Photos</li>
			<li class="blog menu-item">Blog</li>
			<li class="contact menu-item">Contact</li>
			<li id="close">&times;</li>
		</ul>
	</div>
	<section class="home">
		<div class="container">
			<div class="name-block">
				<div class="name-block-container">
					<h1>
						<span>Hi, I'm</span>Arun Maharana
					</h1>
					<h2>Full Stack Developer (Java)</h2>
					<a href="home" class="btn btn-home">Home</a>
					<ul class="social">
						<li><a title="LinkedIn"
							href="https://in.linkedin.com/in/arunmaharana123" target="_blank"><i
								class="fa fa-linkedin"></i></a></li>
						<li><a title="GitHub"
							href="https://github.com/arunmaharana123" target="_blank"><i
								class="fa fa-github"></i></a></li>
						<li><a title="Stack-OverFlow"
							href="https://stackoverflow.com/users/6708771/arun-maharana"
							target="_blank"><i class="fa fa-stack-overflow"></i></a></li>
						<li><a title="Instagram"
							href="https://www.instagram.com/arunmaharana123/" target="_blank"><i
								class="fa fa-instagram"></i></a></li>
						<li><a title="Twitter"
							href="https://twitter.com/arunmaharana123" target="_blank"><i
								class="fa fa-twitter"></i></a></li>

					</ul>
				</div>
			</div>
			<div class="menu-blocks">
				<div class="about-block menu-block">
					<div class="about-block-container">
						<h2 class="about menu-item">Resume</h2>
					</div>
				</div>
				<div class="portfolio-block menu-block">
					<div class="portfolio-block-container">
						<h2 class="portfolio menu-item">Photos</h2>
					</div>
				</div>
				<div class="blog-block menu-block">
					<div class="blog-block-container">
						<h2 class="blog menu-item">Blog</h2>
					</div>
				</div>
				<div class="contact-block menu-block">
					<div class="contact-block-container">
						<h2 class="contact menu-item">Contact</h2>
					</div>
				</div>
			</div>
			<div class="content-blocks about hidex">
				<section class="content" id="about">
					<div class="block-content">
						<h3 class="block-title">Profile</h3>
						<div class="row">
							<div class="col-md-7">
								<p style="text-align: justify;">To work in a competitive
									environment that effectively utilizes my analytical,
									interpersonal, leadership and organizational skills to conceive
									and achieve solutions. The solutions which help the
									organization in not only meeting its targets, but also allowing
									it to grow, thereby, enhancing my own skills as an individual
									and as a key player in the organization's development. .</p>
								<p style="text-align: justify;">Having 2+ years work
									experience in Java Developer.</p>
								<p style="text-align: justify;">Working with Java, J2EE,
									Hibernate and Spring. Hands on experience in front-end
									technologies HTML, CSS, Java Script, etc.</p>
								<p style="text-align: justify;">Have great experience with
									Eclipse IDE and maven.</p>
							</div>
							<div class="col-md-5">
								<ul class="info-list">
									<li><strong>Name : </strong> Arun Maharana</li>
									<li><strong>Date of birth : </strong> May 10, 1991</li>
									<li><strong>Address : </strong> Kumarpani, Odisha, 761106</li>
									<li><strong>Email : </strong> arun.maharana@yahoo.in</li>
									<li><strong>Phone : </strong> + 91 - 9011822778</li>
									<li><strong>Interest : </strong> Java Developer, Full
										Stack Developer</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="block-content skills">
						<h3 class="block-title">Skills</h3>
						<div class="row">
							<div class="col-md-6">
								<h4>Technical Skills</h4>
								<!-- Java Skill -->
								<label class="progress-bar-label">Java - <span>3
										years experience</span></label>
								<div class="progress">
									<div style="width: 80%;" class="progress-bar"
										role="progressbar" aria-valuenow="80" aria-valuemin="0"
										aria-valuemax="100">
										<span>80%</span>
									</div>
								</div>

								<!-- Hibernate Skill -->
								<label class="progress-bar-label">Hibernate - <span>3
										years experience</span></label>
								<div class="progress">
									<div style="width: 70%;" class="progress-bar"
										role="progressbar" aria-valuenow="70" aria-valuemin="0"
										aria-valuemax="100">
										<span>70%</span>
									</div>
								</div>

								<!-- Spring Skill -->
								<label class="progress-bar-label">Spring - <span>2
										years experience</span></label>
								<div class="progress">
									<div style="width: 70%;" class="progress-bar"
										role="progressbar" aria-valuenow="70" aria-valuemin="0"
										aria-valuemax="100">
										<span>70%</span>
									</div>
								</div>

								<!-- HTML CSS Skill -->
								<label class="progress-bar-label">HTML CSS - <span>3
										years experience</span></label>
								<div class="progress">
									<div style="width: 75%;" class="progress-bar"
										role="progressbar" aria-valuenow="75" aria-valuemin="0"
										aria-valuemax="100">
										<span>75%</span>
									</div>
								</div>

								<!-- Bootstrap Skill -->
								<label class="progress-bar-label">Bootstrap - <span>2
										years experience</span></label>
								<div class="progress">
									<div style="width: 75%;" class="progress-bar"
										role="progressbar" aria-valuenow="75" aria-valuemin="0"
										aria-valuemax="100">
										<span>75%</span>
									</div>
								</div>

								<!-- Java Script Skill -->
								<label class="progress-bar-label">JavaScript - <span>2
										years experience</span></label>
								<div class="progress">
									<div style="width: 75%;" class="progress-bar"
										role="progressbar" aria-valuenow="75" aria-valuemin="0"
										aria-valuemax="100">
										<span>75%</span>
									</div>
								</div>


							</div>
							<div class="col-md-6">
								<h4>High Lights</h4>
								<div class="row">
									<div class="col-sm-6 col-xs-6">
										<ul class="icon-list">
											<li>Java 9</li>
											<li>DAO Design Pattern</li>
											<li>SpirngMVC</li>
											<li>Web Service</li>
											<li>JPA(Annotation)</li>
											<li>Maven Repository</li>
											<li>Eclipse IDE</li>
											<li>GitHub</li>
											<li>Struts</li>
											<li>Tomcat8</li>
											<li>MySQL</li>
											<li>AWS, EC2, Route53, S3.</li>
										</ul>
									</div>
									<div class="col-sm-6 col-xs-6">
										<ul class="icon-list">
											<li>JSON Parser</li>
											<li>Java Server Pages</li>
											<li>Tiles Template Engine</li>
											<li>JSTL</li>
											<li>JavaScript</li>
											<li>JQuery</li>
											<li>AJAX</li>
											<li>DWR</li>
											<li>Google Maps</li>
											<li>AmCharts</li>
											<li>Data Tables</li>
											<li>so on...</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="block-content ">
						<h3 class="block-title">Experience</h3>
						<div class="timeline experience">
							<div class="row ">
								<div class="col-md-12">
									<div class="exp-holder">
										<div class="exp">
											<div class="hgroup">
												<h4>Software Engineer at Solutionsline SoftTech Pvt.
													Ltd.</h4>
												<h5>
													March 2016 - <span class="current">Current</span>
												</h5>
											</div>
											<p>
												<b>Role: Java Developer</b>
											</p>
											<ul>
												<li>Fixed issues in both back-end and in the front-end.</li>
												<li>Developing Roles management.</li>
												<li>Fixing task event issues.</li>
												<li>Assigning tasks to proper role/user.</li>
											</ul>
										</div>
										<div class="exp">
											<div class="hgroup">
												<h4>Software Engineer at Eccentric InfoTech Pvt. Ltd.</h4>
												<h5>June 2015 - March 2016</h5>
											</div>
											<p>
												<b>Role: Java Developer</b>
											</p>
											<ul>
												<li>Fixed issues Java.</li>
												<li>Developing Clean Code.</li>
												<li>Fixing issues.</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="block-content">
						<h3 class="block-title">Education</h3>
						<div class="timeline education">
							<div class="row ">
								<div class="col-md-12">
									<div class="exp-holder">
										<div class="exp">
											<div class="hgroup">
												<h4>Master of Computer Application</h4>
												<h5>2012 - 2015</h5>
											</div>
											<p>
												College of Engineering & Technology, Bhubaneswar<br>CGPA
												- 8.3 out of 10
											</p>
										</div>
										<div class="exp">
											<div class="hgroup">
												<h4>Bachelor of Science in Mathematics</h4>
												<h5>2009 - 2015</h5>
											</div>
											<p>
												Hinjilicut Science College, Under Berhampur University.<br>Percentage
												- 77%
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<div class="content-blocks portfolio hidex">
				<section class="content">
					<div class="block-content">
						<h3 class="block-title">Photos</h3>
						<div class="row">
							<div class="col-md-12">
								<div id="projects">
									<div class="project">
										<img style="height: 250px;"
											src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/Arun_Maharana_1.jpeg"
											alt="">
									</div>
									<div class="project">
										<img style="height: 250px;"
											src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/Arun_Maharana_2.jpeg"
											alt="">
									</div>
									<div class="project">
										<img style="height: 250px;"
											src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/Arun_Maharana_3.jpeg"
											alt="">
									</div>
									<div class="project">
										<img style="height: 250px;"
											src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/Arun_Maharana_4.jpeg"
											alt="">
									</div>
									<div class="project">
										<img style="height: 250px;"
											src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/Arun_Maharana_5.jpeg"
											alt="">
									</div>
									<div class="project">
										<img style="height: 250px;"
											src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/Arun_Maharana_6.jpeg"
											alt="">
									</div>
									<div class="project">
										<img style="height: 250px;"
											src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/Arun_Maharana_7.jpeg"
											alt="">
									</div>
									<div class="project">
										<img style="height: 250px;"
											src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/Arun_Maharana_8.jpeg"
											alt="">
									</div>
									<div class="project">
										<img style="height: 250px;"
											src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/Arun_Maharana_9.jpg"
											alt="">
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<div class="content-blocks blog hidex">
				<section class="content">
					<div class="block-content">
						<h3 class="block-title">My Blog</h3>
						<div class="row">
							<div class="col-md-10 col-md-offset-1">
								<div class="post">
									<div class="post-thumbnail">
										<a class="open-post" href="#"> <img
											src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/blog.jpeg"
											alt="">
										</a>
									</div>
									<div class="post-title">
										<a class="open-post" href="post-single.html"><h2>Java9
												Features</h2></a>
										<p class="post-info">
											<span class="post-author">Posted by Bhushan Darandale</span>
											<span class="slash"></span> <span class="post-date">Nov
												08, 2017</span> <span class="slash"></span> <span
												class="post-catetory">Java Technology</span>
										</p>
									</div>
									<div class="post-body">
										<h5>1. The Java Platform module system</h5>
										<p>The defining feature for Java 9 is an all-new module
											system. When codebases grow larger, the odds of creating
											complicated, tangled "spaghetti code" increase exponentially.
											There are two fundamental problems: It is hard to truly
											encapsulate code, and there is no notion of explicit
											dependencies between different parts (JAR files) of a system.
											Every public class can be accessed by any other public class
											on the classpath, leading to inadvertent usage of classes
											that weren't meant to be public API. Furthermore, the
											classpath itself is problematic: How do you know whether all
											the required JARs are there, or if there are duplicate
											entries? The module system addresses both issues</p>
										<h5>2. Stream API improvements</h5>
										<p>The Streams API is arguably one of the best
											improvements to the Java standard library in a long time. It
											allows you to create declarative pipelines of transformations
											on collections. With Java 9, this only gets better. There are
											four new methods added to the Stream interface: dropWhile,
											takeWhile, ofNullable. The iterate method gets a new
											overload, allowing you to provide a Predicate on when to stop
											iterating:</p>
										<a class="btn open-post" href="#">Read More</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<div class="content-blocks contact hidex">
				<section class="content">
					<div class="block-content">
						<h3 class="block-title">Get in touch</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="contact-content ">
									<div class="contact-icon">
										<i class="fa fa-map-marker"></i>
									</div>
									<div class="contact-details">
										<h5>Address</h5>
										<p>Old Sangavi, Pune, 411057</p>
									</div>
								</div>
								<div class="contact-content ">
									<div class="contact-icon">
										<i class="fa fa-phone"></i>
									</div>
									<div class="contact-details">
										<h5>Call Us</h5>
										<p>+91 - 9011822778</p>
									</div>
								</div>
								<div class="contact-content ">
									<div class="contact-icon">
										<i class="fa fa-envelope"></i>
									</div>
									<div class="contact-details">
										<h5>Enquiries</h5>
										<p>arun.maharana@outlook.com</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<form method="POST" action="#" id="formcontactus" class="">
									<div class="form-group">
										<input name="name" type="text" class="form-control requiretop"
											placeholder="* Your Name" />
									</div>
									<div class="form-group">
										<input name="email" type="email"
											class="form-control requiretop" placeholder="* Your Email" />
									</div>
									<div class="form-group">
										<textarea rows="6" name="message"
											class="form-control requiretop" placeholder="* Your Message"></textarea>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-dark selected">Send
											Message</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</section>
	<script
		src="<%=request.getContextPath()%>/resources/resume_template/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/resume_template/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/resume_template/js/jquery.isotope.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/resume_template/js/jquery.placeholder.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/resume_template/js/contact_me.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/resume_template/js/main.js"></script>
</body>
</html>


