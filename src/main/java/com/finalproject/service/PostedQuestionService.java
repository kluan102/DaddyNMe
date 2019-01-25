package com.finalproject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.entity.PostedQuestion;
import com.finalproject.repository.PostedQuestionRepo;

@Service
public class PostedQuestionService {
	
	@Autowired
	PostedQuestionRepo postedQuestionRepo;
	
	public void saveQuestion(PostedQuestion postedQuestion) {
		postedQuestionRepo.save(postedQuestion);
	}

	public ArrayList<PostedQuestion> getAll() {
		return (ArrayList<PostedQuestion>) postedQuestionRepo.findAll();
	}
	
	public PostedQuestion getQuestionId(int id) {
		return postedQuestionRepo.getOne(id);
	}
	
	public void deleteQuestion(int id) {
		postedQuestionRepo.deleteById(id);
	}
}
