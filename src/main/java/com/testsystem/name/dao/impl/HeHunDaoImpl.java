package com.testsystem.name.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.HeHunDao;
@Repository
public class HeHunDaoImpl implements HeHunDao {

	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public List GetTaToTa(String t1, String t2) {
		// TODO Auto-generated method stub	
		String sql="select *  from  life_fate  where  t1='"+t1+"'  and t2='"+t2+"'  limit 1";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetLvCai(String ming) {
		// TODO Auto-generated method stub
		String sql="select *  from  life_fate  where  t1='"+ming+"'   limit 1";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetBenMingGua(String rs) {
		// TODO Auto-generated method stub
		String sql="select *  from  life_fate  where  content  like '%"+rs+"%'   limit 1";
		return jdbcTemplate.queryForList(sql);
	}

}
