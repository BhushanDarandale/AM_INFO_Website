<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>

<head>
<meta charset="UTF-8">
<meta name="author" content="Arun and Bhushan">
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