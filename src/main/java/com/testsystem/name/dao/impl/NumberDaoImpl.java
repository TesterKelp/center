package com.testsystem.name.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.testsystem.name.vo.Numb ;
import com.testsystem.name.dao.NumberDao;
import com.testsystem.name.vo.Dream;
@Repository
public class NumberDaoImpl implements NumberDao {

	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public Numb GetNumberByNum(String num) {
		// TODO Auto-generated method stub
		String sql="select  *  from  life_number    where  num='"+num+"'" ;
		Object  number= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Numb>(Numb.class)) ;
		return (Numb) number ;

	}
	
	
	
	
	
	
	
	
	
	
	
}
