package com.finalproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.finalproject.entity.PostedQuestion;

@Repository
public interface PostedQuestionRepo extends JpaRepository<PostedQuestion, Integer>
{

}
