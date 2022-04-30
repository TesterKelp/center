package com.testsystem.backstage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.backstage.dao.SpecialDao;
import com.testsystem.backstage.service.SpecialService;
import com.testsystem.backstage.vo.Special;

@Service
public class SpecialServiceImpl implements SpecialService {

	
	
	
	@Autowired
	SpecialDao specialDao ;
	
	@Override
	public List GetItemSpecial(String dir) {
		// TODO Auto-generated method stub
		return specialDao.GetItemSpecial(dir);
	}

	@Override
	public Special GetSpecialById(int id) {
		// TODO Auto-generated method stub
		return specialDao.GetSpecialById(id);
	}

	@Override
	public void SpecialSave(Special special) {
		// TODO Auto-generated method stub
		specialDao.SpecialSave(special);
	}

	@Override
	public int SpecialPageSize(String dir) {
		// TODO Auto-generated method stub
		return specialDao.SpecialPageSize(dir);
	}



}
