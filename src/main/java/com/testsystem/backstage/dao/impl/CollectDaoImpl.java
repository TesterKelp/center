package com.testsystem.backstage.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.backstage.dao.CollectDao;
@Repository
public class CollectDaoImpl implements CollectDao {

	@Autowired
	private JdbcTemplate jdbcTemplate ;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}







	@Override
	public List CollectItemList() {
		// TODO Auto-generated method stub
		String sql ="select * from article_collect ";
		return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetItemCate(int itemid) {
		// TODO Auto-generated method stub
		String sql ="select * from article_collect_cate  where itemid="+itemid ;
		return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public void AddDataToCollectContent(String sql) {
		// TODO Auto-generated method stub
		jdbcTemplate.update(sql);
	}

	@Override
	public List GetItemWenZhang(int itemid) {
		// TODO Auto-generated method stub
		
		String sql ="select *  from  article_collect_content  as c , "
		+"( select  *  from  article_collect_cate  where itemid="+itemid+" ) as f  where c.cid =f.id limit 300" ;
		return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetCollectWenZhang(int wid) {
		// TODO Auto-generated method stub
		
		String sql ="select *  from  article_collect_content  where wid="+wid ;
		System.out.println("sq===="+sql);
		return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetCollectCateWenZhang(int cid) {
		// TODO Auto-generated method stub
		String sql ="select *  from  article_collect_content  where cid="+cid ;
		System.out.println("sq===="+sql);
		return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public void AddCollectToArticle(String sql) {
		// TODO Auto-generated method stub
		jdbcTemplate.update(sql);
	}

}
