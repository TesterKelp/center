package com.testsystem.wift.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.wift.dao.ModuleDao;
import com.testsystem.wift.vo.Module;
@Repository
public class ModuleDaoImpl implements ModuleDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetModuleListByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String sql = "select * from wift_module where projectid ="+projectid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public void AddModule(Module module) {
		// TODO Auto-generated method stub
		 String  ss= "insert into wift_module  (modulename,projectid) values "
	             +"('"+module.getModulename()+"','"+module.getProjectid()+"')" ;
	
  System.out.println("sssss"+ss);
	jdbcTemplate.update(ss);
	}

	  public void DelWiftModule(int moduleid, int projectid)
	  {
	    String ss = "delete  from  wift_module  where  moduleid=" + moduleid + " and projectid=" + projectid;
	    this.jdbcTemplate.update(ss);
	  }
}
