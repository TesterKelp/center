package com.testsystem.name.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.BaseDao;
import com.testsystem.name.dao.DataDao;
@Repository
public class BaseDaoImpl implements BaseDao{

	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	
	
	
	@Override
	public List GetInfoList(String sql) {
		// TODO Auto-generated method stub
//		 String sql = "select * from life_cate as a ,life_content as b   where a.id =b.cateid and a.id="+id ;
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
	}

	@Override
	public void AddInfo(String sql) {
		// TODO Auto-generated method stub
		jdbcTemplate.update(sql);
	}



	@Override
	public void UpdataInfo(String sql) {
		// TODO Auto-generated method stub
		jdbcTemplate.update(sql);
	}



	@Override
	public void DelInfo(String sql) {
		// TODO Auto-generated method stub

		jdbcTemplate.update(sql);
	}



	@Override
	public List GetList(String sql) {
		// TODO Auto-generated method stub
		return jdbcTemplate.queryForList(sql);
	}
}
