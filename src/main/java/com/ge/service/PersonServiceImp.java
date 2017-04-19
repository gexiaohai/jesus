package com.ge.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ge.vo.Info;
import com.ge.vo.Person;
import com.mapper.PersonMapper;

@Service
public class PersonServiceImp implements PersonService{
	@Autowired
	private PersonMapper personMapper;

	@Override
	public List<Info> queryPer() {
		
		return personMapper.queryPer();
	}

}
