package com.testsystem.mift.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mift.dao.MitfModuleDao;
import com.testsystem.mift.vo.MitfModule;
@Repository
public class MitfModuleDaoImpl implements MitfModuleDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetModuleListByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String sql = "select * from mift_module where projectid ="+projectid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public void AddModule(MitfModule mitfModule) {
		// TODO Auto-generated method stub
		 String  ss= "insert into mift_module  (modulename,projectid) values "
	             +"('"+mitfModule.getModulename()+"','"+mitfModule.getProjectid()+"')" ;
	
  System.out.println("sssss"+ss);
	jdbcTemplate.update(ss);
	}


}
