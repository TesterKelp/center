package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.defect.dao.DefectDao;
@Service
public class DefectServiceImpl implements com.testsystem.defect.service.DefectService {

	@Autowired
	private DefectDao defectDao ;
	public List GetShowOperation() {
		// TODO Auto-generated method stub
		return defectDao.GetShowOperation();
	}
	public List GetOperationValue(int operationid) {
		// TODO Auto-generated method stub
		return defectDao.GetOperationValue(operationid);
	}
	public List GetDefectAll() {
		// TODO Auto-generated method stub
		return defectDao.GetDefectAll();
	}
	public List GetPermissionByUserId(int userid) {
		// TODO Auto-generated method stub
		return defectDao.GetPermissionByUserId(userid);
	}
	public void CreateDefect(String sql) {
		// TODO Auto-generated method stub
		defectDao.CreateDefect(sql);
	}
	public List GetDefectByBugId(int bugid) {
		// TODO Auto-generated method stub
		return defectDao.GetDefectByBugId(bugid);
	}
	public void DelDefectByBugId(int bugid) {
		// TODO Auto-generated method stub
		 defectDao.DelDefectByBugId(bugid);
	}
	public void CaseAssigned(int bugid, int assigned) {
		// TODO Auto-generated method stub
		defectDao.CaseAssigned(bugid, assigned);
	}
	public void SetPstatus(int pstatus, int bugid) {
		// TODO Auto-generated method stub
		defectDao.SetPstatus(pstatus, bugid);
	}
	public List GetSelectData(String sql) {
		// TODO Auto-generated method stub
		return defectDao.GetSelectData(sql);
	}
	public int ReturnBugIdCreateDefect(String sql) {
		// TODO Auto-generated method stub
		return defectDao.ReturnBugIdCreateDefect(sql);
	}
	public void SetPstatusAndAssignedByBugId(int bugid, int pastatus, int assigned) {
		// TODO Auto-generated method stub
		defectDao.SetPstatusAndAssignedByBugId(bugid, pastatus, assigned);
	}
	public List AssignedMeDefect(int userid) {
		// TODO Auto-generated method stub
		return defectDao.AssignedMeDefect(userid);
	}
	public List MyAssignedMeDefect(int userid) {
		// TODO Auto-generated method stub
		return defectDao.MyAssignedMeDefect(userid);
	}
	@Override
	public List GetDefectAllByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return defectDao.GetDefectAllByProjectId(projectid);
	}
	@Override
	public List GetShowOperationByDefaultProject(int projectid) {
		// TODO Auto-generated method stub
		return defectDao.GetShowOperationByDefaultProject(projectid);
	}
	@Override
	public void UpdataDefect(String sql) {
		// TODO Auto-generated method stub
		defectDao.UpdataDefect(sql);
	}
	
	 public List getWidgetShowByProjectId(int projectId)
	  {
	    return this.defectDao.getWidgetShowByProjectId(projectId);
	  }

	  public List GetWidgetValue(int widgetId)
	  {
	    return this.defectDao.GetWidgetValue(widgetId);
	  }
	
	
	

}
