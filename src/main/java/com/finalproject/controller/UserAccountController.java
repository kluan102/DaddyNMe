package com.finalproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.finalproject.entity.Lesson;
import com.finalproject.entity.UserAccount;
import com.finalproject.service.UserAccountService;



@CrossOrigin
@RestController
public class UserAccountController {
	
	@Autowired
	private UserAccountService userAccountService;

	@RequestMapping(value="/signup", 
			consumes=MediaType.APPLICATION_JSON_VALUE, 
			produces=MediaType.APPLICATION_JSON_VALUE, 
			method = RequestMethod.POST)
	public void submitUserAccountDetails(@RequestBody UserAccount userAccount ) {
		this.userAccountService.save(userAccount);
	}
	
	
	
	@RequestMapping(value="/logIn",consumes=MediaType.APPLICATION_JSON_VALUE,  produces=MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<UserAccount> logIn(@RequestBody UserAccount userAccount){
		UserAccount tempUserAccount = userAccountService.login(userAccount.getEmail(), userAccount.getPassword());
	
		return new ResponseEntity<>(tempUserAccount, HttpStatus.OK); 
		
		
	}
	
	
	
	
}
