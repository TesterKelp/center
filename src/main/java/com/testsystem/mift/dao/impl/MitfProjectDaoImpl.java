package com.testsystem.mift.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mift.dao.MitfProjectDao;
import com.testsystem.mift.vo.MitfProject;
@Repository
public class MitfProjectDaoImpl implements MitfProjectDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetProjectList() {
		// TODO Auto-generated method stub
		String sql = "select * from mift_project a ,admin_user b where a.userid =b.userid";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public void AddProject(MitfProject mitfProject) {
		// TODO Auto-generated method stub
	    String  ss= "insert into mift_project  (projectname,projectdesc,createtime,userid) values "
	             +"('"+mitfProject.getProjectname()+"','"+mitfProject.getProjectdesc()+"','"+mitfProject.getCreatetime()+"','"+mitfProject.getUserid()+"')" ;
	
  System.out.println("sssss"+ss);
	jdbcTemplate.update(ss);
	}

}
