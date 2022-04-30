package com.testsystem.usercenter.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.usercenter.dao.DataProDao;
import com.testsystem.usercenter.service.DataProService;
@Service
public class DataProServiceImpl implements DataProService {

	@Autowired
    private DataProDao dataProDao ;
	
	@Override
	public void addSQl(String sql) {
		// TODO Auto-generated method stub
		dataProDao.addSQl(sql);
	}

}
