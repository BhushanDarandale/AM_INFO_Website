<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<div class="one-quarter-block" role="complementary">
	<div class="sidebar">

		<!-- .widget -->
		<div class="widget">
			<h3 class="widget-title">Categories</h3>
			<ul>
				<li><a style="cursor: pointer;" onclick="getWorldNews()">World</a></li>
				<li><a style="cursor: pointer;" onclick="getIndiaNews()">India</a></li>
				<li><a style="cursor: pointer;" onclick="getSportsNews()">Sports</a></li>
				<li><a style="cursor: pointer;"
					onclick="getEntertainmentNews()">Entertainment</a></li>
				<li><a style="cursor: pointer;" onclick="getMovieNews()">Movie</a></li>
				<li><a style="cursor: pointer;" onclick="getTechNews()">Technology</a></li>
				<li><a style="cursor: pointer;" onclick="getBusinessNews()">Business</a></li>
			</ul>
		</div>
		<!-- .widget -->
		<!-- .search.widget -->
		<div class="widget" style="line-height: 1;">
			<h4 class="widget-title">Cricket News</h4>
			<ul id='sportsnewsapi'>
			</ul>
			<!-- .recent-posts-widget -->
		</div>
	</div>
	<!-- .sidebar -->
</div>

<div class="three-quarters-block">
	<div class="content" id="newsapi">
		<c:forEach items="${News }" var="nws">
			<article class="post hentry">
				<header class="entry-header">
					<h2 class="entry-title">${nws.title }<a href="${nws.url }"
							target="_blank"><kbd>read here</kbd></a>
					</h2>
					<div class="entry-meta">
						<span class="post-date"> <span class="updated">
								Published At - ${nws.date } | PoweredBy - NewsApi.org | Source -
								${nws.source }</span>
						</span>
					</div>
				</header>
				<div class="entry-image">
					<img src="${nws.image }">
				</div>
				<div class="entry-content">
					<p>${nws.description }<a href="${nws.url }" target="_blank"><kbd>read
								here</kbd></a>
					</p>
				</div>
			</article>
		</c:forEach>
	</div>
	<%-- 
	<div class="content" align="center" id="loading-news">
		<img alt=""
			src="<%=request.getContextPath()%>/resources/resume_template/images/myfiles/loading.gif">
	</div> --%>
</div>
