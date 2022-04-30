package com.testsystem.name.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.DataDao;
import com.testsystem.name.service.DataService;
@Service
public class DataServiceImpl implements DataService {

	
	@Autowired
	private DataDao dataDao ;
	
	@Override
	public void insertSql(String sql) {
		// TODO Auto-generated method stub
		
		dataDao.insertSql(sql);
	}

}
