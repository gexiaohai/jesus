package com.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import com.ge.vo.Info;
import com.ge.vo.Person;
@Component
public interface PersonMapper {
	
	public List<Info> queryPer();

}
