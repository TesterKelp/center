package com.testsystem.usercenter.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.vo.Department;
import com.testsystem.admin.vo.User;
import com.testsystem.usercenter.dao.RegisterDao;
@Repository
public class RegisterDaoImpl implements RegisterDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public void RegisterUser(User user) {
		// TODO Auto-generated method stub
		String  ss= "insert into admin_user  (username,password,useravatar,enabled,normal,regtime) values ('"+user.getUsername()+"','"+user.getPassword()+"','"+user.getUseravatar()+"','"+user.getEnabled()+"','"+user.getNormal()+"','"+user.getRegtime()+"')" ;
		System.out.println("sssss"+ss);
		jdbcTemplate.update(ss);
	}
	
	

	
	
}
