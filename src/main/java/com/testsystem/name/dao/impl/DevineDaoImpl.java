package com.testsystem.name.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.DivineDao;
import com.testsystem.name.vo.Divin;
import com.testsystem.name.vo.Divine;
import com.testsystem.name.vo.Wxl;
@Repository
public class DevineDaoImpl implements DivineDao {

	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public List DivineList() {
		// TODO Auto-generated method stub
		String sql=" select *  from   life_divine    where  shower=1 " ;

		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public Divine GetDivineDetailBy(int id) {
		// TODO Auto-generated method stub
		String sql = "select *  from life_divine_detail  where  id='"+id+"'";	
		Object divine= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Divine>(Divine.class)) ;
		return (Divine) divine ;
	}
	@Override
	public List DivineDetailAll(int id) {
		// TODO Auto-generated method stub
		String sql=" select *  from   life_divine_detail    where  divineid='"+id+"'" ;

		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public Divin GetDivineBy(int id) {
		// TODO Auto-generated method stub
		String sql = "select *  from life_divine  where  id='"+id+"'";	
		Object divin= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Divin>(Divin.class)) ;
		return (Divin) divin ;
	}
	@Override
	public String GetJtBh(String jtz) {
		// TODO Auto-generated method stub
		
		String sql ="select jtbh from life_lib  where jtz='"+jtz+"'" ;
		return  (String)  jdbcTemplate.queryForObject(sql, java.lang.String.class);
		
	}
	@Override
	public Divine GetDivineDetailBy(int divineid, int qianid) {
		// TODO Auto-generated method stub
		
		String sql = "select *  from life_divine_detail  where  divineid='"+divineid+"' and qianid='"+qianid+"'    ";	
		Object divine= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Divine>(Divine.class)) ;
		return (Divine) divine ;
	}
	
	
	
	
}
