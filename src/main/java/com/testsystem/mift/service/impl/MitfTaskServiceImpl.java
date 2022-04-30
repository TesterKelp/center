package com.testsystem.mift.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mift.dao.MitfTaskDao;
import com.testsystem.mift.service.MitfTaskService;
@Service
public class MitfTaskServiceImpl implements MitfTaskService {

	@Autowired
	private MitfTaskDao mitfTaskDao ;
	
	public List GetAllTask() {
		// TODO Auto-generated method stub
		return  mitfTaskDao.GetAllTask();
	}

	public List GetCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		return mitfTaskDao.GetCaseByTaskId(taskid);
	}

}
