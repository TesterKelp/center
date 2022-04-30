package com.testsystem.name.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.WordDao;
import com.testsystem.name.service.WordService;
import com.testsystem.name.vo.Kangxi;
@Service
public class WordServiceImpl implements WordService {

	@Autowired
	private  WordDao wordDao ;
	
	
	
	
	@Override
	public Kangxi GetKeyByWord(String word) {
		// TODO Auto-generated method stub
		return wordDao.GetKeyByWord(word);
	}

}
