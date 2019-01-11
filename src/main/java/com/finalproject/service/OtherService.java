package com.finalproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.entity.Other;
import com.finalproject.repository.OtherRepository;

@Service
public class OtherService {

	@Autowired
	private OtherRepository  otherRepository;
	
	public Other getinfo (int otherId) {
		return otherRepository.getinfo(otherId);
	}
}
