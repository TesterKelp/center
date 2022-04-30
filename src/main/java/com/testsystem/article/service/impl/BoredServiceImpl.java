package com.testsystem.article.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.article.dao.BoredDao;
import com.testsystem.article.service.BoredService;
import com.testsystem.article.vo.Bored;
@Service
public class BoredServiceImpl  implements  BoredService {

	@Autowired  BoredDao  boredDao ;
	
	
	@Override
	public List BoredListByShow() {
		// TODO Auto-generated method stub
		return boredDao.BoredListByShow();
	}

	@Override
	public List BoredListByAll() {
		// TODO Auto-generated method stub
		return boredDao.BoredListByAll();
	}

	@Override
	public void SpeakBored(Bored bored) {
		// TODO Auto-generated method stub
		boredDao.SpeakBored(bored);
	}

	@Override
	public void SetBoredShow(int id) {
		// TODO Auto-generated method stub
		boredDao.SetBoredShow(id);
	}

}
