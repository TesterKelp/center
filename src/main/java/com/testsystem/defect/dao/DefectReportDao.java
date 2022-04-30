package com.testsystem.defect.dao;

import java.util.List;

import com.testsystem.defect.vo.Report;

public interface DefectReportDao {
	public List GetCreatDefectStatistics(String condition);

	public List GetCreateDefectStatisticsPie(String condition);

	public int AddReport(Report report);
	
	public  void  EditReport(Report report);

	public List GetReportByReportId(int reportid);

	public List GetReportAll();
	
	public List GetReportListByStage();

	public void SetPicInfo(int picid, String filed, String value);

	public void SetReportShow(int reportid, int show);
	
	public  void  SetOnOff(int picid,int show);
	
	public  void  SetReportName(String reportname,int  reportid);
	
	public  void  DelReport(int  reportid);
	
	public  void  DelReportDetail(int  reportid);

	public List GetBackReportDetailByReportId(int reportid);

	public List GetStageReportDetailByReportId(int reportid);

	public List GetBackReportDetailByPicId(int picid);

	public int GetReportPicSourceByPicId(int picid);

	public List GetSeverityDefectStatistics(String condition);

	public List GetPriorityDefectStatistics(String condition);
	
	public List   GetPstatusDefectStatistics(String condition);
	
	public List   GetAssignedDefectStatistics(String condition);
	
	public List   GetCustomDefectStatistics(String condition,String FiledName);
	
	 public String  GetReportCondition(int  reportid);
	 
 public void  SetReportDefaultReportId(int reportid );
	 
	 public void  InitReportDetail();
}
