package com.finalproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.entity.Lesson;
import com.finalproject.entity.PostedQuestion;
import com.finalproject.service.LessonService;

@Controller
public class LessonController {
	
	@RequestMapping(value="/age3", method=RequestMethod.GET)
	public ModelAndView age3()
	{
		return new ModelAndView("age3");
	}

	@RequestMapping(value="/age4", method=RequestMethod.GET)
	public ModelAndView age4()
	{
		return new ModelAndView("age4");
	}
	
	@RequestMapping(value="/age5", method=RequestMethod.GET)
	public ModelAndView age5()
	{
		return new ModelAndView("age5");
	}
	@RequestMapping(value="/demo", method=RequestMethod.GET)
	public ModelAndView demo()
	{
		return new ModelAndView("demo");
	}
	
	@RequestMapping(value="/postYourOwn", method=RequestMethod.GET)
	public ModelAndView postYourOwn()
	{
		return new ModelAndView("postYourOwn","postedQues", new PostedQuestion());
	}
}
