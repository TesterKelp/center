package com.testsystem.api.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.api.dao.ApiReportDao;
import com.testsystem.api.service.ApiReportService;

@Service
public class ApiReportServiceImpl implements ApiReportService {

	@Autowired
	private ApiReportDao  apiReportDao ;
	
	
	@Override
	public int CreateReportDetail(int caseid, int step,int reportid, String rprocess,String runnercase) {
		// TODO Auto-generated method stub
		return apiReportDao.CreateReportDetail(caseid,step, reportid, rprocess , runnercase);
	}


	@Override
	public int CreateReport(int taskid, String rstime) {
		// TODO Auto-generated method stub
		return apiReportDao.CreateReport(taskid, rstime);
	}


	@Override
	public int SetReportEndTime(int Reportid, String retime) {
		// TODO Auto-generated method stub
		return apiReportDao.SetReportEndTime(Reportid, retime);
	}


	@Override
	public int SetCaseRunnerResult(int caseid, int step, int reportid, String rs) {
		// TODO Auto-generated method stub
		return apiReportDao.SetCaseRunnerResult(caseid, step, reportid, rs);
	}

	
	
	
	
	
	
	
	
	
	
}
