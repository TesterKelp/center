package com.testsystem.systemtest.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.systemtest.dao.WebModuleDao;
import com.testsystem.systemtest.vo.WebModule;
@Repository
public class WebModuleDaoImpl implements WebModuleDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	public List GetStModuleSelect() {
		// TODO Auto-generated method stub
		String sql = "select * from st_module";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List getModuleByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String sql = "select * from st_module where projectid="+projectid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void addModule(WebModule webModule) {
		// TODO Auto-generated method stub
		String sql = "insert into st_module(modulename,projectid,userid) values ('"+webModule.getModulename()+"','"+webModule.getProjectid()+"','"+webModule.getUserid()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public void DelModuleByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		String sql = "delete  from st_module   where  moduleid="+moduleid;
		jdbcTemplate.update(sql);
	}

}
