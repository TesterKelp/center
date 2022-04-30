package com.testsystem.wift.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.wift.dao.IfTaskDao;
import com.testsystem.wift.service.IfTaskService;
@Service
public class IfTaskServiceImpl implements IfTaskService {

	@Autowired
	private IfTaskDao ifTaskDao ;
	
	public List GetAllTask() {
		// TODO Auto-generated method stub
		return ifTaskDao.GetAllTask();
	}

	public List GetCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		return ifTaskDao.GetCaseByTaskId(taskid);
	}

}
