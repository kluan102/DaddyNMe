(function() {
	var questions = [ {
		question : "How many goats are there?",
		choices : [ 10, 15, 18, 12 ],
		imageSource : "/styles/images/Lessons/age5/12goats.png",
		correctAnswer : 3
	}, {
		question : "How many firehydrants are there?",
		choices : [ 17, 16, 19, 12 ],
		imageSource : "/styles/images/Lessons/age5/16firehydrants.png",
		correctAnswer : 1
	}, {
		question : "How many books are there?",
		choices : [ 17, 16, 18, 15 ],
		imageSource : "/styles/images/Lessons/age5/17books.png",
		correctAnswer : 0
	}, {
		question : "How many circles are there?",
		choices : [ 19, 18, 20, 12 ],
		imageSource : "/styles/images/Lessons/age5/20circles.png",
		correctAnswer : 2
	}, {
		question : "What is the total?",
		choices : [ 8, 3, 5, 4 ],
		imageSource : "/styles/images/Lessons/age5/Add4.png",
		correctAnswer : 3
	}, {
		question : "What is the total?",
		choices : [ 7, 8, 10, 2 ],
		imageSource : "/styles/images/Lessons/age5/Add7.png",
		correctAnswer : 0
	}, {
		question : "What is the total?",
		choices : [ 9, 8, 10, 12 ],
		imageSource : "/styles/images/Lessons/age5/Add9.png",
		correctAnswer : 0
	}, {
		question : "What is the total?",
		choices : [ 2, 1, 9, 4 ],
		imageSource : "/styles/images/Lessons/age5/Sub1.png",
		correctAnswer : 1
	}, {
		question : "What is the total?",
		choices : [ 2, 4, 3, 1 ],
		imageSource : "/styles/images/Lessons/age5/Sub3.png",
		correctAnswer : 2
	}, {
		question : "What is the total?",
		choices : [ 3, 1, 2, 6 ],
		imageSource : "/styles/images/Lessons/age5/Sub3v2.png",
		correctAnswer : 0
	} ];

	var questionCounter = 0; //Tracks question number
	var selections = []; //Array containing user choices
	var quiz = $('#quiz'); //Quiz div object

	// Display initial question
	displayNext();

	// Click handler for the 'next' button
	$('#next').on('click', function(e) {
		e.preventDefault();

		// Suspend click listener during fade animation
		if (quiz.is(':animated')) {
			return false;
		}
		choose();

		// If no user selection, progress is stopped
		if (isNaN(selections[questionCounter])) {
			alert('Please make a selection!');
		} else {
			questionCounter++;
			displayNext();
		}
	});

	// Click handler for the 'prev' button
	$('#prev').on('click', function(e) {
		e.preventDefault();

		if (quiz.is(':animated')) {
			return false;
		}
		choose();
		questionCounter--;
		displayNext();
	});

	// Click handler for the 'Start Over' button
	$('#start').on('click', function(e) {
		e.preventDefault();

		if (quiz.is(':animated')) {
			return false;
		}
		questionCounter = 0;
		selections = [];
		displayNext();
		$('#start').hide();
	});

	// Animates buttons on hover
	$('.button').on('mouseenter', function() {
		$(this).addClass('active');
	});
	$('.button').on('mouseleave', function() {
		$(this).removeClass('active');
	});

	// Creates and returns the div that contains the questions and 
	// the answer selections
	function createQuestionElement(index) {
		var qElement = $('<div>', {
			id : 'question'
		});

		var header = $('<h2>Question ' + (index + 1) + ':</h2>');
		qElement.append(header);

		//adding image to question
		var displayImage = $('<div class="imageLocation"><img class="lessonImage"  src="'
				+ questions[index].imageSource + '"/></div>');
		qElement.append(displayImage);

		var question = $('<p><b>' + questions[index].question + '</b>');
		qElement.append(question);

		//    var question = $('<p>').append(questions[index].question);
		//    qElement.append(question);

		var radioButtons = createRadios(index);
		qElement.append(radioButtons);

		return qElement;
	}

	// Creates a list of the answer choices as radio inputs
	function createRadios(index) {
		var radioList = $('<ul class="option">');
		var item;
		var input = '';
		for (var i = 0; i < questions[index].choices.length; i++) {
			item = $('<li>');
			input = '<input type="radio" name="answer" value=' + i + ' /> ';
			input += questions[index].choices[i];
			item.append(input);
			radioList.append(item);
		}
		return radioList;
	}

	// Reads the user selection and pushes the value to an array
	function choose() {
		selections[questionCounter] = +$('input[name="answer"]:checked').val();
	}

	// Displays next requested element
	function displayNext() {
		quiz.fadeOut(function() {
			$('#question').remove();

			if (questionCounter < questions.length) {
				var nextQuestion = createQuestionElement(questionCounter);
				quiz.append(nextQuestion).fadeIn();
				if (!(isNaN(selections[questionCounter]))) {
					$('input[value=' + selections[questionCounter] + ']').prop(
							'checked', true);
				}

				// Controls display of 'prev' button
				if (questionCounter === 1) {
					$('#prev').show();
				} else if (questionCounter === 0) {

					$('#prev').hide();
					$('#next').show();
					$('#lastButton').show();
				}
			} else {
				var scoreElem = displayScore();
				quiz.append(scoreElem).fadeIn();
				$('#next').hide();
				$('#prev').hide();
				$('#start').show();
				$('#lastButton').hide();
			}
		});
	}

	// Computes score and returns a paragraph element to be displayed
	function displayScore() {
		var score = $('<p>', {
			id : 'question'
		});

		var numCorrect = 0;
		for (var i = 0; i < selections.length; i++) {

			if (selections[i] === questions[i].correctAnswer) {
				numCorrect = numCorrect + 1;
			}
		}

		score.append('You got ' + numCorrect + ' questions out of '
				+ questions.length + ' right!!!');
		return score;
	}
})();