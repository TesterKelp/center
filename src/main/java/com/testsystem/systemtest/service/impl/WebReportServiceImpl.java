package com.testsystem.systemtest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.testsystem.systemtest.dao.WebReportDao;
import com.testsystem.systemtest.service.WebReportService;
import com.testsystem.systemtest.vo.Report;

@Service
public class WebReportServiceImpl implements WebReportService {

	@Autowired
	private WebReportDao webReportDao;
		
	public List GetReportAll() {
		// TODO Auto-generated method stub
		return webReportDao.GetReportAll();
	}

	public List GetReportDetailByReportId(int ReportId) {
		// TODO Auto-generated method stub
		return webReportDao.GetReportDetailByReportId(ReportId);
	}



	@Override
	public List GetReportRunnerCaseByReportId(int ReportId) {
		// TODO Auto-generated method stub
		return webReportDao.GetReportRunnerCaseByReportId(ReportId);
	}

	@Override
	public List GetCaseRunnerInfo(int caseid, int reportid) {
		// TODO Auto-generated method stub
		return webReportDao.GetCaseRunnerInfo(caseid, reportid);
	}

	@Override
	public List GetReportByTestType(String testtype) {
		// TODO Auto-generated method stub
		return webReportDao.GetReportByTestType(testtype);
	}

	@Override
	public Report GetRunnerReportInfo(int caseid, int reportid) {
		// TODO Auto-generated method stub
		return webReportDao.GetRunnerReportInfo(caseid, reportid);
	}

}
