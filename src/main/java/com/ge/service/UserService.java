package com.ge.service;

import org.apache.ibatis.annotations.Param;

import com.ge.vo.User;

public interface UserService {
	
	public User logUser(String userName, String password);
	
	public void log(String userName, String password );
	

	
}
