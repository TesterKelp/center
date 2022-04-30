package com.testsystem.article.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.article.dao.BoredDao;
import com.testsystem.article.vo.Bored;
@Repository
public class BoredDaoImpl implements  BoredDao{
	
	
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	

	@Override
	public List BoredListByShow() {
		// TODO Auto-generated method stub
		String sql="select *  from bored where  dis=1" ;
		
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List BoredListByAll() {
		// TODO Auto-generated method stub
		String sql="select *  from bored " ;
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public void SpeakBored(Bored bored) {
		// TODO Auto-generated method stub
		String sql="insert into   (title,bored,boreder) values ('"+bored.getTitle()+"','"+bored.getBored()+"','"+bored.getBoreder()+"')   " ;
		jdbcTemplate.update(sql);
	}

	@Override
	public void SetBoredShow(int id) {
		// TODO Auto-generated method stub
		String sql="update  bored  set dis=1   where id="+id ;
		jdbcTemplate.update(sql);
	}

}
