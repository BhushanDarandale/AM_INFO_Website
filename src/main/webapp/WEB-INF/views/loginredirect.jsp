<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<form name="loginform" action="<c:url value="/login" ></c:url>"
	method="post" class="comment-form">
	<div class="form-group">
		<input type="hidden" class="form-control" name="username"
			value="${USERNAME }" placeholder="Enter email or username">
	</div>
	<div class="form-group">
		<input type="hidden" class="form-control" name="password"
			value="${PASSWORD }" placeholder="Enter password">
	</div>
</form>

<script>
	loginform.submit();
</script>