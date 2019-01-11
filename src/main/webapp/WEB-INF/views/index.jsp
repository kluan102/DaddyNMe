<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Daddy N' Me</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link href='http://fonts.googleapis.com/css?family=Arvo:400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/styles/css/style.css">
<link rel="stylesheet" href="/styles/css/responsive.css">
<link rel="stylesheet" href="/styles/css/modify.css">
<script src="/styles/js/modernizr.js"></script>
</head>
<body>
<div class="wrapper">
  <header class="cf ">
    <div id="logo" class="indexheader"><font color="#BA5624" >DADDY N' ME</font></div>
    
  </header> 
  <!-- Log in -->
  <nav class="cf">
    <form:form id="mainForm"  method="post" action="LogInUser" modelAttribute="userAccount">
			<br>
  			<div class="form-group">
    			<label for="loginID" >Email:</label>
    			<form:input type="text"  name="email" placeholder="Enter email" path="email"/>
  			
    			<label for="Password1">Password:</label>
    			<form:input type="password" name="password" placeholder="Password" path="password"/>
  				<input type="submit" class="btn btn-primary" value="enter">
  			</div>
  			
		</form:form>
  </nav>
  
  <div id="slider" class="nivoSlider"> <img title="Caption Text" src="/styles/img/dummies/slides/01.png" alt=""> <img src="/styles/img/dummies/slides/02.png" alt=""> <img src="/styles/img/dummies/slides/03.png" alt=""></div>   
  <!-- Register -->
		<div id="main" class="cf">
			<div class="slider-wrapper">
				<form:form id="logIn" method="post" action="registerUser"
					modelAttribute="userAccount">
					
					<div class="form-group">
						    <label for="firstName">First Name</label>    
						<form:input type="text" name="firstName" placeholder="First Name"
							path="firstName" />
						<br>  
					</div>
					<div class="form-group">
						    <label for="lastName">Last Name</label>    
						<form:input type="text" name="lastName" placeholder="Last Name"
							path="lastName" />
						<br>  
					</div>
					<div class="form-group">
						    <label for="email">Email </label>    
						<form:input type="text" name="email" placeholder="Email"
							path="email" />
						 
					</div>
  	
  	
 	
  					<div class="form-group">
						    <label for="password">Password</label>    
						<form:input type="password" name="password" placeholder="Password"
							path="password" />
						 
					</div>


					<input type="submit" class="btn btn-primary" value="submit">
				</form:form>

			</div>
		</div>
		</div>
   
<script src="/styles/js/jquery.js"></script>
<script src="/styles/js/custom.js"></script>
<script src="/styles/js/superfish-1.4.8/js/hoverIntent.js"></script>
<script src="/styles/js/superfish-1.4.8/js/superfish.js"></script>
<script src="/styles/js/superfish-1.4.8/js/supersubs.js"></script>
<script src="/styles/js/css3-mediaqueries.js"></script>
<script src="/styles/js/nivoslider.js"></script>
<script src="/styles/js/tabs.js"></script>


</body>
</html>