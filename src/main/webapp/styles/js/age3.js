(function() {
  var questions = [{
    question: "How many lions are there?",
    choices: [6, 7, 2, 10],
    imageSource: "/styles/img/Lessons/age3/sevenLions.png",
    correctAnswer: 1
  }, {
    question: "How many dinosaurs are there?",
    choices: [5, 3, 9, 8],
    imageSource: "/styles/img/Lessons/age3/eightDinos.png",
    correctAnswer: 3
  }, {
    question: "How many donuts are there?",
    choices: [8, 9, 10, 11],
    imageSource: "/styles/img/Lessons/age3/tenDonuts.png",
    correctAnswer: 2
  }, {
    question: "How many dogs are there?",
    choices: [10, 11, 12, 9],
    imageSource: "/styles/img/Lessons/age3/tenDogs.png",
    correctAnswer: 0
  }, {
    question: "How many snowmen are there?",
    choices: [8, 7, 9, 11],
    imageSource: "/styles/img/Lessons/age3/nineSnowmen.png",
    correctAnswer: 2
  },{
	question: "What color is it??",
	choices: ['pink', 'red', 'blue', 'yellow'],
	imageSource: "/styles/img/Lessons/age3/pinkColor.png",
	correctAnswer: 0
  },{
	question: "What color is it??",
	choices: ['pink', 'red', 'yellow', 'white'],
	imageSource: "/styles/img/Lessons/age3/yellowColor.png",
	correctAnswer: 2
  },{
	question: "What color is it??",
    choices: ['pink', 'green', 'yellow', 'white'],
	imageSource: "/styles/img/Lessons/age3/greenColor.png",
	correctAnswer: 1
    },
    {
    question: "What color is it??",
    choices: ['pink', 'green', 'yellow', 'red'],
    imageSource: "/styles/img/Lessons/age3/redColor.png",
    correctAnswer: 3
    },
    {
    question: "What color is it??",
    choices: ['pink', 'green', 'white', 'red'],
    imageSource: "/styles/img/Lessons/age3/whiteColor.png",
    correctAnswer: 2
    }
    ];
  

  var questionCounter = 0; //Tracks question number
  var selections = []; //Array containing user choices
  var quiz = $('#quiz'); //Quiz div object
  
  // Display initial question
  displayNext();
  
  // Click handler for the 'next' button
  $('#next').on('click', function (e) {
    e.preventDefault();
    
    // Suspend click listener during fade animation
    if(quiz.is(':animated')) {        
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
  $('#prev').on('click', function (e) {
    e.preventDefault();
    
    if(quiz.is(':animated')) {
      return false;
    }
    choose();
    questionCounter--;
    displayNext();
  });
  
  // Click handler for the 'Start Over' button
  $('#start').on('click', function (e) {
    e.preventDefault();
    
    if(quiz.is(':animated')) {
      return false;
    }
    questionCounter = 0;
    selections = [];
    displayNext();
    $('#start').hide();
  });
  
  // Animates buttons on hover
  $('.button').on('mouseenter', function () {
    $(this).addClass('active');
  });
  $('.button').on('mouseleave', function () {
    $(this).removeClass('active');
  });
  
  // Creates and returns the div that contains the questions and 
  // the answer selections
  function createQuestionElement(index) {
    var qElement = $('<div>', {
      id: 'question'
    });
    
    var header = $('<h2>Question ' + (index + 1) + ':</h2>');
    qElement.append(header);
    
    //adding image to question
    var displayImage = $('<img class="lessonImage" src="' +questions[index].imageSource + '"/>');
    qElement.append(displayImage);
    
    var question = $('<p>').append(questions[index].question);
    qElement.append(question);
    
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
      input = '<input type="radio" name="answer" value=' + i + ' />';
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
      
      if(questionCounter < questions.length){
        var nextQuestion = createQuestionElement(questionCounter);
        quiz.append(nextQuestion).fadeIn();
        if (!(isNaN(selections[questionCounter]))) {
          $('input[value='+selections[questionCounter]+']').prop('checked', true);
        }
        
        // Controls display of 'prev' button
        if(questionCounter === 1){
          $('#prev').show();
        } else if(questionCounter === 0){
          
          $('#prev').hide();
          $('#next').show();
        }
      }else {
        var scoreElem = displayScore();
        quiz.append(scoreElem).fadeIn();
        $('#next').hide();
        $('#prev').hide();
        $('#start').show();
      }
    });
  }
  
  // Computes score and returns a paragraph element to be displayed
  function displayScore() {
    var score = $('<p>',{id: 'question'});
    
    var numCorrect = 0;
    for (var i = 0; i < selections.length; i++) {
      	
      if (selections[i] === questions[i].correctAnswer) {
        numCorrect = numCorrect + 1;
      }
    }
    
    score.append('You got ' + numCorrect + ' questions out of ' +
                 questions.length + ' right!!!');
    return score;
  }
})();