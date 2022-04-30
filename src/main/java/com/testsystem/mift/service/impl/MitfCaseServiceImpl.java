package com.testsystem.mift.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mift.dao.MitfCaseDao;
import com.testsystem.mift.service.MitfCaseService;
import com.testsystem.mift.vo.MitfBody;
import com.testsystem.mift.vo.MitfIndex;
@Service
public class MitfCaseServiceImpl implements MitfCaseService {
	@Autowired
	private MitfCaseDao  mitfCaseDao ;
	public List GetIfCaseAll() {
		// TODO Auto-generated method stub
		return  mitfCaseDao.GetIfCaseAll();
	}
	public int SaveCaseIndex(MitfIndex mitfIndex) {
		// TODO Auto-generated method stub
		return mitfCaseDao.SaveCaseIndex(mitfIndex);
	}
	public void SaveCaseBody(MitfBody mitfBody) {
		// TODO Auto-generated method stub
		mitfCaseDao.SaveCaseBody(mitfBody);
	}
	public List GetCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return mitfCaseDao.GetCaseIndexByCaseId(caseid);
	}
	public List GetCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return mitfCaseDao.GetCaseBodyByCaseId(caseid);
	}

}
