package com.testsystem.defect.dao;

import java.util.List;

public interface CaseRunnerDao {
	public List  GetCasePlanAll();
	
	public  List  GetLibCase(int libid);
	
	
	public List  GetLibCaseByUserid(int userid);
	
	public List  GetRunnerRecord(int caseid);
	
	public List  GetRunnerRecord(int caseid,int libid);
	
	public int SaveRunnerRecord(int libid,int caseid, int ruserid, String rtime, String rsall) ;
	
	public void SaveRunnerRecordDetail(int runnerid, String rsall, int stepall, String resultall);
	
	public  List  GetRunnerRecordDetail(int  runnerid);
	
	public  void  CreateRunnerPlan(String plan,int  userid);
	
	public  void  SetRunnerPlanDefault(int  libid ,int  userid);
	
	public Boolean LibHaveCaseByCaseId(int  caseid, int libid);
	
	public  void  AddCaseToLib(int  caseid,int  libid);
	
	public  String GetCustomData(String field ,int userid);
	
	public  void UpdateSuccfulCaseNumber(int  libid);

	public  void  UpdateFailCaseNumber(int libid);
	
	public  int   GetSuccfulCaseNumber(int  libid);

	public  int   GetFailCaseNumber(int libid);
	
	public  int   GetCaseNumber(int libid);
	
	public  void  UpdateCaseNumber(int libid);
	
	public  int  GetLibId(int userid);
}
