package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.dao.DefectReportDao;
import com.testsystem.defect.service.DefectReportService;
import com.testsystem.defect.vo.Report;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;
@Service
public class DefectReportServiceImpl  implements  DefectReportService{
@Autowired
private DefectReportDao defectReportDao ;
private List lst ;
	public List GetCreatDefectStatistics(String condition) {
		// TODO Auto-generated method stub
		return defectReportDao.GetCreatDefectStatistics(condition);
	}
	public int  AddReport(Report report) {
		// TODO Auto-generated method stub
		report.setUserid(UserUtil.getCurrentUserinfo().getUserid());
		report.setCtime(DataFormat.DataTime());
		report.setProjectid(0);
		report.setBstime("0");
		report.setBetime("0");
	return 	defectReportDao.AddReport(report);
	}
	public List GetReportAll() {
		// TODO Auto-generated method stub
		return defectReportDao.GetReportAll();
	}
	public void SetReportShow(int reportid, int show) {
		// TODO Auto-generated method stub
		defectReportDao.SetReportShow(reportid, show);
	}
	public List GetCreateDefectStatisticsPie(String condition) {
		// TODO Auto-generated method stub
		return defectReportDao.GetCreateDefectStatisticsPie(condition);
	}
	public List GetBackReportDetailByReportId(int reportid) {
		// TODO Auto-generated method stub
		return defectReportDao.GetBackReportDetailByReportId(reportid);
	}
	public List GetStageReportDetailByReportId(int reportid) {
		// TODO Auto-generated method stub
		return defectReportDao.GetStageReportDetailByReportId(reportid);
	}
	public List GetBackReportDetailByPicId(int picid) {
		// TODO Auto-generated method stub
		return defectReportDao.GetBackReportDetailByPicId(picid);
	}
	public int GetReportPicSourceByPicId(int picid) {
		// TODO Auto-generated method stub
		return defectReportDao.GetReportPicSourceByPicId(picid);
	}
	public List GetSeverityDefectStatistics(String condition) {
		// TODO Auto-generated method stub
		return defectReportDao.GetSeverityDefectStatistics(condition);
	}
	public List GetReportByReportId(int reportid) {
		// TODO Auto-generated method stub
		return defectReportDao.GetReportByReportId(reportid);
	}
	public List GetPriorityDefectStatistics(String condition) {
		// TODO Auto-generated method stub
		return defectReportDao.GetPriorityDefectStatistics(condition);
	}
	public void SetPicInfo(int picid, String filed, String value) {
		// TODO Auto-generated method stub
		defectReportDao.SetPicInfo(picid, filed, value);
	}
	public List GetPstatusDefectStatistics(String condition) {
		// TODO Auto-generated method stub
		return defectReportDao.GetPstatusDefectStatistics(condition);
	}
	public List GetAssignedDefectStatistics(String condition) {
		// TODO Auto-generated method stub
		return defectReportDao.GetAssignedDefectStatistics(condition);
	}
	public List GetCustomDefectStatistics(String condition, String FiledName) {
		// TODO Auto-generated method stub
		return defectReportDao.GetCustomDefectStatistics(condition, FiledName);
	}
	public List GetReportListByStage() {
		// TODO Auto-generated method stub
		return defectReportDao.GetReportListByStage();
	}
	@Override
	public void SetOnOff(int picid, int show) {
		// TODO Auto-generated method stub
		defectReportDao.SetOnOff(picid, show);
	}
	@Override
	public void SetReportName(String reportname, int reportid) {
		// TODO Auto-generated method stub
		defectReportDao.SetReportName(reportname, reportid);
	}
	@Override
	public void DelReport(int reportid) {
		// TODO Auto-generated method stub
		defectReportDao.DelReport(reportid);
	}
	@Override
	public void DelReportDetail(int reportid) {
		// TODO Auto-generated method stub
		defectReportDao.DelReportDetail(reportid);
	}
	@Override
	public String GetReportCondition(int reportid) {
		// TODO Auto-generated method stub
		
	lst  =	defectReportDao.GetReportByReportId(reportid);
	
	JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(lst).get(0);
	 int projectid =Integer.parseInt(ob.getString("projectid"))  ;
		String bstime =ob.getString("bstime") ;
		String betime =ob.getString("betime") ;
	 
		String   rs =     "  createtime BETWEEN '"+bstime+"'AND '"+betime+"' " +"and   projectid=" +projectid ;
		return rs;
	}
	@Override
	public void SetReportDefaultReportId(int reportid) {
		// TODO Auto-generated method stub
		defectReportDao.SetReportDefaultReportId(reportid);
	}
	@Override
	public void InitReportDetail() {
		// TODO Auto-generated method stub
		defectReportDao.InitReportDetail();
	}
	@Override
	public void  EditReport(Report report) {
		// TODO Auto-generated method stub
		defectReportDao.EditReport(report);
	}

	
	
	
	
}
