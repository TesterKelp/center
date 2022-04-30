package com.testsystem.name.service.impl;
import com.testsystem.name.vo.Numb ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.NumberDao;
import com.testsystem.name.service.NumberService;
@Service
public class NumberServiceImpl implements NumberService {

	
	@Autowired
	private NumberDao numberDao ;

	@Override
	public Numb GetNumberByNum(String num) {
		// TODO Auto-generated method stub
		return numberDao.GetNumberByNum(num);
	}
	
	
	
	
	
}
