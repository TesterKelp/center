package com.testsystem.article.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.article.dao.TestDao;
import com.testsystem.article.service.TestService;
@Service
public class TestServiceImpl implements TestService {

	@Autowired
	private  TestDao  testDao;
	
	
	@Override
	public void Updata(String sql) {
		// TODO Auto-generated method stub
		 testDao.Updata(sql);
	}

}
