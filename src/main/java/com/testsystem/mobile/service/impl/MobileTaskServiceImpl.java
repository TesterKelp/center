package com.testsystem.mobile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mobile.dao.MobileTaskDao;
import com.testsystem.mobile.service.MobileTaskService;
import com.testsystem.mobile.vo.MobileTask;
@Service
public class MobileTaskServiceImpl implements MobileTaskService {

		@Autowired
		private MobileTaskDao mobileTaskDao;
	public void AddStTask(MobileTask mobileTask) {
		// TODO Auto-generated method stub
		mobileTaskDao.AddStTask(mobileTask);
	}
	public List GetStTaskAllList() {
		// TODO Auto-generated method stub
		return mobileTaskDao.GetStTaskAllList();
	}
	public List GetCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		return mobileTaskDao.GetCaseByTaskId(taskid);
	}
	public List GetStTaskByStatus(int Status) {
		// webTaskDao
		return mobileTaskDao.GetStTaskByStatus(Status);
	}
	public void AddCaseToTask(int caseid, int taskid) {
		// TODO Auto-generated method stub
		mobileTaskDao.AddCaseToTask(caseid, taskid);
	}
	public void DelCaseFromTask(int caseid, int taskid) {
		// TODO Auto-generated method stub
		mobileTaskDao.DelCaseFromTask(caseid, taskid);
	}
	public void UpdataTaskMac(int taskid, String clicentaddress) {
		// TODO Auto-generated method stub
		mobileTaskDao.UpdataTaskMac(taskid, clicentaddress);
	}
	public void AginRunnerTask(int taskid) {
		// TODO Auto-generated method stub
		mobileTaskDao.AginRunnerTask(taskid);
	}
	public int AddStTaskReturnId(MobileTask mobileTask) {
		// TODO Auto-generated method stub
		return mobileTaskDao.AddStTaskReturnId(mobileTask);
	}
	public List GetTaskByTaskType(int tasktype) {
		// TODO Auto-generated method stub
		return mobileTaskDao.GetTaskByTaskType(tasktype);
	}
	public void SetCaseTaskEnd(int taskid) {
		// TODO Auto-generated method stub
		mobileTaskDao.SetCaseTaskEnd(taskid);
	}

}
