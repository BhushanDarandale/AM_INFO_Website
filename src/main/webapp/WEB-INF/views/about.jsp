<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="content">

	<div class="entry-content">

		<div class="half-block">

			<div class="contact-form">


				<p>
					If you have any requirement of Website design, Core Java Concepts,
					Web Development etc. We'll
					try to get back you in 24 hrs.<br>The best way to get in touch with us
					is sending an email. <b>arunmaharana@hotmail.com</b>
				</p>
				<p>Please share your recommendations, or send any error report
					to us. Drop a message to us .</p>
				<form action="#" method="post" enctype="multipart/form-data">

					<input name="name" type="text" required="required"
						placeholder="Your Name"> <input name="email" type="email"
						required="required" placeholder="Your Email">
					<textarea name="message" cols="20" rows="5" required="required"
						placeholder="Message"></textarea>
					<input id="submit" class="button" name="submit" type="submit"
						value="Submit">

				</form>

			</div>
			<!-- .contact-form -->

		</div>
		<!-- .half-block -->

		<div class="half-block" role="complementary">

			<div id="map" style="-webkit-filter: drop-shadow(8px 8px 12px black)"></div>

		</div>
		<!-- .half-block -->

	</div>
	<!-- .entry-content -->

</div>
<!-- .content -->
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf1aE0F53ArHGA2bUbiEA9LwwfN_QTkaU&callback=loadMap">
    </script>
<script>
	function loadMap() {

		var mapOptions = {
			center : new google.maps.LatLng('18.5204', '73.8567'),
			zoom : 10,
			scrollwheel : false
		}

		var map = new google.maps.Map(document.getElementById('map'),
				mapOptions);

		var marker = new google.maps.Marker({
			position : new google.maps.LatLng('18.5204', '73.8567'),
			map : map,
			draggable : false,
			animation : google.maps.Animation.DROP,
		});
	}
</script>