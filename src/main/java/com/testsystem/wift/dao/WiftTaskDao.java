package com.testsystem.wift.dao;

import java.util.List;

import com.testsystem.mobile.vo.MobileTask;
import com.testsystem.wift.vo.WiftTask;

public interface WiftTaskDao {

	
	public void AddStTask(WiftTask wiftTask);

	public List GetStTaskAllList();

	public List GetCaseByTaskId(int taskid);

	public List GetStTaskByStatus(int Status);

	public void AddCaseToTask(int caseid, int taskid);

	public void DelCaseFromTask(int caseid, int taskid);

	public void UpdataTaskMac(int taskid, String clicentaddress);
	
	public  void  AginRunnerTask(int taskid);
	
	public  void  SetCaseTaskEnd(int taskid);
	
	public int AddStTaskReturnId(WiftTask wiftTask);
	
	public  List GetTaskByTaskType(int tasktype);
}

