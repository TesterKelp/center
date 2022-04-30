package com.testsystem.mift.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mift.dao.MitfTaskDao;
@Repository
public class MitfTaskDaoImpl implements MitfTaskDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetAllTask() {
		// TODO Auto-generated method stub
		String sql = "select * from mift_task  a ,admin_user d where  a.createuserid =d.userid";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List GetCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		String sql = "select * from mift_task_case  a ,mift_case_index c  ,admin_user u ,mift_face f where  a.caseid =c.interface_case_id and c.userid=u.userid  and c.interfaceid=f.interfaceid   and taskid="+taskid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

}
