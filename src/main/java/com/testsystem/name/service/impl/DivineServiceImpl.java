package com.testsystem.name.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.DivineDao;
import com.testsystem.name.service.DivineService;
import com.testsystem.name.vo.Divin;
import com.testsystem.name.vo.Divine;


@Service
public class DivineServiceImpl implements DivineService {

	@Autowired
	private  DivineDao divineDao;

	@Override
	public List DivineList() {
		// TODO Auto-generated method stub
		return divineDao.DivineList();
	}

	@Override
	public Divine GetDivineDetailBy(int id) {
		// TODO Auto-generated method stub
		return divineDao.GetDivineDetailBy(id);
	}

	@Override
	public List DivineDetailAll(int id) {
		// TODO Auto-generated method stub
		return divineDao.DivineDetailAll(id);
	}

	@Override
	public Divin GetDivineBy(int id) {
		// TODO Auto-generated method stub
		return divineDao.GetDivineBy(id);
	}

	@Override
	public String GetJtBh(String jtz) {
		// TODO Auto-generated method stub
		return divineDao.GetJtBh(jtz);
	}

	@Override
	public Divine GetDivineDetailBy(int divineid, int qianid) {
		// TODO Auto-generated method stub
		return divineDao.GetDivineDetailBy(divineid, qianid);
	}
	
	
	
	
	
}
