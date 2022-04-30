package com.testsystem.admin.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.dao.SysSetDao;
import com.testsystem.admin.vo.SysInfo;
import com.testsystem.admin.vo.User;
@Repository
public class SysSetDaoImpl implements  SysSetDao{

	@Autowired
	private JdbcTemplate jdbcTemplate ;
	
	
	public String GetDefaultPage() {
		// TODO Auto-generated method stub
		String sql = "select defaultpage from sys_info  "  ;	
		//jdbcTemplate.queryForObject(sql, java.lang.String.class);
System.out.println("sql::::::::"+sql);
		String defaultpage=(String)jdbcTemplate.queryForObject(sql, java.lang.String.class); 
		return defaultpage;
	}


	@Override
	public void SavePage(String page) {
		// TODO Auto-generated method stub
		String sql = "update  sys_info   set  defaultpage ='"+page+"'"  ;	
		jdbcTemplate.update(sql);
	}


	@Override
	public String GetSysInfoValue(String fieldname) {
		// TODO Auto-generated method stub
		String sql = "select "+fieldname+" from sys_info  "  ;	
		//jdbcTemplate.queryForObject(sql, java.lang.String.class);
System.out.println("sql::::::::"+sql);
		String defaultpage=(String)jdbcTemplate.queryForObject(sql, java.lang.String.class); 
		return defaultpage;
	}


	@Override
	public void SetSysInfoValue(String fieldname, String value) {
		// TODO Auto-generated method stub
		String sql = "update  sys_info   set  "+fieldname+"='"+value+"'"  ;	
		jdbcTemplate.update(sql);
	}


	@Override
	public List<SysInfo> GetSysInfo() {
		// TODO Auto-generated method stub
		String sql = "select defaultpage , url ,htmlloc ,ishtml  from sys_info  ";	
		List<SysInfo> lst=this.jdbcTemplate.query(sql,new BeanPropertyRowMapper<SysInfo>(SysInfo.class));
		System.out.println("12345size"+lst.size());
		System.out.println("login info:"+lst);
		return lst;
	
	}


//	@Override
//	public SysInfo GetSysInfo() {
//		// TODO Auto-generated method stub
//		return null;
//	}

}
