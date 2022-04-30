package com.testsystem.api.dao;

import java.util.List;

public interface ApiTaskDao {
	
	
	
	public List  GetCaseInfoByCaseId(int caseid);
	
	public  int  SetCaseNumber(int taskid,int fc ,int sc ,int skc ,int allcn);
	
	public List GetTaskInfoByServerName(String servername,int status);
	
	public List GetTaskInfoByTaskId(int taskid);
	
	public  List GetTaskCaseByTaskId(int taskid);
	
	public List GetWiftCaseByTaskId(int taskid);
	
	public  int   SetTaskStatusByTaskId(int taskid ,int status);
	
	
	public  List GetWiftCaseBodyByCaseId(int caseid);
	
	public  List GetWiftCaseIndexByCaseId(int caseid);
}
