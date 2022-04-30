package com.testsystem.name.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.DivinationDao;
import com.testsystem.name.service.DivinationService;
@Service
public class DivinationServiceImpl implements DivinationService {

	
	@Autowired
	private  DivinationDao  divinationDao ;

	@Override
	public double GetWeigth(String file, String d) {
		// TODO Auto-generated method stub
		return divinationDao.GetWeigth(file, d);
	}

	@Override
	public List GetWeigth(String weight) {
		// TODO Auto-generated method stub
		return divinationDao.GetWeigth(weight);
	}
	
	
	
	
	
	
	
	
	
}
