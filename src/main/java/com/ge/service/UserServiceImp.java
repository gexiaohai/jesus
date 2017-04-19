package com.ge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ge.vo.User;
import com.mapper.UserMapper;

@Service
public class UserServiceImp implements UserService{
	
	@Autowired
	//Autowired是将spring中的bean注入进来
	private UserMapper userMapper;

	@Override
	public User logUser(String userName, String password) {
		
		return userMapper.logUser(userName, password);
	}

	@Override
	public void log(String userName, String password) {
		
		User user1= new User();
		user1.setUserName(userName);
		user1.setPassword(password);
		userMapper.log(user1);
		
	}


}
