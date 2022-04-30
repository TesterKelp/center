package com.testsystem.systemtest.service;

import java.util.List;

import com.testsystem.systemtest.vo.WebTask;

public interface WebTaskService {

	
	public void AddStTask(WebTask webTask);

	public List GetStTaskAllList();
	
	public  List GetTaskByTestType(String testtype);

	public List GetCaseByTaskId(int taskid);

	public List GetStTaskByStatus(int Status);

	public void AddCaseToTask(int caseid, int taskid);

	public void DelCaseFromTask(int caseid, int taskid);

	public void UpdataTaskMac(int taskid, String clicentaddress);
	
	public  void  AginRunnerTask(int taskid);
	
	public  void  SetCaseTaskEnd(int taskid);
	 
	public  int  AddStTaskReturnId(WebTask webTask);
	
	public  List GetTaskByTaskType(int tasktype);
	
}
