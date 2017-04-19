package com.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.ge.vo.User;

@Component
public interface UserMapper {
	
	public User logUser(@Param("userName") String userName,@Param("password")String password);
	
	public void log(@Param("user") User user);
}
