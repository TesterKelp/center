package com.testsystem.defect.dao;

import java.util.List;

public interface DefectDao {
	
	public List GetShowOperation();
	
	public List GetShowOperationByDefaultProject(int projectid);
	
	public void  CreateDefect(String sql);
	
	public  void  UpdataDefect(String sql);
	
	public List GetOperationValue(int operationid);
	
	public List GetDefectAll();
	
	public List GetDefectAllByProjectId(int projectid);
	
	public List  GetPermissionByUserId(int userid);
	public List GetDefectByBugId(int bugid);

	public  void SetPstatusAndAssignedByBugId(int bugid ,int pastatus,int assigned);
	public void DelDefectByBugId(int bugid);
	
	public  void  CaseAssigned(int bugid ,int assigned) ;
	
	public  void  SetPstatus(int pstatus,int bugid);
	
	public  List  GetSelectData(String sql);
	
	public int  ReturnBugIdCreateDefect(String sql);
	
	public  List  AssignedMeDefect(int userid);
	
	public  List  MyAssignedMeDefect(int userid);
	
	 public  List getWidgetShowByProjectId(int projectId);

	 public List GetWidgetValue(int widgetId);
	
	
	
}
