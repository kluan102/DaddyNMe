package com.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.finalproject.entity.UserAccount;
import com.finalproject.repository.UserAccountRepository;



@Service
public class UserAccountService {
	
	
	
	@Autowired
	private UserAccountRepository userRepository;
	
	
	public UserAccount login(String userEmail, String password) {
		
		return this.userRepository.login(userEmail, password);
		
		
	}


	public void save(UserAccount userAccount) {
		userRepository.save(userAccount);
		
	}
	
	 

}
