package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.entity.UserAccount;


@Controller
public class HomeController {
	
	@RequestMapping("/")
	public ModelAndView home()
	{
		return new ModelAndView("index","userAccount", new UserAccount());
	}
	
	
	@RequestMapping("/main")
	public ModelAndView main()
	{
		return new ModelAndView("main");
	}
	
	@RequestMapping(value="/registerUser", method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("userAccount") UserAccount userAccount)
	{
		System.out.println(userAccount);
		return new ModelAndView("main");
	}
	
	
	@RequestMapping (value="/LogInUser", method=RequestMethod.POST)
	public ModelAndView signInUser(@ModelAttribute("user") UserAccount userAccount)
	{
		if (userAccount.getEmail().equalsIgnoreCase("a@q") && userAccount.getPassword().equals("a")) {
			System.out.println("logged in successfully");
		}
		else {
			System.out.println("Either the user or password is incorrect");
		}
		return new ModelAndView ("main");
	}
	
}
