<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="three-quarters-block">
	<div class="content">

		<c:forEach items="${Topics }" var="topic" varStatus="loop">
			<article class="post hentry">
				<header class="entry-header">
					<h2 class="article-title">
						<a href="article/${topic.id }/${topic.title }">${topic.title }</a>
					</h2>
				</header>

				<div class="entry-content">
					<p>${topic.shortDesc }<a
							href="article/${topic.id }/${topic.title }"><kbd>full
								description</kbd></a>
					</p>
				</div>

				<!-- .entry-content -->
				<div class="entry-meta">
					<span class="post-date"> <i class="fa fa-clock-o fa-fw"></i>
						<span class="updated"><fmt:formatDate type="date"
								value="${topic.datetime }" /> </span>
					</span>
					<!-- .post-date -->
					<span class="post-author"> <i class="fa fa-user fa-fw"></i>
						Posted by <span class="vcard"><a class="fn url" href="#">${topic.createdBy }</a></span>
					</span>
					<!-- .post-author -->

					<span class="post-tags"> <i class="fa fa-tags fa-fw"></i>${topic.tags }
					</span>
					<!-- .post-tags -->

				</div>
				<!-- .entry-meta -->
			</article>
			<!-- .post -->
		</c:forEach>
	</div>
	<!-- .content -->
</div>
<!-- .three-quarters-block -->

<div class="one-quarter-block" role="complementary">
	<div class="sidebar">

		<div class="search-widget widget">
			<form class="widget-form" action="#" method="get" role="search">
				<div>
					<span class="screen-reader-text">Search this website:</span> <input
						type="search" class="search-field"
						placeholder="Search Articles &hellip;" value="" name="search"
						title="Search" />
				</div>
			</form>
		</div>
		<!-- .search.widget -->

		<div class="widget">
			<h3 class="widget-title" style="color: #333;">Popular Tags</h3>
			<P style="text-align: left;">

				<c:forEach items="${ArticleTopTags }" var="tgs" varStatus="loop">
					<a class="popular-tag" href="tag/${tgs.tag }"><kbd>${tgs.tag }</kbd></a>
				</c:forEach>
			</P>

		</div>
		<!-- .widget -->

		<div class="widget">
			<h4 class="widget-title" style="color: #333;">Recent Posts</h4>
			<ul>
				<c:forEach items="${RecentTopArticle }" var="article"
					varStatus="loop">
					<li class="recent-post"><a
						href="article/${article.id }/${article.title }"
						title="${article.title }" rel="bookmark"> <span
							class="recent-post-title"><kbd>${article.title }</kbd> </span>
					</a></li>
				</c:forEach>
			</ul>
			<!-- .recent-posts-widget -->
		</div>
		<!-- .widget -->

	</div>
	<!-- .sidebar -->
</div>
<!-- .one-quarter-block -->