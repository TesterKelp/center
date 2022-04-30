package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.DeptDao;
@Repository
public class DeptDaoImpl implements DeptDao {
	
	
	@Autowired
	JdbcTemplate jdbcTemplate ;

	public List GetDeptList() {
		// TODO Auto-generated method stub
		String sql= "select deptid ,pid ,name from admin_dept  " ;
		return jdbcTemplate.queryForList(sql);
	}

}
