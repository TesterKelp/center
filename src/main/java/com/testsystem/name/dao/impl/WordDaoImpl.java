package com.testsystem.name.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.WordDao;
import com.testsystem.name.vo.Dream;
import com.testsystem.name.vo.Kangxi;
@Repository
public class WordDaoImpl implements WordDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public Kangxi GetKeyByWord(String word) {
		// TODO Auto-generated method stub
		
		String sql="select  *  from  life_lib    where  jtz='"+word+"'" ;
		Object  kangxi= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Kangxi>(Kangxi.class)) ;
		return (Kangxi) kangxi ;

	}

}
