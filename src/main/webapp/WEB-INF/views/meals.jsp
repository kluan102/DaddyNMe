<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meals</title>
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

<link rel="stylesheet" href="/styles/stylesheets/otherImages.css">



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
						<h1 class="heading_supersize">Meals</h1>
					</div>

				</div>
			</div>
			<!--  Meals Begins-->
			<div class="row">

				<div class="four columns">
					<h4>Stir-Fried Chicken in Lettuce Cups</h4>
					<div class="zoom"
						onclick="document.getElementById('other1').style.display='block'">
						<img src="/styles/images/Meals/lettuceCup.png" class="otherImages"
							alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Friday Night Pizza Party Lollipops</h4>
					<div class="zoom"
						onclick="document.getElementById('other2').style.display='block'">
						<img src="/styles/images/Meals/lollipopPizza.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Matzah Pizzas</h4>
					<br>
					<div class="zoom"
						onclick="document.getElementById('other3').style.display='block'">
						<img src="/styles/images/Meals/matzahPizza.png"
							class="otherImages" alt="desc" />
					</div>
				</div>
			</div>
			<br>

			<div class="row">
				<div class="four columns">
					<h4>Pineapple Mango Salsa</h4>
					<div class="zoom"
						onclick="document.getElementById('other4').style.display='block'">
						<img src="/styles/images/Meals/PineappleMangoSalsa.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Shaved Vegetable Salad</h4>
					<div class="zoom"
						onclick="document.getElementById('other5').style.display='block'">
						<img src="/styles/images/Meals/ShavedVegetableSalad.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Smoked Salmon Scramble</h4>

					<div class="zoom"
						onclick="document.getElementById('other6').style.display='block'">
						<img src="/styles/images/Meals/smokeSalmonScramble.png"
							class="otherImages" alt="desc" />
					</div>
				</div>
			</div>
			<br>

			<div class="row">
				<div class="four columns">
					<h4>Spaghetti and Turkey Meatballs</h4>
					<div class="zoom"
						onclick="document.getElementById('other7').style.display='block'">
						<img src="/styles/images/Meals/spaghettiTurkeyMeatballs.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Uncrustables</h4>
					<div class="zoom"
						onclick="document.getElementById('other8').style.display='block'">
						<img src="/styles/images/Meals/uncrustable.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Vegetarian Lo Mein</h4>

					<div class="zoom"
						onclick="document.getElementById('other9').style.display='block'">
						<img src="/styles/images/Meals/VegetarianLoMein.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

			</div>

			<!--  Meals Ends-->


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


		</div>


		<!-- Modal #1 -->

		<div id="myModal" class="modal ">

			<!-- Modal content -->
			<div id="other1" class="w3-modal">
				<div class="w3-modal-content">
					<div class="w3-container">

						<!--  First Content -->
						<table class="otherTables" style="width: 100%">
							<tr>
								<th colspan="2"><h1>Stir-Fried Chicken in Lettuce Cups</h1>
									<br>
									<h4>Prep Time: 5 mins &nbsp;&nbsp;&nbsp; Cook Time: 15
										mins</h4></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>Ingredients</h2>
									<ul>
										<li>1/4 Cup Low Sodium Soy Sauce, tamari, or liquid
											aminos</li>
										<li>2 Tbsp honey</li>
										<li>2 Tbsp Cilantro, minced</li>
										<li>1 Tbsp oil</li>
										<li>1 small onion, diced</li>
										<li>1 Bell Pepper, red, orange or yellow</li>
										<li>1 Garlic Clove, minced</li>
										<li>1 Tsp ginger, minced</li>
										<li>1 pound ground chicken or turkey</li>
										<li>1/4 Tsp kosher salt</li>
										<li>8 Bibb or Iceberg Lettuce “Cups”</li>
									</ul> <!-- Recipes -->
									<h2>Preparation</h2>
									<ol>
										<li>Combine soy sauce, honey, and cilantro in a bowl and
											set aside.</li>
										<li>Using a large saute pan, cook the onion in 1 tbsp of
											oil over medium heat for 2 minutes.</li>
										<li>Add the bell pepper and cook an additional 2 minutes.</li>
										<li>Add the garlic and ginger and cook for 1 minute then
											add the chicken or turkey to the pan and saute for an
											additional 7 minutes or until cooked through.</li>
										<li>Stir in the soy sauce mixture, salt and cook for 2
											minute or until juices evaporate.</li>
										<li>Serve in lettuce cups (to eat then just roll the
											lettuce around the stir fried chicken and eat them like a
											burrito).</li>
									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other1').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Meals/lettuceCup.png" width="560px" /></td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>

		<!-- Modal #2 -->

		<div id="myModal" class="modal ">

			<!-- Modal content -->
			<div id="other2" class="w3-modal">
				<div class="w3-modal-content">
					<div class="w3-container">

						<!--  First Content -->
						<table class="otherTables" style="width: 100%">
							<tr>
								<th colspan="2"><h1>Friday Night Pizza Party Lollipops
									</h1> <br>
									<h4>Prep Time: 0 mins &nbsp;&nbsp;&nbsp; Cook Time: 0 mins</h4>
								</th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>Ingredients</h2>
									<ul>
										<li>1 pound pizza dough</li>
										<li>1/2 pound fontina cheese, grated</li>
										<li>16 wooden popsicle sticks</li>
										<li>16 pepperoni slices, or other desired toppings</li>
										<li>pizza sauce</li>
									</ul> <!-- Recipes -->
									<h2>Preparation</h2>
									<ol>
										<li>Preheat the oven to 450F.</li>
										<li>Divide the pizza dough into 16 pieces and roll each
											into a ball.</li>
										<li>Insert a wooden popsicle stick into the center of
											each pizza dough ball, flatten into a disk, and place on a
											parchment paper lined baking sheet.</li>
										<li>Sprinkle grated cheese onto each pizza lollipop, top
											with a pepperoni slice or other desired toppings, and extra
											cheese.</li>
										<li>Place the pizza lollipops in the oven and bake for
											25-30 minutes, until the cheese is melted and the pizza dough
											is golden brown.</li>

									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other2').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Meals/lollipopPizza.png" width="560px" /></td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>

		<!-- Modal #3 -->

		<div id="myModal" class="modal ">

			<!-- Modal content -->
			<div id="other3" class="w3-modal">
				<div class="w3-modal-content">
					<div class="w3-container">

						<!--  First Content -->
						<table class="otherTables" style="width: 100%">
							<tr>
								<th colspan="2"><h1>Matzah Pizzas</h1> <br>
									<h4>Prep Time: 2 mins &nbsp;&nbsp;&nbsp; Cook Time: 5 mins</h4>
								</th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>Ingredients</h2>
									<ul>
										<li>4 sheets matzah</li>
										<li>4 tablespoons pizza sauce</li>
										<li>1/2 cup shredded mozzarella cheese</li>
									</ul> <!-- Recipes -->
									<h2>Preparation</h2>
									<ol>
										<li>Preheat the oven to 400F.</li>
										<li>Place the matzah sheets on a baking tray and top each
											with 1 tablespoon of sauce and 2 tablespoons of shredded
											cheese.</li>
										<li>Bake about 5 minutes, until the cheese is melted.</li>

									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other3').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Meals/matzahPizza.png" width="560px" /></td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>

		<!-- Modal #4 -->

		<div id="myModal" class="modal ">

			<!-- Modal content -->
			<div id="other4" class="w3-modal">
				<div class="w3-modal-content">
					<div class="w3-container">

						<!--  First Content -->
						<table class="otherTables" style="width: 100%">
							<tr>
								<th colspan="2"><h1>Pineapple Mango Salsa</h1> <br>
									<h4>Prep Time: 4 mins &nbsp;&nbsp;&nbsp; Cook Time: 0 mins</h4>
								</th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>Ingredients</h2>
									<ul>
										<li>1 cup pineapple, peeled & diced</li>
										<li>1 mango, peeled and diced</li>
										<li>1 red bell pepper, diced</li>
										<li>1/2 small red onion, diced</li>
										<li>2 tablespoons cilantro, chopped</li>
										<li>juice of 1 lime</li>
										<li>1/2 teaspoon kosher salt</li>
										<li>grilled or broiled fish (Tilapia, Halibut, Opah, etc)</li>
									</ul> <!-- Recipes -->
									<h2>Preparation</h2>
									<ol>
										<li>Place all ingredients in a bowl and combine.</li>
										<li>Serve over fish or with tortilla chips.</li>


									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other4').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Meals/PineappleMangoSalsa.png"
									width="560px" /></td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>

		<!-- Modal #5 -->

		<div id="myModal" class="modal ">

			<!-- Modal content -->
			<div id="other5" class="w3-modal">
				<div class="w3-modal-content">
					<div class="w3-container">

						<!--  First Content -->
						<table class="otherTables" style="width: 100%">
							<tr>
								<th colspan="2"><h1>Shaved Vegetable Salad</h1> <br>
									<h4>Prep Time: 5 mins &nbsp;&nbsp;&nbsp; Cook Time: 0 mins</h4>
								</th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>Ingredients</h2>
									<ul>
										<li>Use any combination of these vegetables:</li>
										<li>fennel</li>
										<li>cucumbers</li>
										<li>carrots (any color), peeled</li>
										<li>celery</li>
										<li>radishes (any type)</li>
										<li>asparagus</li>
										<li>beets (any color), peeled</li>
										<li>artichoke heart, raw</li>
										<li>zucchini</li>
										<li>yellow or patty pan squash</li>
										<li>cabbage</li>
										<li>kohlrabi</li>
										<li>turnips</li>
										<li>parsnips</li>
										<li>celeriac</li>
										<li>rutabaga</li>
									</ul> <!-- Recipes -->
									<h2>Preparation</h2>
									<ol>
										<li>Using a mandoline, thinly slice vegetables and place
											on a plate or platter.</li>
										<li>Lightly drizzle with olive oil, a squeeze of lemon
											juice and sprinkle with kosher or maldon salt.</li>


									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other5').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Meals/ShavedVegetableSalad.png"
									width="560px" /></td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>

		<!-- Modal #6 -->

		<div id="myModal" class="modal ">

			<!-- Modal content -->
			<div id="other6" class="w3-modal">
				<div class="w3-modal-content">
					<div class="w3-container">

						<!--  First Content -->
						<table class="otherTables" style="width: 100%">
							<tr>
								<th colspan="2"><h1>Smoked Salmon Scramble</h1> <br>
									<h4>Prep Time: 2 mins &nbsp;&nbsp;&nbsp; Cook Time: 5 mins</h4>
								</th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>Ingredients</h2>
									<ul>
										<li>8 large eggs</li>
										<li>4 chives chopped</li>
										<li>1/2 teaspoon kosher salt</li>
										<li>2 teaspoons canola oil or butter</li>
										<li>4 pieces thinly sliced smoked salmon, chopped</li>

									</ul> <!-- Recipes -->
									<h2>Preparation</h2>
									<ol>
										<li>In a bow, whisk together the eggs, chives, and salt.</li>
										<li>Heat the oil or butter in a sauté pan over medium
											heat.</li>
										<li>Add the egg mixture to the pan, and cook, stirring
											occasionally until almost set, about 4 minutes.</li>
										<li>Stir in the salmon and continue to cook for 1 minute
											longer.</li>


									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other6').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Meals/smokeSalmonScramble.png"
									width="560px" /></td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>

		<!-- Modal #7 -->

		<div id="myModal" class="modal ">

			<!-- Modal content -->
			<div id="other7" class="w3-modal">
				<div class="w3-modal-content">
					<div class="w3-container">

						<!--  First Content -->
						<table class="otherTables" style="width: 100%">
							<tr>
								<th colspan="2"><h1>Spaghetti and Turkey Meatballs</h1> <br>
									<h4>Prep Time: 10 mins &nbsp;&nbsp;&nbsp; Cook Time: 25
										mins</h4></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>Ingredients</h2> 
									<h4>Meatballs:</h4>
									<ul>

										<li>1 pound lean or white meat ground turkey</li>
										<li>1 small onion, diced</li>
										<li>2 teaspoons italian seasoning</li>
										<li>1 teaspoon garlic powder</li>
										<li>1/4 cup grated parmesan cheese</li>
										<li>1/2 cup bread crumbs</li>
										<li>1/2 teaspoon kosher salt</li>
										<li>1 large eggs, whisked</li>
										<li>1 tablespoon olive oil</li>

									</ul> 
									<h4>Sauce:</h4>
									<ul>

										<li>1 small onion, diced</li>
										<li>3 garlic cloves, minced</li>
										<li>1 28-ounce can diced tomatoes</li>
										<li>2 carrots, peeled and diced</li>
										<li>1 tablespoon olive oil</li>
										<li>2 teaspoons italian seasoning</li>
										<li>1 teaspoon kosher salt</li>
										<li>1 pound spaghetti noodles</li>
									</ul> <br>
									<!-- Recipes -->
									<h2>Preparation</h2> 
									<h4>Meatballs:</h4>
									<ol>
										<li>Place the first 8 ingredients in a bowl and stir to
											thoroughly combine with a spoon or your hands.</li>
										<li>Using wet hands, take a heaping tablespoon of mixture
											and form into balls placing on a plate until ready to cook.</li>
										<li>Heat oil in a sauté pan, add meatballs in batches and
											cook on each side for 1 minute for a total 4 minutes. Set
											meatballs aside. The meatballs will not be finished cooking,
											and will continue to cook in the sauce.</li>


									</ol> 
									<h4>Sauce:</h4>
									<ol>
										<li>Heat a large sauce pan over medium high heat. Add
											onion and garlic and sauté for 2 minutes. Add carrots and
											sauté for another minute.</li>
										<li>Add tomatoes, Italian seasoning and salt and simmer
											for 10 minutes. Add par-cooked meatballs and simmer for
											another 5-6 minutes.</li>
										<li>While meatballs cook, heat water and 2 tablespoons of
											salt in a large pot and cook spaghetti according to package
											directions.</li>
										<li>When pasta is al dente, drain, return to it’s pot and
											toss in meatballs and sauce. Top with parmesan and serve</li>
									</ol> <br>
									<div align="center">
										<span
											onclick="document.getElementById('other7').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Meals/spaghettiTurkeyMeatballs.png"
									width="560px" /></td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>

		<!-- Modal #8 -->

		<div id="myModal" class="modal ">

			<!-- Modal content -->
			<div id="other8" class="w3-modal">
				<div class="w3-modal-content">
					<div class="w3-container">

						<!--  First Content -->
						<table class="otherTables" style="width: 100%">
							<tr>
								<th colspan="2"><h1>Uncrustables</h1> <br>
									<h4>Prep Time: 10 mins &nbsp;&nbsp;&nbsp; Cook Time: 0
										mins</h4></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>Ingredients</h2>
									<ul>
										<li>8 slices Sandwich Bread</li>
										<li>peanut butter</li>
										<li>fruit preserves</li>

									</ul> <!-- Recipes -->
									<h2>Preparation</h2>
									<ol>
										<li>Spread a piece of sandwich bread with peanut butter,
											and another with fruit preserves.</li>
										<li>Sandwich the two pieces together and cut with a
											cookie cutter into a fun shape.</li>


									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other8').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Meals/uncrustable.png" width="560px" /></td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>

		<!-- Modal #9 -->

		<div id="myModal" class="modal ">

			<!-- Modal content -->
			<div id="other9" class="w3-modal">
				<div class="w3-modal-content">
					<div class="w3-container">

						<!--  First Content -->
						<table class="otherTables" style="width: 100%">
							<tr>
								<th colspan="2"><h1>Vegetarian Lo Mein</h1> <br>
									<h4>Prep Time: 10 mins &nbsp;&nbsp;&nbsp; Cook Time: 7
										mins</h4></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>Ingredients</h2>
									<ul>
										<li>8 ounce package lo mein or ramen noodles</li>
										<li>1/4 cup low sodium soy sauce</li>
										<li>2 teaspoons brown rice syrup, or sugar</li>
										<li>1 tablespoon Toasted Sesame Oil</li>
										<li>1 tablespoon Rice Vinegar</li>
										<li>3 teaspoons minced ginger, divided</li>
										<li>1/2 teaspoon sriracha sauce, optional</li>
										<li>2 tablespoons canola oil</li>
										<li>2 garlic cloves, minced</li>
										<li>1 1/2 cups sliced shiitake mushrooms</li>
										<li>1 red bell pepper, thinly sliced</li>
										<li>2 carrots, thinly sliced</li>
										<li>1/2 cup snow peas, sliced</li>
										<li>3 cups baby spinach, roughly chopped</li>
										<li>1 cup bean sprouts</li>
										<li>2 scallions, chopped</li>
									</ul> <!-- Recipes -->
									<h2>Preparation</h2>
									<ol>
										<li>Cook the noodles according to the package directions.
											Drain, rinse, and set aside.</li>
										<li>In a small bowl, whisk to combine the soy sauce,
											brown rice syrup, sesame oil, rice vinegar, 1 teaspoon
											ginger, and sriracha. Set aside.</li>
										<li>Heat the oil in a large skillet or wok over
											medium-high heat. Add the garlic, remaining ginger, bell
											peppers, carrots, and mushrooms. Cook until tender, stirring
											frequently until tender, about 3 minutes.</li>
										<li>Add the snow peas, spinach, and bean sprouts and cook
											until the spinach is wilted, about 2-3 minutes.</li>
										<li>Stir in the noodles, soy sauce mixture and scallions.
											Gently toss to combine.</li>

									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other9').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Meals/VegetarianLoMein.png" width="560px" /></td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>

		<script src="/styles/javascripts/foundation.min.js"
			type="text/javascript"></script>
		<!-- Initialize JS Plugins -->
		<script src="/styles/javascripts/app.js" type="text/javascript">
			
		</script>
		<script src="/styles/javascripts/jquery.js"></script>
		<script type='text/javascript'
			src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>
		<script type="text/javascript" src='questions.json'></script>
</body>

</html>