package com.testsystem.api.dao;

public interface ApiReportDao {

	
	
	
	public  int  CreateReportDetail(int caseid,int step, int reportid ,String rprocess ,String runnercase);
	
	public  int  SetCaseRunnerResult(int caseid,int step,int reportid ,String rs);
	
	public  int  CreateReport(int taskid,String rstime);
	
	public  int  SetReportEndTime(int Reportid,String retime);
}
