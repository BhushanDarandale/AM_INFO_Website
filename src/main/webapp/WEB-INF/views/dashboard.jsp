<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="full-block">
	<div class="container">

		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#menu1"><b>Verified</b></a></li>
			<li><a data-toggle="tab" href="#menu2"><b>Pending</b></a></li>
			<li><a data-toggle="tab" href="#menu3"><b>Deleted</b></a></li>
		</ul>

		<div class="tab-content">
			<div id="menu1" class="tab-pane fade in active">
				<div class="content" style="padding-top: 10px;">

					<c:forEach items="${Topics }" var="topic" varStatus="loop">
						<c:if test="${topic.status eq 1 }">
							<article class="post hentry">
								<header class="entry-header">
									<h2 class="article-title">
										<a href="article/${topic.id }/${topic.title }" target="_blank">${topic.title }</a>
									</h2>
								</header>

								<div class="entry-content">
									<p>${topic.shortDesc }<a
											href="article/${topic.id }/${topic.title }" target="_blank"><kbd>full
												description</kbd></a>
									</p>
								</div>

								<!-- .entry-content -->
								<div class="entry-meta">
									<span class="post-author"> <i class="fa fa-user fa-fw"></i>
										Posted by <span class="vcard"><a class="fn url"
											href="#">${topic.createdBy }</a></span>
									</span> <span class="post-date"><a
										href="article/edit/${topic.id }"><kbd style="color: blue;">Edit</kbd></a>
									</span>
									<!-- .post-date -->
									<span class="post-author"><a
										href="article/delete/${topic.id }"><kbd
												style="color: red;">Delete</kbd></a> </span>
									<!-- .post-author -->
									<c:if test="${topic.status eq 2 }">
										<span class="post-tags"><a
											href="article/verify/${topic.id }"><kbd>Verify It</kbd></a> </span>
									</c:if>
									<c:if test="${topic.status ne 2 }">
										<span class="post-tags"><kbd style="color: green;">Verified</kbd></span>
									</c:if>
									<!-- .post-tags -->
								</div>
								<!-- .entry-meta -->
							</article>
						</c:if>
						<!-- .post -->
					</c:forEach>
				</div>
			</div>
			<div id="menu2" class="tab-pane fade">
				<div class="content" style="padding-top: 10px;">

					<c:forEach items="${Topics }" var="topic" varStatus="loop">
						<c:if test="${topic.status eq 2 }">
							<article class="post hentry">
								<header class="entry-header">
									<h2 class="article-title">
										<a href="article/${topic.id }/${topic.title }" target="_blank">${topic.title }</a>
									</h2>
								</header>

								<div class="entry-content">
									<p>${topic.shortDesc }<a
											href="article/${topic.id }/${topic.title }" target="_blank"><kbd>full
												description</kbd></a>
									</p>
								</div>

								<!-- .entry-content -->
								<div class="entry-meta">
									<c:if
										test="${(USER_SESSION_USERROLE eq USER_ROLE_ADMIN) || (USER_SESSION_USERID eq USERID)}">
										<span class="post-author"> <i class="fa fa-user fa-fw"></i>
											Posted by <span class="vcard"><a class="fn url"
												href="#">${topic.createdBy }</a></span>
										</span>
										<span class="post-date"><a
											href="article/edit/${topic.id }"><kbd
													style="color: blue;">Edit</kbd></a> </span>
										<!-- .post-date -->
										<span class="post-author"><a
											href="article/delete/${topic.id }"><kbd
													style="color: red;">Delete</kbd></a> </span>
										<!-- .post-author -->
									</c:if>
									<c:if test="${USER_SESSION_USERROLE eq USER_ROLE_ADMIN }">
										<c:if test="${topic.status eq 2 }">
											<span class="post-tags"><a
												href="article/verify/${topic.id }"><kbd>Verify It</kbd></a>
											</span>
										</c:if>
										<c:if test="${topic.status ne 2 }">
											<span class="post-tags"><kbd style="color: green;">Verified</kbd></span>
										</c:if>
									</c:if>
									<!-- .post-tags -->
								</div>
								<!-- .entry-meta -->
							</article>
						</c:if>
						<!-- .post -->
					</c:forEach>
				</div>
			</div>
			<div id="menu3" class="tab-pane fade">
				<div class="content" style="padding-top: 10px;">
					<c:forEach items="${Topics }" var="topic" varStatus="loop">
						<c:if test="${topic.status eq 0 }">
							<article class="post hentry">
								<header class="entry-header">
									<h2 class="article-title">
										<a href="article/${topic.id }/${topic.title }" target="_blank">${topic.title }</a>
									</h2>
								</header>

								<div class="entry-content">
									<p>${topic.shortDesc }<a
											href="article/${topic.id }/${topic.title }" target="_blank"><kbd>full
												description</kbd></a>
									</p>
								</div>

								<!-- .entry-content -->
								<div class="entry-meta">
									<c:if test="${USER_SESSION_USERROLE eq USER_ROLE_ADMIN }">
										<span class="post-author"> <i class="fa fa-user fa-fw"></i>
											Posted by <span class="vcard"><a class="fn url"
												href="#">${topic.createdBy }</a></span>
										</span>
										<span class="post-date"><a
											href="article/edit/${topic.id }"><kbd
													style="color: blue;">Edit</kbd></a> </span>
										<!-- .post-date -->
										<span class="post-author"><a
											href="article/restore/${topic.id }"><kbd
													style="color: red;">Restore</kbd></a> </span>
										<!-- .post-author -->
									</c:if>
									<!-- .post-tags -->
								</div>
								<!-- .entry-meta -->
							</article>
						</c:if>
						<!-- .post -->
					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<!-- .content -->
</div>
<!-- .three-quarters-block -->

