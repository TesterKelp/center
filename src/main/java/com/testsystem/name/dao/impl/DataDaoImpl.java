package com.testsystem.name.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.DataDao;
@Repository
public class DataDaoImpl implements DataDao {

	
	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public void insertSql(String sql) {
		// TODO Auto-generated method stub
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

}
