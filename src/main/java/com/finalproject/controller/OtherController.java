package com.finalproject.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproject.entity.Other;
import com.finalproject.service.OtherService;

@CrossOrigin
@Controller
public class OtherController {

	@Autowired
	private OtherService otherService;
	
	@RequestMapping(value="/other",
			produces=MediaType.APPLICATION_JSON_VALUE,
			method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Other> getInfo (int otherId){
		
		Other tempOther = otherService.getinfo(otherId);
		return new ResponseEntity<> (tempOther, HttpStatus.OK);
			
		
	}
	
	
}
