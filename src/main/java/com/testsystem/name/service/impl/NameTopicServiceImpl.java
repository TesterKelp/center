package com.testsystem.name.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.NameTopicDao;
import com.testsystem.name.service.NameTopicService;
@Service
public class NameTopicServiceImpl implements NameTopicService {

	
	@Autowired
	private NameTopicDao  nameTopicDao ;
	
	
	@Override
	public List GetAllNameTopic() {
		// TODO Auto-generated method stub
		return nameTopicDao.GetAllNameTopic();
	}


	@Override
	public List GetAllNameTopicById(int id) {
		// TODO Auto-generated method stub
		return nameTopicDao.GetAllNameTopicById(id);
	}


	@Override
	public List GetTopicById(int id) {
		// TODO Auto-generated method stub
		return nameTopicDao.GetTopicById(id);
	}

}
