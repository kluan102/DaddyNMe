package com.finalproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.finalproject.entity.Lesson;
import com.finalproject.repository.LessonRepository;

@Service
public class LessonService {

	
	@Autowired
	private LessonRepository lessonRepository;
	
	public Lesson getLesson (String age,  Integer lessonID) {
		//if (difficulty == null) {
		//	difficulty =1;
		//}
		if (lessonID == null) {
			lessonID =0;
		}
		List<Lesson>  lesson = this.lessonRepository.getLesson(age, lessonID,new PageRequest(0,1));
		
		if(lesson !=null) {
			return lesson.get(0);
		}
		return null;
		
	}
	
}
