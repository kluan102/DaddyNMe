<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Administration</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
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
			<div class="three columns">
				<img src="/styles/images/logo.png" style="padding-top: 15px"
					alt="desc" />
			</div>
			<br>
			<br>
			<br>
			<div align="right" class="welcome">
				<h3>Welcome back, ${loggedInUser.getFirstName()}</h3>
				<h4>
					<a href="/" class="signout">Sign out</a>
				</h4>
			</div>



			<br>

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
				<h1 class="heading_supersize">Admin Page</h1>
			</div>
			<!-- review questions -->
			<div class="container3 " align="center">
			
					<c:if test="${fn:length(postedQuestions) >= 1}">
						<table class="uk-table uk-table-hover uk-table-divider">
							<thead>
								<tr>
									<th>Age</th>
									<th>Question</th>
									<th>Answer</th>
									<th>Approve?</th>
								</tr>
							</thead>
							<c:forEach var="pq" items="${postedQuestions}">
								<tbody align="center">
									<tr>
										<td><c:out value="${pq.age}" /></td>
										<td><c:out value="${pq.question}" /></td>
										<td><c:out value="${pq.answers}" /></td>
										<td ><a
											href="approve?id=${pq.postedQuestionId}"><div>&#10003;</div></a>
											<a href="decline?id=${pq.postedQuestionId}"><div>&#65794;</div></a>
										</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>
					</c:if>
					<c:if test="${(!(fn:length(postedQuestions) >= 1))}">
					<h3>${questionMsg}</h3> 
				</c:if>
			</div>


			<!-- end review questions -->
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
		$('ul#menu3').nav - bar();
		//]]>
	</script>


	<!-- end page wrap) -->
	<!-- Included JS Files (Compressed) -->


	<script src="/styles/javascripts/foundation.min.js"
		type="text/javascript">
		
	</script>
	<!-- Initialize JS Plugins -->
	<script src="/styles/javascripts/app.js" type="text/javascript">
		
	</script>



</body>

</html>