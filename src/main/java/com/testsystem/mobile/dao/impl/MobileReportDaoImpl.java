package com.testsystem.mobile.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mobile.dao.MobileReportDao;
@Repository
public class MobileReportDaoImpl implements MobileReportDao{
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public List GetReportAll() {
		// TODO Auto-generated method stub
		String sql = "select * from mo_task_report a , mo_task b where  a.taskid=b.taskid ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst ;
	}

	public List GetReportDetailByReportId(int ReportId) {
		// TODO Auto-generated method stub
		String sql = "select * from mo_task_report a , mo_task b  where  a.taskid=b.taskid  and   a.reportid="+ReportId;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		
		return lst ;
	}

}
