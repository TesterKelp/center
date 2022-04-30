package com.testsystem.systemtest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.systemtest.dao.WebOperationDao;
import com.testsystem.systemtest.service.WebOperationService;
@Service
public class WebOperationServiceImpl implements WebOperationService {

	
		@Autowired
		private WebOperationDao webOperationDao ;
	public List GetAllOperation() {
		// TODO Auto-generated method stub
		return webOperationDao.GetAllOperation();
	}

	public List GetAllOperationByStatus(int Status) {
		// TODO Auto-generated method stub
		return webOperationDao.GetAllOperationByStatus(Status);
	}

}
