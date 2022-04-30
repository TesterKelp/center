package com.testsystem.mobile.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mobile.dao.MobileModuleDao;
import com.testsystem.mobile.vo.MobileModule;
@Repository
public class MobileModuleDaoImpl implements MobileModuleDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	public List GetStModuleSelect() {
		// TODO Auto-generated method stub
		String sql = "select * from mo_module";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List getModuleByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String sql = "select * from mo_module where projectid="+projectid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void addModule(MobileModule mobileModule) {
		// TODO Auto-generated method stub
		String sql = "insert into mo_module(modulename,projectid,userid) values ('"+mobileModule.getModulename()+"','"+mobileModule.getProjectid()+"','"+mobileModule.getUserid()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public void DelModuleByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		String sql = "delete  from mo_module   where  moduleid="+moduleid;
		jdbcTemplate.update(sql);
	}

}
