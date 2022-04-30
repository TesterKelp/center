package com.testsystem.wift.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.wift.dao.WiftTaskDao;
import com.testsystem.wift.service.WiftTaskService;
import com.testsystem.wift.vo.WiftTask;
@Service
public class WiftTaskServiceImpl implements WiftTaskService {

		@Autowired
		private WiftTaskDao wiftTaskDao;
	public void AddStTask(WiftTask wiftTask) {
		// TODO Auto-generated method stub
		wiftTaskDao.AddStTask(wiftTask);
	}
	public List GetStTaskAllList() {
		// TODO Auto-generated method stub
		return wiftTaskDao.GetStTaskAllList();
	}
	public List GetCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		return wiftTaskDao.GetCaseByTaskId(taskid);
	}
	public List GetStTaskByStatus(int Status) {
		// webTaskDao
		return wiftTaskDao.GetStTaskByStatus(Status);
	}
	public void AddCaseToTask(int caseid, int taskid) {
		// TODO Auto-generated method stub
		wiftTaskDao.AddCaseToTask(caseid, taskid);
	}
	public void DelCaseFromTask(int caseid, int taskid) {
		// TODO Auto-generated method stub
		wiftTaskDao.DelCaseFromTask(caseid, taskid);
	}
	public void UpdataTaskMac(int taskid, String clicentaddress) {
		// TODO Auto-generated method stub
		wiftTaskDao.UpdataTaskMac(taskid, clicentaddress);
	}
	public void AginRunnerTask(int taskid) {
		// TODO Auto-generated method stub
		wiftTaskDao.AginRunnerTask(taskid);
	}
	public int AddStTaskReturnId(WiftTask wiftTask) {
		// TODO Auto-generated method stub
		return wiftTaskDao.AddStTaskReturnId(wiftTask);
	}
	public List GetTaskByTaskType(int tasktype) {
		// TODO Auto-generated method stub
		return wiftTaskDao.GetTaskByTaskType(tasktype);
	}
	public void SetCaseTaskEnd(int taskid) {
		// TODO Auto-generated method stub
		wiftTaskDao.SetCaseTaskEnd(taskid);
	}

}
