<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><head>
<header class="header innerpages">

	<div class="container">
		<!-- <div class='fixed'>
			<div id="hideme" style="display: none;"></div>
			<audio controls style='width: 80%; height: 40px'>
				<source src="http://smp3dl.com/fileDownload/Songs/128/29571.mp3"
					type="audio/mpeg"></source>
			</audio>
			<a href="#" style="width: 100%" onclick="clickEd()"
				class="but_settings"><i class="fa fa-th-list fa-lg"></i>&nbsp;
				goToList</a>
		</div> -->
		<!-- <script type="text/javascript">
			var globalValue = 0;
			function clickEd() {
				if (globalValue == 0) {
					document.getElementById('hideme').style.display = '';
					document.getElementById('hideme').style.background = 'red';
					document.getElementById('hideme').style.height = '100px';
					document.getElementById('hideme').style.width = '100%';
					globalValue = 1;
				} else {
					document.getElementById('hideme').style.display = 'none';
					globalValue = 0;
				}

			}
		</script> -->
		<!-- Logo -->
		<div class="logo">
			<a href="index.html" id=""> <img id="MyLogo"
				src="<%=request.getContextPath()%>/resources/images/logo.png"
				height="100px" alt="">
			</a>
		</div>

		<!-- Navigation Menu -->
		<nav class="menu_main">

			<div class="navbar yamm navbar-default">

				<div class="container">
					<div class="navbar-header">
						<div class="navbar-toggle .navbar-collapse .pull-right "
							data-toggle="collapse" data-target="#navbar-collapse-1">
							<span>Menu</span>
							<button type="button">
								<i class="fa fa-bars"></i>
							</button>
						</div>
					</div>

					<div id="navbar-collapse-1"
						class="navbar-collapse collapse pull-right">

						<ul class="nav navbar-nav">

							<li class="yamm-fw"><a href="<c:url value='/home' />"
								class="active">Home</a></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">News</a>
								<ul class="dropdown-menu multilevel" role="menu">
									<li><a href="<c:url value='/recentnews' />"><i
											class="fa fa-angle-right"></i>Recent News</a></li>
									<li><a href="<c:url value='/newscategory/World' />"><i
											class="fa fa-angle-right"></i>World</a></li>
									<li><a href="<c:url value='/newscategory/India' />"><i
											class="fa fa-angle-right"></i>India</a></li>
									<li><a href="<c:url value='/newscategory/Sports' />"><i
											class="fa fa-angle-right"></i>Sports</a></li>
									<li><a href="<c:url value='/newscategory/Movies' />"><i
											class="fa fa-angle-right"></i>Movies</a></li>
									<li><a href="<c:url value='/newscategory/Economic' />"><i
											class="fa fa-angle-right"></i>Economic </a></li>
									<li><a href="<c:url value='/newscategory/Business' />"><i
											class="fa fa-angle-right"></i>Business</a></li>
									<li><a href="<c:url value='/newscategory/Financial' />"><i
											class="fa fa-angle-right"></i>Financial</a></li>
									<li><a href="<c:url value='/newscategory/Technology' />"><i
											class="fa fa-angle-right"></i>Technology</a></li>
									<li><a href="<c:url value='/updatenews' />"><i
											class="fa fa-angle-right"></i>Updated News</a></li>
									<li><a href="<c:url value='/updateAll' />"><i
											class="fa fa-angle-right"></i>Updated All</a></li>

								</ul></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">Photo</a>
								<ul class="dropdown-menu multilevel" role="menu">
									<li><a href="<c:url value='/photo' />"><i
											class="fa fa-angle-right"></i>All Categories</a></li>
									<li><a href="<c:url value='/photocategory/Actors' />"><i
											class="fa fa-angle-right"></i>Actors</a></li>
									<li><a href="<c:url value='/photocategory/Actress' />"><i
											class="fa fa-angle-right"></i>Actress</a></li>
									<li><a
										href="<c:url value='/photocategory/Movie Posters' />"><i
											class="fa fa-angle-right"></i>Movie Posters</a></li>
									<li><a href="<c:url value='/photocategory/Abstract' />"><i
											class="fa fa-angle-right"></i>Abstract</a></li>
									<li><a href="<c:url value='/photocategory/Sci-Fi' />"><i
											class="fa fa-angle-right"></i>Sci-Fi</a></li>
									<li><a href="<c:url value='/photocategory/Vehicles' />"><i
											class="fa fa-angle-right"></i>Vehicles</a></li>
									<li><a href="<c:url value='/photocategory/Flowers' />"><i
											class="fa fa-angle-right"></i>Flowers</a></li>
									<li><a href="<c:url value='/photocategory/Cartoon' />"><i
											class="fa fa-angle-right"></i>Cartoon</a></li>
									<li><a href="<c:url value='/photocategory/Background' />"><i
											class="fa fa-angle-right"></i>Background</a></li>
									<li><a href="<c:url value='/photocategory/Nature' />"><i
											class="fa fa-angle-right"></i>Nature</a></li>
									<li><a href="<c:url value='/photocategory/HD' />"><i
											class="fa fa-angle-right"></i>HD</a></li>
									<li><a href="<c:url value='/addPhoto' />"><i
											class="fa fa-angle-right"></i>Upload Images</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">Music</a>
								<ul class="dropdown-menu multilevel" role="menu">
									<li><a href="<c:url value='#' />"><i
											class="fa fa-angle-right"></i>Recent Songs</a></li>
									<li><a href="<c:url value='#' />"><i
											class="fa fa-angle-right"></i>Hit Songs</a></li>
									<li><a href="<c:url value='#' />"><i
											class="fa fa-angle-right"></i>Movie Songs</a></li>
									<li><a href="<c:url value='#' />"><i
											class="fa fa-angle-right"></i>Hindi</a></li>
									<li><a href="<c:url value='#' />"><i
											class="fa fa-angle-right"></i>Telugu</a></li>
									<li><a href="<c:url value='#' />"><i
											class="fa fa-angle-right"></i>Tamil</a></li>
									<li><a href="<c:url value='#' />"><i
											class="fa fa-angle-right"></i>Bengali </a></li>
									<li><a href="<c:url value='#' />"><i
											class="fa fa-angle-right"></i>Odia</a></li>


								</ul></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">Movie</a>
								<ul class="dropdown-menu multilevel" role="menu">
									<li><a href="<c:url value='/music' />"><i
											class="fa fa-angle-right"></i>Upcoming Movies</a></li>
									<li><a href="<c:url value='/music' />"><i
											class="fa fa-angle-right"></i>Hollywood Movies</a></li>
									<li><a href="<c:url value='/music' />"><i
											class="fa fa-angle-right"></i>Bollywood Movies</a></li>
									<li><a href="<c:url value='/music' />"><i
											class="fa fa-angle-right"></i>Telugu Movies</a></li>
									<li><a href="<c:url value='/music' />"><i
											class="fa fa-angle-right"></i>Tamil Movies</a></li>
									<li><a href="<c:url value='/music' />"><i
											class="fa fa-angle-right"></i>Bengali Movies</a></li>
									<li><a href="<c:url value='/music' />"><i
											class="fa fa-angle-right"></i>Odia Movies</a></li>
									<li><a href="<c:url value='/music' />"><i
											class="fa fa-angle-right"></i>18+ Movies</a></li>


								</ul></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">Android</a>
								<ul class="dropdown-menu multilevel" role="menu">
									<li><a href="<c:url value='/apps' />"><i
											class="fa fa-angle-right"></i>Recent Apps</a></li>
									<li><a href="<c:url value='/apps' />"><i
											class="fa fa-angle-right"></i>Paid Apps</a></li>
									<li><a href="<c:url value='/apps' />"><i
											class="fa fa-angle-right"></i>Paid Games</a></li>
									<li><a href="<c:url value='/apps' />"><i
											class="fa fa-angle-right"></i>Awsome Apps</a></li>
									<li><a href="<c:url value='/apps' />"><i
											class="fa fa-angle-right"></i>Hot Apps</a></li>
									<li><a href="<c:url value='/apps' />"><i
											class="fa fa-angle-right"></i>CategoryWise</a></li>


								</ul></li>
							<li class="dropdown"><a href="/contact"
								data-toggle="dropdown" class="dropdown-toggle">Contact</a></li>
							<li class="dropdown"><a href="/aboutus"
								data-toggle="dropdown" class="dropdown-toggle">About Us</a></li>
							<li class="dropdown"><a href="/userAdd"
								data-toggle="dropdown" class="dropdown-toggle">User</a></li>

						</ul>

					</div>
				</div>
			</div>

		</nav>
		<!-- end Navigation Menu -->

	</div>

</header>