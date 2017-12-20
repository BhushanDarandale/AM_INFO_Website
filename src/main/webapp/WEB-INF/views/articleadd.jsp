<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css"
	rel="stylesheet">
<%-- <link
	href="<%=request.getContextPath()%>/resources/editor/summernote.css"
	rel="stylesheet"> --%>
<script
	src="<%=request.getContextPath()%>/resources/editor/summernote.js"></script>


<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="sectionTitle paddingBottom">
				<span class="heading-t3"></span>
				<h2>Write Article</h2>

				<div class="">
					<form id="articleform" name="articleform"
						action="<c:url value='/article/create' ></c:url>" method="post"
						enctype="multipart/form-data" class="comment-form">

						<p class="form-submit" style="margin-top: 30px;">
							<label for="title">Enter Title:</label> <input id="title"
								name="title" class="form-control" type="text"
								placeholder="Enter title" value="${FullArticle.title }">
						</p>

						<p class="form-submit" style="margin-top: 30px;">
							<label for="tags">Enter Tags:</label><input id="tags" name="tags"
								class="form-control" type="text" value="${FullArticle.tags }"
								placeholder="Enter tags separated by Comma ,">
						</p>

						<p class="form-submit" style="margin-top: 30px;">
							<label for="file">Select File:</label><input type="file"
								name="filename" id="file" class="form-control" accept="image/*">
						</p>

						<!-- <p style="margin-top: 30px;" align="right">
							<label for="file">Paste:</label><input type="file"
								name="filename" id="file" class="form-control" accept="image/*">
						</p> -->

						<p class="form-submit" style="margin-top: 30px;">
							<label for="shortdesc">Short Description:</label>
							<textarea id='shortdesc' name="shortdescription"
								class="form-control"
								placeholder="Type Short description here ...">${FullArticle.shortDesc }</textarea>
						</p>
						<input type="hidden" id="description" name="description">
						<div id="summernote">${FullArticle.description }</div>

						<input id="category" name="category" type="hidden" value="Other">
						<p style="margin-top: 30px;" align="right">
							<c:if test="${FullArticle.id ne null }">
								<input id="articleID" name="articleID" type="hidden"
									value="${FullArticle.id }">
								<button type="button" data-toggle="modal"
									style="background-color: #FF9800; border-color: #FF9800;"
									data-target="#ArticleCatModal" class="btn btn-success"
									value="Submit">Update Article</button>
							</c:if>
							<c:if test="${FullArticle.id eq null }">
								<button type="button" class="btn btn-success"
									style="background-color: #FF9800; border-color: #FF9800;"
									data-toggle="modal" data-target="#ArticleCatModal"
									value="Submit">Create Article</button>
							</c:if>
						</p>
					</form>

				</div>
			</div>
			<!-- end contactForm -->
		</div>
		<!-- end col-sm-12 -->
	</div>
</div>


<!-- end content area -->
<div id="ArticleCatModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Select Category</h4>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				<div class="form-group">
					<div class="col-sm-6" align="center">
						<button type="button" onclick="setCategory('JAVA')"
							class="btn btn-success btn-lg"
							style="background-color: #333; border-color: #333;">Java</button>
					</div>
					<div class="col-sm-6" align="center">
						<button type="button" onclick="setCategory('OTHER')"
							class="btn btn-success btn-lg"
							style="background-color: #333; border-color: #333;">Other</button>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>
<script>
	function setCategory(category) {
		document.getElementById("category").value = category;
		var html = $('#summernote').summernote('code');
		document.getElementById("description").value = html;

		articleform.submit();
	}
</script>
<script>
	$(document).ready(function() {
		$('#summernote').summernote({
			height : 500,
			placeholder : 'type description...'
		});
	});
</script>
