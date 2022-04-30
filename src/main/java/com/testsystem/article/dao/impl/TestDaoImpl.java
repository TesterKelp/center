package com.testsystem.article.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.article.dao.TestDao;
@Repository
public class TestDaoImpl implements TestDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;

	
	@Override
	public void Updata(String sql) {
		// TODO Auto-generated method stub
		
		jdbcTemplate.update(sql);
		
	}

}
