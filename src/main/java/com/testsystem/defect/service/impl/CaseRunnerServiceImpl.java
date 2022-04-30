package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.defect.dao.CaseRunnerDao;
import com.testsystem.defect.service.CaseRunnerService;
@Service
public class CaseRunnerServiceImpl implements CaseRunnerService {

	@Autowired
	private  	CaseRunnerDao  caseRunnerDao ;
	
	public List GetCasePlanAll() {
		// TODO Auto-generated method stub
		
		return caseRunnerDao.GetCasePlanAll();
	}

	@Override
	public List GetLibCase(int libid) {
		// TODO Auto-generated method stub
		return caseRunnerDao.GetLibCase(libid);
	}

	@Override
	public List GetRunnerRecord(int caseid) {
		// TODO Auto-generated method stub
		return caseRunnerDao.GetRunnerRecord(caseid);
	}

	@Override
	public int SaveRunnerRecord(int libid,int caseid, int ruserid, String rtime, String[] rsall) {
		// TODO Auto-generated method stub
		int  runnerid;
		String   rs="通过";
		for (int i = 0; i < rsall.length; i++) {
			if (rsall[i] =="通过"|| rsall[i].equals("通过")) {
				
			} else {
				 rs="失败";
			}
		}
		runnerid =	caseRunnerDao.SaveRunnerRecord(libid,caseid, ruserid, rtime, rs);
		caseRunnerDao.UpdateSuccfulCaseNumber(libid);
		caseRunnerDao.UpdateFailCaseNumber(libid);
		return   runnerid ;
	}

	@Override
	public void SaveRunnerRecordDetail(int runnerid, String[] rsall, String[] stepall, String[] resultall) {
		// TODO Auto-generated method stub
		String rs;
		int step;
		String result;
		for (int i = 0; i < rsall.length; i++) {
			rs = rsall[i];
			step = Integer.parseInt(stepall[i]);
			result = resultall[i];
			caseRunnerDao.SaveRunnerRecordDetail(runnerid, rs, step, result);
		}

	}

	@Override
	public List GetRunnerRecordDetail(int runnerid) {
		// TODO Auto-generated method stub
		return caseRunnerDao.GetRunnerRecordDetail(runnerid);
	}

	@Override
	public void CreateRunnerPlan(String plan, int userid) {
		// TODO Auto-generated method stub
		 caseRunnerDao.CreateRunnerPlan(plan, userid);
	}

	@Override
	public void SetRunnerPlanDefault(int libid, int userid) {
		// TODO Auto-generated method stub
		 caseRunnerDao.SetRunnerPlanDefault(libid, userid);
	}

	@Override
	public Boolean LibHaveCaseByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return null ;
	}

	@Override
	public void AddCaseToLib(int caseid, int libid) {
		// TODO Auto-generated method stub
		if(caseRunnerDao.LibHaveCaseByCaseId(caseid, libid)){
		}else{
			caseRunnerDao.AddCaseToLib(caseid, libid);
		}
		
	}

	@Override
	public List GetLibCaseByUserid(int userid) {
		// TODO Auto-generated method stub
		return caseRunnerDao.GetLibCaseByUserid(userid);
	}

	@Override
	public String GetCustomData(String field, int userid) {
		// TODO Auto-generated method stub
		return caseRunnerDao.GetCustomData(field, userid);
	}

	@Override
	public void UpdateSuccfulCaseNumber(int libid) {
		// TODO Auto-generated method stub
		caseRunnerDao.UpdateSuccfulCaseNumber(libid);
	}

	@Override
	public void UpdateFailCaseNumber(int libid) {
		// TODO Auto-generated method stub
		caseRunnerDao.UpdateFailCaseNumber(libid);
	}

	@Override
	public void UpdateCaseNumber(int libid) {
		// TODO Auto-generated method stub
		caseRunnerDao.UpdateCaseNumber(libid);
	}

	@Override
	public List GetRunnerRecord(int caseid, int libid) {
		// TODO Auto-generated method stub
		return caseRunnerDao.GetRunnerRecord(caseid, libid);
	}

	@Override
	public int GetSuccfulCaseNumber(int libid) {
		// TODO Auto-generated method stub
		return caseRunnerDao.GetSuccfulCaseNumber(libid);
	}

	@Override
	public int GetFailCaseNumber(int libid) {
		// TODO Auto-generated method stub
		return caseRunnerDao.GetFailCaseNumber(libid);
	}

	@Override
	public int GetCaseNumber(int libid) {
		// TODO Auto-generated method stub
		return caseRunnerDao.GetCaseNumber(libid);
	}

	@Override
	public int GetLibId(int userid) {
		// TODO Auto-generated method stub
		return caseRunnerDao.GetLibId(userid);
	}

}
