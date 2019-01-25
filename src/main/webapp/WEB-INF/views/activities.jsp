<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Activities</title>
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
						<h1 class="heading_supersize">Explore with Activities</h1>
					</div>

				</div>
			</div>
			<!--  Meals Begins-->
			<div class="row">

				<div class="four columns">
					<h4>Make an Alphabet Book</h4>
					<div class="zoom"
						onclick="document.getElementById('other1').style.display='block'">
						<img src="/styles/images/Activities/AlphabetBook.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Play Animal Exercises</h4>
					<div class="zoom"
						onclick="document.getElementById('other2').style.display='block'">
						<img src="/styles/images/Activities/AnimalExercise.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Homemade Letter Bingo</h4>
					<div class="zoom"
						onclick="document.getElementById('other3').style.display='block'">
						<img src="/styles/images/Activities/BingoLetters.png"
							class="otherImages" alt="desc" />
					</div>
				</div>
			</div>
			<br>

			<div class="row">
				<div class="four columns">
					<h4>Learning Opposites</h4>
					<div class="zoom"
						onclick="document.getElementById('other4').style.display='block'">
						<img src="/styles/images/Activities/LearningOpposite.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>DIY Memory Matching Game!</h4>
					<div class="zoom"
						onclick="document.getElementById('other5').style.display='block'">
						<img src="/styles/images/Activities/MemoryMatching.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Me On TV!</h4>

					<div class="zoom"
						onclick="document.getElementById('other6').style.display='block'">
						<img src="/styles/images/Activities/MeOnTv.png"
							class="otherImages" alt="desc" />
					</div>
				</div>
			</div>
			<br>

			<div class="row">
				<div class="four columns">
					<h4>New Year's Recycled Noisemakers</h4>
					<div class="zoom"
						onclick="document.getElementById('other7').style.display='block'">
						<img src="/styles/images/Activities/NewYearNoiseMakers.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Make Rice Pictures</h4>
					<div class="zoom"
						onclick="document.getElementById('other8').style.display='block'">
						<img src="/styles/images/Activities/RicePicture.png"
							class="otherImages" alt="desc" />
					</div>
				</div>

				<div class="four columns">
					<h4>Plan a Treasure Hunt</h4>

					<div class="zoom"
						onclick="document.getElementById('other9').style.display='block'">
						<img src="/styles/images/Activities/TreasureHunt.png"
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
								<th colspan="2"><h1>Make an Alphabet Book</h1></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>What You Need:</h2>
									<ul>
										<li>Construction paper</li>
										<li>Glue stick</li>
										<li>Markers</li>
										<li>Magazines, newspapers, stickers, and other materials
											with pictures</li>
										<li>Binding material (a hole punch and yarn, staples, or
											whatever else you choose)</li>

									</ul> <!-- Recipes -->
									<h2>What You Do:</h2>
									<ol>
										<li>Ask your child to pick 26 pages of construction
											paper. Take a marker and write one letter of the alphabet at
											the top of each page.</li>
										<li>It’s time to work that alphabet! Give your child a
											stack of newspapers, photos, magazines, and anything else
											with pictures that you don’t mind cutting up. Start with the
											letter A and ask your child to go through the gathered
											materials in search of words that begin with that letter:
											apples from the grocery store ad, Aunt Thelma’s picture from
											last Easter, an alligator from a magazine, an ant sticker. If
											your child needs help, you can make the sound the letter
											makes, to help her in their quest. When they make a mistake,
											gently correct them, but without criticizing. For example,
											“That word starts with 'eh,' and the letter A sounds like
											'ah.'"</li>
										<li>After your child has collected all of the images, ask
											them to help you label each one. Your child can tell you what
											the picture is and you can write the word below. Older
											preschoolers might want to take a crack at it themselves,
											writing the words with a little help from mom or dad.</li>
										<li>Repeat this process with each letter of the alphabet.
											For tougher letters, like X, you may need to go to the
											computer and print out some pictures to have on hand..</li>
										<li>Once you’ve finished with all the letters, stack the
											pages in order, from A to Z. Let your child decide on a title
											— for example, "Eli's Alphabet Book" — and then write this on
											a cover page, with a byline beneath. Let your child decorate
											to their heart’s content.</li>
										<li>You’ve reached the final stretch! Now it’s time to
											bind your book. The fastest and easiest way is to punch holes
											in all of the pages and use yarn to tie the book together. If
											you don’t have yarn or a hole punch, you can use staples. For
											a spill-proof version, take your creation to the copy store
											and have them laminate and bind it for you.</li>
									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other1').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Activities/AlphabetBook.png" width="560px" /></td>
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
								<th colspan="2"><h1>Play Animal Exercises</h1></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>What You Need:</h2>
									<ul>
										<li>1 CD of lively kids’ music</li>
										<li>CD player</li>
										<li>At least 3 players</li>

									</ul> <!-- Recipes --> <br>
									<h2>What You Do:</h2>
									<h3>Rules:</h3>
									<ol>
										<li>When the music starts, the kids will walk around the
											room, listening for your directions.</li>
										<li>When you call out an animal exercise, such as “Hop
											like a rabbit!” all the kids need to follow your direction.</li>
										<li>Each time they hear another direction, they switch
											their motion.</li>
										<li>Play continues until the music stops, at which point
											all kids need to freeze in position. If you catch them
											moving, they’re “out”.</li>
										<li>The last kid standing wins the game.</li>

									</ol>
									<h3>Directions:</h3>
									<ul>
										<li>Run like a tiger</li>
										<li>Skip like a kangaroo</li>
										<li>Hop like a rabbit</li>
										<li>Jump like a frog</li>
										<li>Toss like a monkey (when inside, use something soft
											for this, like a small pillow)</li>
										<li>Stretch like a giraffe</li>
									</ul>
									<div align="center">
										<span
											onclick="document.getElementById('other2').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Activities/AnimalExercise.png"
									width="560px" /></td>
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
								<th colspan="2"><h1>Homemade Letter Bingo</h1></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>What You Need:</h2>
									<ul>
										<li>Printable bingo cards</li>
										<li>Small flat items such as dried beans or beads</li>

									</ul> <!-- Recipes -->
									<h2>What You Do:</h2>
									<ol>
										<li>Print out the bingo cards and give a card to each
											child.</li>
										<li>Cut out the letters, numbers and shapes on the
											calling cards in the printable bingo cards packet.</li>
										<li>Do a quick review of some of the letters, numbers and
											symbols on a sample card with your kids as a warm-up
											exercise.</li>
										<li>Pick up one of the letters, numbers or shape cut-outs
											and read it aloud.</li>
										<li>Tell your kids to look at their cards and see whether
											their card shows the matching letter, number or shape. If it
											does, they should put one of their beads or beans onto it.</li>
										<li>Continue until one player has an entire vertical row,
											horizontal row, or diagonal row from the upper corner to the
											lower corner. Then, shuffle the cards and play again!</li>
										<li>You can also make your own bingo cards with paper and
											markers if you use all of the printed out bingo cards.</li>

									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other3').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Activities/BingoLetters.png" width="560px" /></td>
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
								<th colspan="2"><h1>Learning Opposites</h1></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>What You Need:</h2>
									<ul>
										<li>Camera</li>
										<li>Thick paper that can be used for mounting photographs</li>
										<li>White glue</li>
										<li>Pencil</li>
										<li>Paper</li>

									</ul> <!-- Recipes -->
									<h2>What You Do:</h2>
									<ol>
										<li>Before you begin, discuss "opposites" with your
											child. Have your child help you think of some pairs of
											opposites that he might see around the house (most will by
											adjectives, like "young" and "old."). Try to come up with at
											least 12.</li>
										<li>Get your camera and begin the search for opposites.
											For example, if he is looking for something to represent the
											pair “young/old,” he could take a picture of a bud and a
											flower or a baby and a grandparent. Make sure he takes one
											picture for each item rather than one picture for each pair
											of opposites!</li>
										<li>Print or develop his photos.</li>
										<li>Help your child glue the photos to the thick paper
											and trim the edges with scissors.</li>
										<li>Now, mix them up and have your child try to match up
											all the pairs of opposites once again.</li>

									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other4').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Activities/LearningOpposite.png"
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
								<th colspan="2"><h1>DIY Memory Matching Game!</h1> <br>
									<h4>Prep Time: 5 mins &nbsp;&nbsp;&nbsp; Cook Time: 0 mins</h4>
								</th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>What You Need:</h2>
									<ul>
										<li>Photos of multiple members of your family</li>
										<li>Contact Paper</li>

									</ul> <!-- Recipes -->
									<h2>What You Do:</h2>
									<ol>
										<li>Children are very interested in things that are part
											of their own world. For this memory game, you will be making
											matching cards using family photos. Take pictures of as many
											family members as possible: mom, dad, grandma, grandpa,
											brothers, sisters, cousins, aunts, uncles, and anyone else
											that’s important to you. When you print out the pictures or
											get the roll developed, make sure to get double prints. Then
											in order to make the photos sturdier, either laminate them at
											the local copy store, or purchase a roll of contact paper and
											cover the photos, trimming off the excess.</li>
										<li>Now you’re ready to play! Start with approximately
											five photos (and their matches!). Place them face down on a
											table in front of you and your child. Then decide who will go
											first. The first player flips over a photo and then flips
											another card, in search of a match. If she finds a match, she
											keeps the set, then gets another turn. But if she doesn’t
											find a match, it’s the next player’s chance. Play continues
											until all the photos meet their mates.</li>


									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other5').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Activities/MemoryMatching.png"
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
								<th colspan="2"><h1>Me On TV!</h1></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>What You Need:</h2>
									<ul>
										<li>Large cardboard box (big enough for a child to perch
											under). If you don't have any around your home, try a grocery
											store (they usually have extras and are willing to give them
											away), or they can be purchased anywhere storage supplies are
											sold.</li>
										<li>Paints, crayons, markers, glitter, sequins, feathers,
											glue - anything that your child might like to use to decorate
											his very own TV!</li>
										<li>Heavy-duty scissors or utility knife (all cutting in
											this activity MUST be done by an adult)</li>


									</ul> <!-- Recipes -->
									<h2>What You Do:</h2>
									<ol>
										<li>You can't have a proper television show without a
											proper television. Start by cutting a large square or
											rectangular hole on one side of your cardboard box.</li>
										<li>Next, let your child decorate his new TV however he
											wants (make sure you do this project in a place that can get
											a little messy).</li>
										<li>When the television is all finished (and the paint
											and glue has fully dried), have your child perch on his knees
											under the box so his face and chest are visible through the
											"screen." Your little one is all set to star in his very own
											show!</li>
										<li>If you have some extra cardboard, why not make a
											little remote? As you "change the channel" you'll be able to
											enjoy all your child's imagination has to offer.</li>


									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other6').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Activities/MeOnTv.png" width="560px" /></td>
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
								<th colspan="2"><h1>New Year's Recycled Noisemakers</h1></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>What You Need:</h2>

									<ul>

										<li>Cardboard tubes (paper towel tubes cut in half or
											empty toilet paper rolls work well)</li>
										<li>Used or worn fabric scraps (look for linens or items
											of clothing that can not be donated or handed down due to
											holes or other defects)</li>
										<li>Scissors</li>
										<li>2 rubber bands</li>
										<li>Tempera or finger paints</li>
										<li>Noisy objects to fill the noisemaker (examples
											include Lego pieces, beads, dried beans, toy car wheels, or
											small plastic doll shoes)</li>


									</ul> <!-- Recipes -->
									<h2>What You Do:</h2>

									<ol>
										<li>Search your home with your child for the items and
											reused materials needed to make your noisemakers. Look for
											colorful fabric scraps that are filled with pattern and
											texture. This will add in a bonus art concept lesson! Try to
											find a variety of small items that will make noise once
											placed in the cardboard tube. Avoid any very small objects
											that your child could choke on. The toy manufacturers safety
											guidelines are a good point of reference if you're unsure.
											For example, if you are using Legos or marbles that are
											labeled ages six and up, do not use these with a five year
											old.</li>
										<li>Give your child a plain cardboard tube. Invite her to
											paint the tube using tempera or finger paints in a variety of
											colors. You can take this time to discuss musical concepts
											with her such as tempo or rhythm by painting to music. First,
											set out the paint in puddles for your child. Use a washable
											work surface such as a fruit or vegetable tray or a sheet
											pan. Select an appropriate piece of music, and ask your child
											to dip her fingers or her paintbrush into the paint and tap
											her way to a colorful noisemaker.</li>
										<li>When she's finished, set aside the tube to dry.</li>
										<li>Help your child cut two squares of fabric from the
											scraps that you've found. The squares should be at least 1/2
											inch larger (all the way around) than the opening of the
											tube.</li>
										<li>Once the tube is fully dry, place the fabric around
											one end and secure with a rubber band.</li>
										<li>Place a small amount of your noisy items into the
											tube. Have your child count each item as she places it in the
											noisemaker. Place the second piece of fabric around the other
											end, and secure with a second rubber band.</li>
										<li>Make beautiful, noisy music to welcome the New Year!</li>

									</ol>

									<div align="center">
										<span
											onclick="document.getElementById('other7').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Activities/NewYearNoiseMakers.png"
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
								<th colspan="2"><h1>Make Rice Pictures</h1></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>What You Need:</h2>
									<ul>
										<li>Uncooked rice</li>
										<li>Rubbing alcohol</li>
										<li>Food coloring in several shades</li>
										<li>Glue (regular school glue will work, but rubber
											cement is best if available)</li>
										<li>Paper</li>

									</ul> <!-- Recipes -->
									<h2>What You Do:</h2>
									<ol>
										<li><b>Color the rice:</b> In a large bowl mix 1 cup
											rice with a half teaspoon of rubbing alcohol, plus a few
											drops of the food coloring of your choice (more drops mean
											richer color). Lay the rice in a jellyroll pan to dry. (This
											could take as long as one day, in a humid climate, or as
											short as 5-6 hours, in a hot and dry location.) Repeat with
											as many colors as you’d like.</li>
										<li><b>Prepare the paper:</b> Draw a basic picture on
											the paper, using a waterproof marker. Or, if you’d prefer,
											use a page from a coloring book.</li>
										<li><b>Glue the rice:</b> Generously paint one area of
											the picture with glue. Then show your child how to place the
											rice, piece by piece, onto it. Until the glue dries
											completely, it will move around, allowing your child to tweak
											the picture as needed during the process. She can lay the
											rice in rows or patterns to make a more elaborate picture, or
											add the rice in a more impromptu fashion. As she finishes
											each section, paint another area with glue and continue,
											until the picture is complete. Remember that placing the rice
											down piece by piece is what makes this a small motor
											activity. If your child gets tired and starts scooping it
											onto the page, stop and come back to it at another time. When
											the picture is finished, it’s time for a glue shower! To be
											sure that the rice will remain stuck, pour a coating of glue
											over the picture and allow it to dry overnight.</li>

									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other8').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Activities/RicePicture.png" width="560px" /></td>
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
								<th colspan="2"><h1>Plan a Treasure Hunt</h1></th>
							</tr>
							<tr>
								<td style="width: 50%">
									<!-- Ingredients -->
									<h2>What You Needs:</h2>
									<ul>
										<li>Small token to serve as the treasure (This can be
											anything, from a toy from the dollar store to a handful of
											small rocks coated with a metallic spray paint to resemble
											gold or silver coins)</li>
										<li>Small paper bag</li>
										<li>Black felt pen</li>
										<li>Sheet of white paper</li>
										<li>Pencil (colored pencils work too)</li>
										<li>Coffee grounds or black tea (optional)</li>
										<li>Lighter or matches (optional)</li>

									</ul> <!-- Recipes -->
									<h2>What You Do:</h2>
									<ol>
										<li>Bundle your rocks or other treasure in the small
											paper bag and write a bold X on the outside. Aaarg, matey!</li>
										<li>Once you’ve got your pirate booty lined up, choose
											your location—inside or out—for the hiding spot. Hide the
											treasure well, but make sure it won't be too hard for your
											child to discover.</li>
										<li>Now it’s time to make the treasure map. This can be
											as simple or elaborate as you wish, but remember, your child
											will need to read it independently in order to find the
											treasure. Keep words to a minimum and use pictures to the
											max. Let your artistic side shine, but don’t get too
											intimidated—this is just silly pirate fun! A simple sketch of
											the area where the treasure can be found is sufficient, with
											an X marking the spot of the booty.</li>
										<li>If you have the time, consider creating a more
											authentic-looking map by soaking the white paper in coffee
											grounds or black tea. To give the paper a brittleness, try
											drying it in a 200° oven. For a truly special touch,
											carefully burn the edges of the paper with a lighter or
											matches.</li>
										<li>Once you’ve got the main locations on there (bushes,
											the house, a favorite tree), add a dotted line that shows the
											path for finding the treasure. This is a visual cue to
											reinforce simple directions.</li>

									</ol>
									<div align="center">
										<span
											onclick="document.getElementById('other9').style.display='none'"
											class="button round otherButton">CLOSE</span>
									</div>
								</td>
								<td class="modalImages"><img
									src="/styles/images/Activities/TreasureHunt.png" width="560px" /></td>
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