package com.testsystem.usercenter.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.usercenter.dao.DataProDao;
import com.testsystem.usercenter.dao.PersionDao;
@Repository
public class DataProDaoImpl implements DataProDao {

	@Autowired
	JdbcTemplate jdbcTemplate ;
	
	@Override
	public void addSQl(String sql) {
		// TODO Auto-generated method stub
		
		
		jdbcTemplate.update(sql);
		
		
	}

	
	
	
	
	
	
	
	
	
}
