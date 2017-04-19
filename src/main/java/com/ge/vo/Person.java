package com.ge.vo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Person implements Serializable{

	private int personId;
	
	private String username;
	
	private String trueName;
	
	private String location;
	
	private int age;
	
	private String text;

	public int getId() {
		return personId;
	}

	public void setId(int id) {
		this.personId = id;
	}

	public String getUserName() {
		return username;
	}

	public void setUserName(String userName) {
		this.username = userName;
	}

	public String getTrueName() {
		return trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
	
	
}
