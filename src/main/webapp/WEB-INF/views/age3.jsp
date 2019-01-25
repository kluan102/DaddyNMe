<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Age 3 Lesson</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="/styles/stylesheets/foundation.min.css">

<link rel="stylesheet" href="/styles/stylesheets/main.css">
<link rel="stylesheet" href="/styles/stylesheets/app.css">
<link rel="stylesheet" href="/styles/stylesheets/modify.css">

<link type='text/css' rel='stylesheet'
	href='/styles/stylesheets/lesson.css'>
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Open Sans" />


<script src="/styles/javascripts/modernizr.foundation.js"></script>

<link rel="icon" type="image/png" href="/styles/images/logo.png">


<!-- JS Blur (because it's cool) 
<script type='text/javascript'
	src='http://code.jquery.com/jquery-1.7.1.js'></script>
<script type='text/javascript'
	src='/styles/javascripts/blur/blur.min.js'></script> -->

<script type='text/javascript'>
	$(document).ready(function($) {

		$('.blur').blurjs({
			source : 'body',
			radius : 7,
			overlay : 'rgba(255,255,255,0.4)',
			optClass : 'blurred',
			cache : false
		});
	});
</script>

<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Ranchers'
	rel='stylesheet' type='text/css'>

<!-- IE Fix for HTML5 Tags -->
<!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

</head>
<body>

	<div class="row blur">
		<!-- page wrap -->
		<div class="twelve columns">
			<!-- page wrap -->
			<div class="three columns">
				<img src="/styles/images/logo.png" style="padding-top: 15px"
					alt="desc" />
			</div>
			<br> <br> <br>
			<div align="right" class="welcome">
				<h3>Welcome, ${loggedInUser.getFirstName()}</h3>
				<h4>
					<a href="/" class="signout">Sign out</a>
				</h4>
			</div>
			<div class="row">
				<div class="nine columns extend" style="margin-bottom: 10px">

					<ul id="menu-header" class="nav-bar horizontal">
						<li><a href="main">Home</a></li>

						<li class="has-flyout"><a href="#">Lessons</a><a href="#"
							class="flyout-toggle"></a>

							<ul class="flyout">
								<li class="has-flyout"><a href="demo">Demo</a></li>
								<li class="has-flyout"><a href="age3">Age 3</a></li>

								<li class="has-flyout"><a href="age4">Age 4</a></li>

								<li class="has-flyout"><a href="age5">Age 5</a></li>
								<li class="has-flyout"><a href="postYourOwn">Post Your
										Own</a></li>

							</ul></li>

						<li><a href="activities">Activities</a></li>
						<li><a href="meals">Meals</a></li>
						<li><a href="calendar">Calendar</a></li>
						<li><a href="chat">Chat</a></li>

					</ul>
					<script type="text/javascript">
           //<![CDATA[
           $('ul#menu-header').nav-bar();
            //]]>
            </script>

					<div style="clear: both"></div>
				</div>



			</div>
			<!-- end menu row (header) -->





			<div class="row">
				<div class="twelve columns">

					<div class="panel callout">
						<h1 class="heading_supersize">Learn With Lessons</h1>
					</div>
					<!-- questions -->
					<div id='container2'>

						<div id='title' align='center'>
							<h1>Age 3 Lesson</h1>
						</div>
						<br />

						<div id='quiz'></div>

						<div align='center'>
							<div class='button round' id='lastButton'>
								<a href='#' id='prev'>&twoheadleftarrow; Prev </a> &nbsp;&nbsp;
								<a href='#' id='next'>Next &twoheadrightarrow;</a>
							</div>

							<div class='button round' id='start'>
								<a href='#'>Start Over</a>
							</div>
						</div>

					</div>

				</div>
			</div>




			<div class="row">
				<div class="twelve columns">
					<ul id="menu3" class="footer_menu horizontal">
						<li class=""><a href="main">Home</a></li>
					</ul>
				</div>
			</div>

			<script type="text/javascript">
          //<![CDATA[
          $('ul#menu3').nav-bar();
          //]]>
          </script>

		</div>
	</div>
	<!-- end page wrap) -->
	<!-- Included JS Files (Compressed) -->


	<script src="/styles/javascripts/foundation.min.js"
		type="text/javascript"></script>
	<!-- Initialize JS Plugins -->
	<script src="/styles/javascripts/app.js" type="text/javascript">
		
	</script>
	<script src="/styles/javascripts/jquery.js"></script>
	<script type='text/javascript'
		src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>
	<script type="text/javascript" src='questions.json'></script>
	<script type='text/javascript' src='/styles/javascripts/age3.js'></script>



</body>

</html>