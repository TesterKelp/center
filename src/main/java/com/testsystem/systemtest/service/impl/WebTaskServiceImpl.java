package com.testsystem.systemtest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.systemtest.dao.WebTaskDao;
import com.testsystem.systemtest.service.WebTaskService;
import com.testsystem.systemtest.vo.WebTask;
@Service
public class WebTaskServiceImpl implements WebTaskService {

		@Autowired
		private WebTaskDao webTaskDao;
	public void AddStTask(WebTask webTask) {
		// TODO Auto-generated method stub
		webTaskDao.AddStTask(webTask);
	}
	public List GetStTaskAllList() {
		// TODO Auto-generated method stub
		return webTaskDao.GetStTaskAllList();
	}
	public List GetCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		return webTaskDao.GetCaseByTaskId(taskid);
	}
	public List GetStTaskByStatus(int Status) {
		// webTaskDao
		return webTaskDao.GetStTaskByStatus(Status);
	}
	public void AddCaseToTask(int caseid, int taskid) {
		// TODO Auto-generated method stub
		webTaskDao.AddCaseToTask(caseid, taskid);
	}
	public void DelCaseFromTask(int caseid, int taskid) {
		// TODO Auto-generated method stub
		webTaskDao.DelCaseFromTask(caseid, taskid);
	}
	public void UpdataTaskMac(int taskid, String clicentaddress) {
		// TODO Auto-generated method stub
		webTaskDao.UpdataTaskMac(taskid, clicentaddress);
	}
	public void AginRunnerTask(int taskid) {
		// TODO Auto-generated method stub
		webTaskDao.AginRunnerTask(taskid);
	}
	public int AddStTaskReturnId(WebTask webTask) {
		// TODO Auto-generated method stub
		return webTaskDao.AddStTaskReturnId(webTask);
	}
	public List GetTaskByTaskType(int tasktype) {
		// TODO Auto-generated method stub
		return webTaskDao.GetTaskByTaskType(tasktype);
	}
	public void SetCaseTaskEnd(int taskid) {
		// TODO Auto-generated method stub
		webTaskDao.SetCaseTaskEnd(taskid);
	}
	@Override
	public List GetTaskByTestType(String testtype) {
		// TODO Auto-generated method stub
		return webTaskDao.GetTaskByTestType(testtype);
	}

}
