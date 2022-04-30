package com.testsystem.systemtest.dao;
import java.util.List;

import com.testsystem.systemtest.vo.Report;



public interface WebReportDao {
	
public List GetReportAll();

public List GetReportByTestType(String testtype);
	
	public  List GetReportDetailByReportId(int  ReportId);
	
	
	public List GetReportRunnerCaseByReportId(int  ReportId);
	
	public List GetCaseRunnerInfo(int caseid ,int reportid);
	
	public Report GetRunnerReportInfo(int caseid,int reportid) ;
}
