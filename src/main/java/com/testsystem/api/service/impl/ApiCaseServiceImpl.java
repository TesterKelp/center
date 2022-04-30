package com.testsystem.api.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.api.dao.ApiCaseDao;
import com.testsystem.api.dao.ApiReportDao;
import com.testsystem.api.service.ApiCaseService;
@Service
public class ApiCaseServiceImpl implements ApiCaseService {

	
	@Autowired
	private ApiCaseDao  apiCaseDao ;

	@Override
	public List GetInterfaceCase(int caseid) {
		// TODO Auto-generated method stub
		return apiCaseDao.GetInterfaceCase(caseid);
	}
	
	@Override
	public List GetInterfaceRequest(int caseid) {
		// TODO Auto-generated method stub
		return apiCaseDao.GetInterfaceRequest(caseid);
	}

	@Override
	public List GetInterfaceRequestHeader(int caseid) {
		// TODO Auto-generated method stub
		return apiCaseDao.GetInterfaceRequestHeader(caseid);
	}

	@Override
	public List GetInterfaceResponseAssert(int caseid) {
		// TODO Auto-generated method stub
		return apiCaseDao.GetInterfaceResponseAssert(caseid);
	}

	@Override
	public List GetInterfaceResponseHeaderAssert(int caseid) {
		// TODO Auto-generated method stub
		return apiCaseDao.GetInterfaceResponseHeaderAssert(caseid);
	}


	
	
	
}
