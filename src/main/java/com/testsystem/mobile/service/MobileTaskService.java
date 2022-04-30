package com.testsystem.mobile.service;

import java.util.List;

import com.testsystem.mobile.vo.MobileTask;
import com.testsystem.systemtest.vo.WebTask;

public interface MobileTaskService {

	
	public void AddStTask(MobileTask mobileTask);

	public List GetStTaskAllList();

	public List GetCaseByTaskId(int taskid);

	public List GetStTaskByStatus(int Status);

	public void AddCaseToTask(int caseid, int taskid);

	public void DelCaseFromTask(int caseid, int taskid);

	public void UpdataTaskMac(int taskid, String clicentaddress);
	
	public  void  AginRunnerTask(int taskid);
	
	public  void  SetCaseTaskEnd(int taskid);
	 
	public  int  AddStTaskReturnId(MobileTask mobileTask);
	
	public  List GetTaskByTaskType(int tasktype);
	
}
