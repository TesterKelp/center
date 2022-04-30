package com.testsystem.defect.service;

import java.util.List;

public interface DefectService {
	
	
	public List GetShowOperation();
	
	public List GetShowOperationByDefaultProject(int projectid);
	
	public List GetOperationValue(int operationid);
	
	public List GetDefectAll();
	
	public List GetDefectAllByProjectId(int projectid);
	
	public void  CreateDefect(String sql);
	
	public  void  UpdataDefect(String sql);
	
	public List  GetPermissionByUserId(int userid);
	
	public List GetDefectByBugId(int bugid);
	
	public void DelDefectByBugId(int bugid);

	public  void  CaseAssigned(int bugid ,int assigned)  ;
	
	public  void  SetPstatus(int pstatus,int bugid);
	
	public  void SetPstatusAndAssignedByBugId(int bugid ,int pastatus,int assigned);
	
	public  List  GetSelectData(String sql);
	
	public int  ReturnBugIdCreateDefect(String sql);
	
	public  List  AssignedMeDefect(int userid);

	public  List  MyAssignedMeDefect(int userid);
	
	 public  List getWidgetShowByProjectId(int projectId);

	 public List GetWidgetValue(int widgetId);
	
	
}
