package com.finalproject.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.entity.Other;
import com.finalproject.entity.PostedQuestion;
import com.finalproject.entity.UserAccount;
import com.finalproject.service.OtherService;
import com.finalproject.service.PostedQuestionService;
import com.finalproject.service.SendMailService;

@Controller
public class OtherController 
{

	@Autowired
	PostedQuestionService postedQuestionService;
	
	@Autowired
	SendMailService sendMail;
	
	@RequestMapping(value="postYourOwn", method=RequestMethod.POST)
	public ModelAndView postQuestion(@ModelAttribute("postedQues")PostedQuestion postedQuestion, HttpSession session) 
	{
		String email = ((UserAccount)session.getAttribute("loggedInUser")).getEmail();
		postedQuestion.setEmail(email);
		System.out.println(postedQuestion);
		postedQuestionService.saveQuestion(postedQuestion);
		return new ModelAndView("main", "msg", "We will review your question and notify if selected.");
	}
	
	@RequestMapping(value="approve", method=RequestMethod.GET)
	public ModelAndView approve(@RequestParam("id")int id, HttpSession session) {
		PostedQuestion postedQuestion = postedQuestionService.getQuestionId(id);
		UserAccount user = (UserAccount) session.getAttribute("loggedInUser");
		sendMail.sendMail(postedQuestion.getEmail(), "Your Question is approved!", "Hi "+user.getFirstName() +" , thank you for posting your question "
				+postedQuestion.getQuestion()+" has been approved.");
		postedQuestionService.deleteQuestion(id);
		ArrayList<PostedQuestion> postedQuestions = postedQuestionService.getAll();
		session.setAttribute("postedQuestions", postedQuestions);
		return new ModelAndView("admin", "questionMsg", "You have no more pending questions");
	}
	
	@RequestMapping(value="decline", method=RequestMethod.GET)
	public ModelAndView decline(@RequestParam("id")int id, HttpSession session) {
		PostedQuestion postedQuestion = postedQuestionService.getQuestionId(id);
		UserAccount user = (UserAccount) session.getAttribute("loggedInUser");
		sendMail.sendMail(postedQuestion.getEmail(), "Your Question is declined!", "Hi "+user.getFirstName() +" , thank you for posting your question "
				+postedQuestion.getQuestion()+" has been denied.");
		postedQuestionService.deleteQuestion(id);
		ArrayList<PostedQuestion> postedQuestions = postedQuestionService.getAll();
		session.setAttribute("postedQuestions", postedQuestions);
		return new ModelAndView("admin","questionMsg", "You have no more pending questions");
	}
	
	@RequestMapping("/chat")
	public ModelAndView chat() {
		return new ModelAndView("chat");
	}
	
	@RequestMapping("/activities")
	public ModelAndView activities() {
		return new ModelAndView("activities");
	}
	
	@RequestMapping("/meals")
	public ModelAndView meals() {
		return new ModelAndView("meals");
	}
	
	@RequestMapping("/calendar")
	public ModelAndView calendar() {
		return new ModelAndView("calendar");
	}
	
}
