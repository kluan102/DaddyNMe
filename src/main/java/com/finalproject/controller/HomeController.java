package com.finalproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.entity.PostedQuestion;
import com.finalproject.entity.UserAccount;
import com.finalproject.service.PostedQuestionService;
import com.finalproject.service.SendMailService;
import com.finalproject.service.UserAccountService;

@Controller
public class HomeController {

	@Autowired
	UserAccountService userAccountService;

	@Autowired
	PostedQuestionService postedQuestionService;

	@Autowired
	SendMailService sendMail;

	UserAccount loggedInUser;
	ArrayList<PostedQuestion> postedQuestions = new ArrayList<PostedQuestion>();

	@RequestMapping("/")
	public ModelAndView home() {
		this.loggedInUser = null;
		return new ModelAndView("index", "userAccount", new UserAccount());
	}

	@RequestMapping("/main")
	public ModelAndView main() {
		return new ModelAndView("main");
	}

	@RequestMapping("/admin")
	public ModelAndView admin() {
		return new ModelAndView("admin");
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("userAccount") UserAccount userAccount) {
		sendMail.sendMail(userAccount.getEmail(),"Daddy 'N' Me registration ", "Hi " + userAccount.getFirstName()
				+ ", welcome to our community, feel free to contact us at admin@home if you have any further questions, concerns, and/or feedbacks about Daddy 'N' Me. Thank you. ");
		userAccountService.save(userAccount);
		return new ModelAndView("index", "userAccount", new UserAccount());
	}

	@RequestMapping(value = "/LogInUser", method = RequestMethod.POST)
	public ModelAndView signInUser(@ModelAttribute("user") UserAccount userAccount, HttpSession session) {
		this.loggedInUser = userAccountService.login(userAccount.getEmail(), userAccount.getPassword());

		if (loggedInUser != null) {
			session.setAttribute("loggedInUser", loggedInUser);
			if (loggedInUser.getEmail().equalsIgnoreCase("admin@home") && loggedInUser.getPassword().equals("pass")) {
				postedQuestions = postedQuestionService.getAll();
				session.setAttribute("postedQuestions", postedQuestions);
				return new ModelAndView("admin", "questionMsg", "You have no more pending questions");
			} else {
				return new ModelAndView("main");
			}
		} else {

			return new ModelAndView("index", "userAccount", new UserAccount());
		}

	}

}
