package com.testsystem.defect.dao;

import java.util.List;

public interface TaskDao {
	public  List  GetTask() ;
	
	public List GetMyTask(int userid);
	
	public int CreateTask(String sql);

	public  List TaskDetail(int taskid);
	
	public  void  DelTask(int taskid);
	public List GetShowOperationByTask();
	
	public  List  GetTaskDetailCustomField(int taskid);
	
	public  void  SetTaskStatus(int  taskid);
	
	public  void  AssignedTask(int taskid,int assignedid);
}
