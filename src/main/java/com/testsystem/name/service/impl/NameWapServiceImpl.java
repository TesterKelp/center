package com.testsystem.name.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.NameWapDao;
import com.testsystem.name.service.NameWapService;
import com.testsystem.name.tools.P;
@Service
public class NameWapServiceImpl implements NameWapService {

	
	@Autowired
	public  NameWapDao nameWapDao ;



	@Override
	public P GetSjName(int pagesize, int pagenumber,int nameid) {
		// TODO Auto-generated method stub
		return nameWapDao.GetSjName(pagesize, pagenumber,nameid);
	}



	@Override
	public int GetSjNameTotal(int pagesize, int nameid) {
		// TODO Auto-generated method stub
		return nameWapDao.GetSjNameTotal(pagesize, nameid);
	}
	
	
	
	
	
	
}
