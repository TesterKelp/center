package com.testsystem.mobile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mobile.dao.MobileOperationDao;
import com.testsystem.mobile.service.MobileOperationService;
@Service
public class MobileOperationServiceImpl implements MobileOperationService {

	
		@Autowired
		private MobileOperationDao mobileOperationDao ;
	public List GetAllOperation() {
		// TODO Auto-generated method stub
		return mobileOperationDao.GetAllOperation();
	}

	public List GetAllOperationByStatus(int Status) {
		// TODO Auto-generated method stub
		return mobileOperationDao.GetAllOperationByStatus(Status);
	}

}
