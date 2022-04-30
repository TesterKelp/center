package com.testsystem.mobile.dao;
import java.util.List;

public interface MobileReportDao {
public List GetReportAll();
	
	public  List GetReportDetailByReportId(int  ReportId);
}
