package com.testsystem.name.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.article.vo.Topic;
import com.testsystem.name.dao.CalendarDao;
import com.testsystem.name.vo.Wxl;
@Repository
public class CalendarDaoImpl implements CalendarDao {

	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public int AddCalendar(Wxl wxl) {
		// TODO Auto-generated method stub
		
		
		String  sql="insert  into life_calendar ( dayg,dayn,dayy,day,xs,fs,cs,year,jieri,luck,dayluck,sesc,scluck,xingzuo) values( "
				+ "'"+wxl.getDayg()+"',"
				+ "'"+wxl.getDaynn()+"',"
				+ "'"+wxl.getDayy()+"',"
				+ "'"+wxl.getDay()+"',"
				+ "'"+wxl.getXs()+"',"
				+ "'"+wxl.getFs()+"',"
				+ "'"+wxl.getCs()+"',"
				+ "'"+wxl.getYear()+"',"
				+ "'"+wxl.getJieri()+"',"
				+ "'"+wxl.getLuck()+"',"
				+ "'"+wxl.getDayluck()+"',"
				+ "'"+wxl.getSesc()+"',"
				+ "'"+wxl.getScluck()+"',"
				+ "'"+wxl.getXingzuo()+"')";
		return jdbcTemplate.update(sql);
	}
	@Override
	public List DayAll() {
		// TODO Auto-generated method stub
		
		String sql=" select *  from   life_calendar  order by dayg " ;

		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public Wxl GetWxlById(int id) {
		// TODO Auto-generated method stub
		String sql = "select *  from life_calendar  where  id='"+id+"'";	
		Object wxl= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Wxl>(Wxl.class)) ;
		return (Wxl) wxl ;
	}
	@Override
	public List DayByYear(String year) {
		// TODO Auto-generated method stub
		String sql=" select *  from   life_calendar  where  dayn  like '"+year+"%'" ;

		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public Wxl NextWxlById(int id) {
		// TODO Auto-generated method stub
		
		
		
		String sql = "select *  from life_calendar  where  id>"+id+"  order by  id  asc  limit 1 ";
		Object wxl= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Wxl>(Wxl.class)) ;
		return (Wxl) wxl ;
	}
	@Override
	public Wxl PreviousWxlById(int id) {
		// TODO Auto-generated method stub
		String sql = "select *  from life_calendar  where  id<"+id+"  order by  id  desc  limit 1";	
		Object wxl= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Wxl>(Wxl.class)) ;
		return (Wxl) wxl ;
	}
	@Override
	public Wxl WnlByDate(String date) {
		// TODO Auto-generated method stub
		String sql = "select *  from life_calendar  where  dayn='"+date+"'";	
		Object wxl= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Wxl>(Wxl.class)) ;
		return (Wxl) wxl ;
	}
	
	
	
	
	
	
	
}
