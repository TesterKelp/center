package com.testsystem.name.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.BaseDao;
import com.testsystem.name.dao.DataDao;
import com.testsystem.name.service.BaseService;
@Service
public class BaseServiceImpl implements BaseService {

	
	@Autowired
	private BaseDao baseDao ;
	
	
	@Override
	public List GetInfoList(String sql) {
		// TODO Auto-generated method stub
		return baseDao.GetInfoList(sql);
	}

	@Override
	public void AddInfo(String sql) {
		// TODO Auto-generated method stub
		baseDao.AddInfo(sql);
	}

	@Override
	public void UpdataInfo(String sql) {
		// TODO Auto-generated method stub
		baseDao.UpdataInfo(sql);
	}

	@Override
	public void DelInfo(String sql) {
		// TODO Auto-generated method stub
		baseDao.DelInfo(sql);
	}

	@Override
	public List GetList(String sql) {
		// TODO Auto-generated method stub
		return baseDao.GetList(sql);
	}

}
