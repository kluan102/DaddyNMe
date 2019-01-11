<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Age 3 Lesson</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link href='http://fonts.googleapis.com/css?family=Arvo:400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/styles/css/style.css">
<link rel="stylesheet" href="/styles/css/responsive.css">
<link rel="stylesheet" href="/styles/css/modify.css">
<link type='text/css' rel='stylesheet'  href='/styles/css/lesson.css'>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open Sans"/>
<script src="/styles/js/modernizr.js"></script>

</head>
<body>
<div class="wrapper">
  <header class="cf ">
    <div id="logo" class="indexheader"><font color="#BA5624">DADDY N' ME</font></div>
    
  </header>
  <nav class="cf">
    <ul id="nav" class="sf-menu">
      
      <li ><a href="main">Home</a></li>
      
      <li><a href="#" onmouseover="mouseOver()" >Lessons</a>
        <ul id="lessonHover">
          <li><a href="age3">Age 3</a></li>
          <li><a href="page-typography.html">Age 4</a></li>
          <li><a href="page-elements.html">Age 5</a></li>
        </ul>
      </li>
      <li><a href="work.html">Activities</a></li>
      <li><a href="contact.html">Meals</a></li>
      <li><a href="#">Calendar</a></li>
      <li><a href="#">Chat</a></li>
    </ul>
  </nav>
  <br>

		<!-- questions -->
				<div id='container2'>
			<div id='title'>
				<h1>Age 3 Lesson</h1>
			</div>
   			<br/>
  			<div id='quiz'></div>
    		<div class='button' id='next'><a href='#'>Next</a></div>
    		<div class='button' id='prev'><a href='#'>Prev</a></div>
    		<div class='button' id='start'> <a href='#'>Start Over</a></div>
    		<!-- <button class='' id='next'>Next</a></button>
    		<button class='' id='prev'>Prev</a></button>
    		<button class='' id='start'> Start Over</a></button> -->
    	</div>
		<br>
		
</div>
<script src="/styles/js/jquery.js"></script>
<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>
<script type="text/javascript" src='questions.json'></script>
<script type='text/javascript' src='/styles/js/age3.js'></script>
<script src="/styles/js/custom.js"></script>
<script src="/styles/js/superfish-1.4.8/js/hoverIntent.js"></script>
<script src="/styles/js/superfish-1.4.8/js/superfish.js"></script>
<script src="/styles/js/superfish-1.4.8/js/supersubs.js"></script>
<script src="/styles/js/css3-mediaqueries.js"></script>
<script src="/styles/js/nivoslider.js"></script>
<script src="/styles/js/tabs.js"></script>

<script type="text/javascript">
function mouseOver() {
	  document.getElementById("lessonHover").style.visibility = "visible";
	  document.getElementById("lessonHover").style.display = "block";
	}
</script>


</body>

</html>