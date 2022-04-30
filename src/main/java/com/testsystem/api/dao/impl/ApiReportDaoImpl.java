package com.testsystem.api.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.api.dao.ApiReportDao;
@Repository
public class ApiReportDaoImpl implements ApiReportDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	@Override
	public int CreateReportDetail(int caseid, int step, int reportid, String rprocess,String runnercase) {
		// TODO Auto-generated method stub
		String sql = "insert  into st_task_report_runner (caseid,step,reportid,actualrs,caseinfo) values ("+caseid+","+step+","+reportid+",'"+rprocess+"','"+runnercase+"')";
		System.out.println("mmmmmmmmmm"+sql);
		jdbcTemplate.update(sql);
		String sq="select @@IDENTITY";
		return jdbcTemplate.queryForInt(sq);
	}
	@Override
	public int CreateReport(int taskid, String rstime) {
		// TODO Auto-generated method stub
		String sql = "insert into st_task_report (taskid,rstime) values ('"+taskid+"','"+rstime+"')";
		jdbcTemplate.update(sql);
		String sq="select @@IDENTITY";
		return jdbcTemplate.queryForInt(sq);
	}
	@Override
	public int SetReportEndTime(int Reportid, String retime) {
		// TODO Auto-generated method stub
		String sql =  "update st_task_report set retime='" + retime + "' where  reportid='" + Reportid + "'";
		return jdbcTemplate.update(sql);
	}
	@Override
	public int SetCaseRunnerResult(int caseid, int step, int reportid, String rs) {
		// TODO Auto-generated method stub
		String sql =  "update st_task_report_runner set result='" + rs + "' where  reportid='" + reportid + "' and caseid ="+caseid;
		return jdbcTemplate.update(sql);
	}

	
	
	

	
	
	
	
}
