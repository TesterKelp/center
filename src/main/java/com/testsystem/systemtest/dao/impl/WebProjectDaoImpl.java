package com.testsystem.systemtest.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.systemtest.dao.WebProjectDao;
import com.testsystem.systemtest.vo.WebProject;
@Repository
public class WebProjectDaoImpl implements WebProjectDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	
	public List GetStProjectAllList() {
		// TODO Auto-generated method stub
		String sql = "select * from st_project st , admin_user  u  where st.userid=u.userid  ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}

	public List GetStProjectSelect() {
		// TODO Auto-generated method stub
		String sql = "select * from st_project";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}

	public void AddStProject(WebProject webProject) {
		// TODO Auto-generated method stub
		String sql = "insert into st_project(projectname,createtime,userid) values ('"+webProject.getProjectname()+"','"+webProject.getCreatetime()+"','"+webProject.getUserid()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}

	public void DelProjectByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String sql = "delete  from st_project   where  projectid="+projectid;
		jdbcTemplate.update(sql);
	}

}
