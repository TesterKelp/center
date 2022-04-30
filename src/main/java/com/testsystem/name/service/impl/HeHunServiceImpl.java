package com.testsystem.name.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.HeHunDao;
import com.testsystem.name.service.HeHunService;
@Service
public class HeHunServiceImpl implements HeHunService  {

	
	
	@Autowired
	private HeHunDao heHunDao ;
	
	
	@Override
	public List GetTaToTa(String t1, String t2) {
		// TODO Auto-generated method stub
		return heHunDao.GetTaToTa(t1, t2);
	}


	@Override
	public List GetLvCai(String ming) {
		// TODO Auto-generated method stub
		return heHunDao.GetLvCai(ming);
	}


	@Override
	public List GetBenMingGua(String rs) {
		// TODO Auto-generated method stub
		return heHunDao.GetBenMingGua(rs);
	}
	
	

	
	
	

}
