<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Daddy N' Me</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<!-- Slider portion -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
.mySlides {
	display: none;
}
</style>
<!-- Slider portion ends-->

<link rel="stylesheet" href="/styles/stylesheets/foundation.min.css">

<link rel="stylesheet" href="/styles/stylesheets/main.css">
<link rel="stylesheet" href="/styles/stylesheets/app.css">
<link rel="stylesheet" href="/styles/stylesheets/modify.css">
<script src="/styles/javascripts/modernizr.foundation.js"></script>

<link rel="icon" 
     type="image/png" 
     href="/styles/images/logo.png">


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



			<div class="row">
				<div class="three columns">
					<img src="/styles/images/logo.png" style="padding-top: 15px"
						alt="desc" />
				</div>
				<br>
				<div align="right" class="nine">
					<form:form id="mainForm" method="post" action="LogInUser"
						modelAttribute="userAccount">

						<div class="form-group">

							<form:input type="text" class="signup" name="email"
								placeholder="Enter email" path="email" />


							<form:input type="password" class="signup" name="password"
								placeholder="Enter password" path="password" />
							<input type="submit" class="button round" value="Login"><br>
							Not a member?
							<!-- Trigger/Open The Modal -->
							<div
								onclick="document.getElementById('id01').style.display='block'">
								<u>Register</u>
							</div>
						</div>

					</form:form>
				</div>

				<div class="nine columns" style="margin-bottom: 10px" align="right">



					<script type="text/javascript">
						//<![CDATA[
						$('ul#menu-header').nav - bar();
						//]]>
					</script>

					<div style="clear: both"></div>
				</div>



			</div>
			<!-- end menu row (header) -->
			<div class="row">
				<div class="twelve columns">

					<div class="panel callout">
						<h1 class="heading_supersize">Welcome to Daddy 'N' Me</h1>
					</div>

				</div>
			</div>

			<div class="row">
				<div class="twelve columns">
					<!-- slider-->
					<div class="w3-content w3-section" style="max-width: 950px">
						<img class="mySlides" src="/styles/images/indexslider/01.png"
							style="width: 100%"> <img class="mySlides"
							src="/styles/images/indexslider/02.png" style="width: 100%">
						<img class="mySlides" src="/styles/images/indexslider/03.png"
							style="width: 100%">
					</div>
					<!-- slider ends-->


				</div>
			</div>







			<div class="row">
				<div class="twelve columns">
					<ul id="menu3" class="footer_menu horizontal">
						<li class=""><a href="/">Home</a></li>
					</ul>
				</div>
			</div>

			<script type="text/javascript">
				//<![CDATA[
				$('ul#menu3').nav - bar();
				//]]>
			</script>

		</div>
	</div>

	<!-- The Modal -->

	<div id="myModal" class="modal ">

		<!-- Modal content -->

		<div id="id01" class="w3-modal">
			<div class="w3-modal-content">
				<div class="w3-container">
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="w3-button w3-display-topright">&times;</span>
					<!--  Registration -->
					<table class="otherTables" style="width: 100%">
						<tr>
							<th colspan="2"><h2>Registration</h2></th>
						</tr>
						<tr>
							<td style="width: 50%"><form:form id="logIn" method="post"
									action="registerUser" modelAttribute="userAccount">

									<label for="firstName">First Name</label>    
										<form:input type="text" name="firstName"
										placeholder="First Name" path="firstName"
										class="registrationInput" />
									<br>  
										<label for="lastName">Last Name</label>    
										<form:input type="text" name="lastName"
										placeholder="Last Name" path="lastName"
										class="registrationInput" />
									<br>  
										<label for="email">Email </label>    
										<form:input type="text" name="email" placeholder="Email"
										path="email" class="registrationInput" />
									<br>
									<label for="password">Password</label>    
										<form:input type="password" name="password"
										placeholder="Password" path="password"
										class="registrationInput" />
									<br>
									<div align="center">
										<input type="submit" class="button round" value="submit">
									</div>
								</form:form></td>
							<td class="tdImages"><img src="/styles/images/logo.png"
								alt="desc" class="registerImages" width="500px" /></td>
						</tr>

					</table>
					<!--  Registration Ends -->
				</div>
			</div>
		</div>



	</div>


	<!-- end page wrap) -->
	<!-- Included JS Files (Compressed) -->
	<script src="/styles/javascripts/foundation.min.js"
		type="text/javascript">
		
	</script>
	<!-- Initialize JS Plugins -->
	<script src="/styles/javascripts/app.js" type="text/javascript">
		
	</script>


	<!-- Slider -->
	<script>
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 2000); // Change image every 2 seconds
		}
	</script>
	<!-- Slider ends-->

</body>

</html>