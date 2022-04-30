package com.testsystem.mobile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mobile.dao.MobileReportDao;
import com.testsystem.mobile.service.MobileReportService;
@Service
public class MobileReportServiceImpl implements MobileReportService {

	@Autowired
	private MobileReportDao mobileReportDao;
		
	public List GetReportAll() {
		// TODO Auto-generated method stub
		return mobileReportDao.GetReportAll();
	}

	public List GetReportDetailByReportId(int ReportId) {
		// TODO Auto-generated method stub
		return mobileReportDao.GetReportDetailByReportId(ReportId);
	}

}
