package com.testsystem.name.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.NameTopicDao;
@Repository
public class NameTopicDaoImpl implements NameTopicDao {

	
	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	
	
	
	@Override
	public List GetAllNameTopic() {
		// TODO Auto-generated method stub

			 String sql = "select * from life_topic  ";
				List lst = new ArrayList();
				lst = jdbcTemplate.queryForList(sql);
				return lst;
		
	}



	@Override
	public List GetAllNameTopicById(int id) {
		// TODO Auto-generated method stub
		 String sql = "select * from life_topic  where  topicid="+id;
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
	}



	@Override
	public List GetTopicById(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from life_content  where  topicid="+id;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}

}
