package com.finalproject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Lesson {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int lessonId;
	
	@Column
	private String picLocation;
	@Column
	private byte[] pic_location; //blob object
	@Column(name="correct_answer")
	private String correctAnswer;
	@Column
	private String option1;
	@Column
	private String option2;
	@Column
	private String option3;
	@Column
	private int difficulty;
	@Column
	private String question;
	@Column
	private String age;

	public String getQuestion() {
		return question;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public int getLessonId() {
		return lessonId;
	}

	public void setLessonId(int lessonId) {
		this.lessonId = lessonId;
	}

	public int getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(int difficulty) {
		this.difficulty = difficulty;
	}

	public String getPicLocation() {
		return picLocation;
	}

	public void setPicLocation(String picLocation) {
		this.picLocation = picLocation;
	}

	public String getCorrectAnswer() {
		return correctAnswer;
	}

	public void setCorrectAnswer(String correctAnswer) {
		this.correctAnswer = correctAnswer;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	@Override
	public String toString() {
		return "Lesson [lessonId=" + lessonId + ", picLocation=" + picLocation + ", correctAnswer=" + correctAnswer
				+ ", option1=" + option1 + ", option2=" + option2 + ", option3=" + option3 + ", difficulty=" + difficulty + "]";
	}
}
