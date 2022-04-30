package com.testsystem.wift.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class IfTaskDaoImpl implements IfTaskDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetAllTask() {
		// TODO Auto-generated method stub
		String sql = "select * from interface_task  a ,admin_user d where  a.createuserid =d.userid";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List GetCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		String sql = "select * from interface_task_case  a ,interface_case_index c  ,admin_user u ,interface_face f where  a.caseid =c.interface_case_id and c.userid=u.userid  and c.interfaceid=f.interfaceid   and taskid="+taskid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

}
