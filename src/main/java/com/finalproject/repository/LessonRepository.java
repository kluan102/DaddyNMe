package com.finalproject.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.finalproject.entity.Lesson;

@Repository
public interface LessonRepository extends JpaRepository <Lesson, Integer> {

	@Query ("Select L from Lesson L where L.age = ?1 and L.lessonId is not ?2 order by rand()")
	List<Lesson> getLesson(String age, Integer lessonID,Pageable pageable);
	
	
}
