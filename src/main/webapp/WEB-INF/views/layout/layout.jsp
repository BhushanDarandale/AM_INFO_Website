<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>

<head>
<meta charset="UTF-8">
<meta name="author" content="Arun and Bhushan">
<<<<<<< HEAD
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon" href="<%=request.getContextPath()%>/resources/main_template/images/logo.png" />

<title>J4Java | Home</title>
<link media="all" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link media="all" type="text/css" href=" main_template/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/main_template/css/bootstrap.min.css" type="text/css" media="screen" />
<link media="all" type="text/css" href="<%=request.getContextPath()%>/resources/main_template/css/core.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/main_template/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/main_template/js/bootstrap337.min.js"></script>
=======
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>eNno Bootstrap Template</title>

<!-- Bootstrap -->
<link href="<%=request.getContextPath()%>/resources/j4java/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/j4java/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/j4java/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/j4java/css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/j4java/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/j4java/css/demo.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/j4java/css/set1.css" />
<link href="<%=request.getContextPath()%>/resources/j4java/css/overwrite.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/j4java/css/style.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
>>>>>>> a32513f4747d2f4d15fb9d6ab4e1dabd06a725c0
</head>


<body class="home">
<tiles:insertAttribute name="header" />

	<main id="content" role="main">
	<div class="section" style="margin-top: 100px;">
		<div class="container">
			<div class="row">
				<tiles:insertAttribute name="error" />
			</div>
			<div class="row">
				<tiles:insertAttribute name="body" />
			</div>
		</div>
	</div>
	</main>
	<main id="content" role="main">
	<div class="section">
		<div class="container">
			<div class="row">
				<div id="disqus_thread"></div>
			</div>
		</div>
	</div>
	</main>
	

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
<tiles:insertAttribute name="footer" />
</body>
</html>