package com.testsystem.systemtest.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.article.vo.Cate;
import com.testsystem.systemtest.dao.WebReportDao;
import com.testsystem.systemtest.vo.Report;
@Repository
public class WebReportDaoImpl implements WebReportDao{
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public List GetReportAll() {
		// TODO Auto-generated method stub
		String sql = "select * from st_task_report a , st_task b where  a.taskid=b.taskid ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst ;
	}

	public List GetReportDetailByReportId(int ReportId) {
		// TODO Auto-generated method stub
		String sql = "select * from st_task_report a , st_task b  where  a.taskid=b.taskid  and   a.reportid="+ReportId;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		
		return lst ;
	}

	@Override
	public List GetReportRunnerCaseByReportId(int ReportId) {
		// TODO Auto-generated method stub
		String sql = "select distinct caseid , result  from st_task_report_runner  where  reportid="+ReportId;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		
		return lst ;
	}

	@Override
	public List GetCaseRunnerInfo(int caseid, int reportid) {
		// TODO Auto-generated method stub
		String sql = "select * from st_task_report_runner  where  reportid="+reportid+" and caseid="+caseid ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst ;
	}

	@Override
	public List GetReportByTestType(String testtype) {
		// TODO Auto-generated method stub
		String sql = "select * from st_task_report a , st_task b where  b.testtype='"+testtype+"' AND  a.taskid=b.taskid   order by  a.reportid desc  ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst ;
	}

	@Override
	public Report GetRunnerReportInfo(int caseid, int reportid) {
		// TODO Auto-generated method stub
		
		String sql = "select * from st_task_report_runner  where  reportid="+reportid+" and caseid="+caseid ;		
		System.out.println("SQl"+sql);
		Object ca  = this.jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper<Report>(Report.class)) ;
		return  (Report) ca;

	}

}
