package com.testsystem.admin.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.dao.EmailDao;
import com.testsystem.admin.vo.Email;
import com.testsystem.admin.vo.User;
@Repository
public class EmailDaoImpl implements EmailDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	public List GetEmailInfo() {
		// TODO Auto-generated method stub
		String sql = "select * from admin_email ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public Email GetEmailImfo() {
		// TODO Auto-generated method stub
		String sql = "select id,isued ,fromemail,fromname, smtpserver,smtpport,istry ,smtpname,smtppass   from admin_email  ";	
		System.out.println("SQl"+sql);
		Email  email=(Email) jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper(Email.class));

		return email;
	}

}
