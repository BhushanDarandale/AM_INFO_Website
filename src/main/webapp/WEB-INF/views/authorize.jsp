<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/resume_template/css/bootstrap.min.css"
	type="text/css" media="screen" />
<body>

	<div class="container">
		<h2>Login Error</h2>
		<form action="authorize" method="post" enctype="multipart/form-data"
			class="comment-form">
			<p class="form-submit" style="margin-top: 30px;">
				<label for="title">Enter OTP:</label> <input id="otp" name="otp"
					class="form-control" type="password" placeholder="Enter OTP">
			</p>
		</form>
	</div>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/main_template/js/jquery-1.11.2.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
