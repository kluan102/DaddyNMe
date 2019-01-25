package com.finalproject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PostedQuestion {


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int postedQuestionId;
	@Column
	private String email;
	@Column
	private String age;
	@Column
	private String question;
	@Column
	private String answers;
	
	
	public int getPostedQuestionId() {
		return postedQuestionId;
	}
	public void setPostedQuestionId(int postedQuestionId) {
		this.postedQuestionId = postedQuestionId;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswers() {
		return answers;
	}
	public void setAnswers(String answers) {
		this.answers = answers;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "PostedQuestion [postedQuestionId=" + postedQuestionId + ", age=" + age + ", question=" + question
				+ ", answers=" + answers + "]";
	}
	
	
}
