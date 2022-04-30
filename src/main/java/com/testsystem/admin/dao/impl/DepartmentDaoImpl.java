package com.testsystem.admin.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.dao.DepartmentDao;
import com.testsystem.admin.vo.Department;
@Repository
public class DepartmentDaoImpl implements DepartmentDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	public void SaveDepartment(Department department) {
		// TODO Auto-generated method stub
		String  ss= "insert into admin_dept  (pid,name,level,deptorder) values ('"+department.getPid()+"','"+department.getName()+"','"+department.getLevel()+"','"+department.getDeptorder()+"')" ;
		System.out.println("sssss"+ss);
		jdbcTemplate.update(ss);
	}

}
