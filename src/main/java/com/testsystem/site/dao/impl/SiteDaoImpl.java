package com.testsystem.site.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.backstage.vo.Special;
import com.testsystem.name.tools.P;
import com.testsystem.site.dao.SiteDao;
import com.testsystem.site.vo.Site;
@Repository
public class SiteDaoImpl implements SiteDao{

	
	
	 @Autowired
	 private JdbcTemplate jdbcTemplate ;
	 
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	
	@Override
	public Site GetSite() {
		// TODO Auto-generated method stub
		String sql="select  *  from  sys_info ";
		Site site =	(Site)jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper(Site.class)) ;
		return site;
	}


}
