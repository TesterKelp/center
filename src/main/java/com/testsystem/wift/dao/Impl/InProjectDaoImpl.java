package com.testsystem.wift.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.wift.dao.InProjectDao;
import com.testsystem.wift.vo.Project;
@Repository
public class InProjectDaoImpl implements InProjectDao {
	@Autowired
	JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public List GetProjectList() {
		// TODO Auto-generated method stub
		String sql = "select * from wift_project a ,admin_user b where a.userid =b.userid";
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public void AddProject(Project project) {
		// TODO Auto-generated method stub
		String ss = "insert into wift_project  (projectname,projectdesc,createtime,userid) values " + "('"
				+ project.getProjectname() + "','" + project.getProjectdesc() + "','" + project.getCreatetime() + "','"
				+ project.getUserid() + "')";

		System.out.println("sssss" + ss);
		jdbcTemplate.update(ss);
	}

	public boolean HavePageOrModuleByProjectId(int projectid) {
		String ss = " select * from   wift_module  b where  b.projectid=" + projectid;

		return (this.jdbcTemplate.queryForList(ss).size() > 0);
	}

	public boolean DelProjectByProjectId(int projectid) {
		String ss = " delete from  wift_project  where projectid=" + projectid;

		return (this.jdbcTemplate.update(ss) > 0);
	}

}
