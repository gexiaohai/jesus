package com.ge.vo;

import java.io.Serializable;

@SuppressWarnings("serial")

public class User implements Serializable{
	private int id;
	
	private String userName;
	
	private String password;
	
	private String roleName;
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	

	
	
	

}
