
	function getNews(flickerAPI) {

		$.getJSON(flickerAPI, {})
		.done(
		function(data) {
			$.each(data.articles,function(i, item) {
				if (item.urlToImage != null) {
					var article = document.createElement("article");
					article.className = "post hentry";
					article.innerHTML = '<header class="entry-header">'
										+'<h2 class="entry-title">'+item.title+' <a href="'
										+item.url+'" target="_blank"><kbd>read here</kbd></a></h2>'
										+'<div class="entry-meta">'
										+'<span class="post-date"> <span class="updated">'
										+'Published At - '+item.publishedAt+' | PoweredBy - NewsApi.org '
										+' | Source - '+item.source.name+'</span>'
										+'</span></div></header>'
										+'<div class="entry-image">'
										+'<img src='+item.urlToImage +' alt="'+item.title+'">'
										+'</div>'
										+'<div class="entry-content">'
										+'<p>' +item.description+'<a href="' +item.url+'" target="_blank"><kbd>read here</kbd></a></p>'
										+'</div>';
					document.getElementById("newsapi").append(article)
				}
			});
		});
	}
	
	function getCricketNews(flickerAPI) {

		$.getJSON(flickerAPI, {})
		.done(
		function(data) {
			$.each(data.articles,function(i, item) {
				if (item.urlToImage != null) {
					var article = document.createElement("li");
					article.className = "recent-post";
					article.innerHTML = '<a href="' +item.url+'" target="_blank">'
									+'<span class="recent-post-thumbnail">'
									+'<img src="'+item.urlToImage +'" alt="Source Arun Maharana" style="width:100%; height:100px;">'
									+'</span><span class="recent-post-title" style="font-size:12px">'+item.title+'</span></a>';
					document.getElementById("sportsnewsapi").append(article)
				}
			});
		});
	}
	/*<li class="recent-post"><a href="article.html"
		title="Lorem ipsum dolar" rel="bookmark"> <span
			class="recent-post-title"> Lorem ipsum dolar </span>
	</a></li>*/
/*
 * <article class="post hentry"> <header class="entry-header">
 * <h2 class="entry-title">Blog Post Title</h2> <div class="entry-meta"> <span
 * class="post-date"> <span class="updated">12th February 2015</span> </span>
 * </div> </header> <div class="entry-image"> <img
 * src="http://dummyimage.com/800x250/f3f3f3/d1d1d1.jpg&text=Featured+Image"
 * alt="Blog Post"> </div> <div class="entry-content">
 * 
 * <p>Lorem ipsum dolor sit amet, orci a faucibus, ante curabitur augue ornare
 * nulla facilisi bibendum, tortor felis quam rutrum velit, pretium posuere
 * placerat. Vitae ut nulla eget. Lacus sociis, eget dolor metus nam nunc leo.
 * Tempor eget donec officia. Luctus nullam purus urna iaculis, integer dui
 * risus, ultricies lacinia aliquet.</p> </div> </article>
 */