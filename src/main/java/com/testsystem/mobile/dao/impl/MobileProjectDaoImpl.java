package com.testsystem.mobile.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mobile.dao.MobileProjectDao;
import com.testsystem.mobile.vo.MobileProject;
@Repository
public class MobileProjectDaoImpl implements MobileProjectDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	
	public List GetStProjectAllList() {
		// TODO Auto-generated method stub
		String sql = "select * from mo_project mo , admin_user  u  where mo.userid=u.userid  ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}

	public List GetStProjectSelect() {
		// TODO Auto-generated method stub
		String sql = "select * from mo_project";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}

	public void AddStProject(MobileProject mobileProject) {
		// TODO Auto-generated method stub
		String sql = "insert into mo_project(projectname,createtime,userid) values ('"+mobileProject.getProjectname()+"','"+mobileProject.getCreatetime()+"','"+mobileProject.getUserid()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}

	public void DelProjectByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String sql = "delete  from mo_project   where  projectid="+projectid;
		jdbcTemplate.update(sql);
	}

}
