package com.testsystem.name.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.DivinationDao;
@Repository
public class DivinationDaoImpl implements DivinationDao {


	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public double GetWeigth(String file, String d) {
		// TODO Auto-generated method stub
		
		String sql ="select weight from sm_chenggu_"+file+" where  "+file+"='"+d+"'" ;
		System.out.println("sql=="+sql);
		return  (double)  jdbcTemplate.queryForObject(sql, java.lang.Double.class);

	}
	@Override
	public List GetWeigth(String weight) {
		// TODO Auto-generated method stub
		
		 String sql = "select * from sm_chenggu      where weight='"+weight+"'" ;
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
