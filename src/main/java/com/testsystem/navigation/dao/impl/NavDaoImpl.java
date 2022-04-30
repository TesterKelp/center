package com.testsystem.navigation.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.navigation.dao.NavDao;
import com.testsystem.navigation.vo.Nav;
import com.testsystem.navigation.vo.Udate;
@Repository
public class NavDaoImpl implements NavDao {

	@Autowired JdbcTemplate jdbcTemplate ;
	String sql="";
	
	
	@Override
	public void addNav(Nav nav) {
		// TODO Auto-generated method stub
		sql=" insert into nav_site   (userid,site_url,site_name,open_way,icon,sort )  values('"+nav.getUserid()+"','"+nav.getSiteurl()+"','"+nav.getSitename()+"','"+nav.getOpenway()+"','"+nav.getPic()+"','"+nav.getPsort()+"')   ";
		
		jdbcTemplate.update(sql);
		
	}

	@Override
	public List NavList(int userid) {
		// TODO Auto-generated method stub
		sql="select * from nav_site where userid="+userid;
		return  jdbcTemplate.queryForList(sql);
	}

	@Override
	public List IndexBackGround(int userid) {
		// TODO Auto-generated method stub
		//sql="select * from user_pic where userid="+userid;
		sql="select * from user_pic where userid=0  and picstyle =1 and piccate=2  union  select * from user_pic where userid= "+userid+"  and  picstyle =1   and piccate=5" ;
		return  jdbcTemplate.queryForList(sql);
	}

	@Override
	public String GetIndexBackGround(int userid) {
		// TODO Auto-generated method stub
		sql="select bg from admin_user where userid="+userid;
		return  jdbcTemplate.queryForObject(sql, java.lang.String.class);

	}

	@Override
	public int SaveBg(int userid, String pic) {
		// TODO Auto-generated method stub
		String sql="insert   into user_pic  (userid,bg,picstyle,piccate) values('"+userid+"','"+pic+"','1','5') " ;
		int row = jdbcTemplate.update(sql);
		System.out.println("de row="+row);
		return row ;
	}

	@Override
	public List IndexIcon(int userid) {
		// TODO Auto-generated method stub
		String sql="select * from user_pic where userid=0  and picstyle =3 and piccate=2  union  select * from user_pic where userid= "+userid+"  and  picstyle =3   and piccate=5";
		return  jdbcTemplate.queryForList(sql);
	}

	@Override
	public int SetBg(int userid, String pic) {
		// TODO Auto-generated method stub
		String sql ="update  admin_user  set bg='"+pic+"' where userid="+userid ;
		int row = jdbcTemplate.update(sql);
		System.out.println("de row="+row);
		return row ;
	}

	@Override
	public int DelBg(int id) {
		// TODO Auto-generated method stub
		String sql="delete from user_pic  where  id="+id ;
		int row = jdbcTemplate.update(sql);
		System.out.println("de row="+row);
		return row ;
	}

	@Override
	public int DelNav(int id) {
		// TODO Auto-generated method stub
		String sql="delete from nav_site  where  site_id="+id ;
		int row = jdbcTemplate.update(sql);
		System.out.println("de row="+row);
		return row ;
	}

	@Override
	public void UPdateNav(Nav nav) {
		// TODO Auto-generated method stub
		String sql="update  nav_site set   "
				+"userid='"+nav.getUserid()
				+"', site_url='"+nav.getSiteurl()
				+"', site_name='"+nav.getSitename()
				+"', open_way='"+nav.getOpenway()
				+"', icon='"+nav.getPic()
				+"', sort='"+nav.getPsort()
				+"' where   site_id="+nav.getSiteid() ;
			
		jdbcTemplate.update(sql);
		
	}

	@Override
	public int BgModel(int userid) {
		// TODO Auto-generated method stub
		
		String sql="select  *  from admin_user_data  where userid="+userid ;
		
		return 0;
	}

	@Override
	public Udate GetUdate(int userid) {
		// TODO Auto-generated method stub
		String  sql="select  *  from admin_user_data  where userid="+userid ;
		
		Object udate = jdbcTemplate.queryForObject(sql,  new BeanPropertyRowMapper<Udate>(Udate.class)) ;
		
		return (Udate) udate;
	}

	@Override
	public int AddUdate(Udate udate) {
	// TODO Auto-generated method stub
	String sql="  insert into admin_user_data (userid,picmodel,fileon,wid,hei) values "
			+ "('"+udate.getUserid()+"','"+udate.getPicmodel()+"','"+udate.getFileon()+"','"+udate.getWid()+"','"+udate.getHei()+"')" ;
		return jdbcTemplate.update(sql);
	}

	@Override
	public int SetUdate(Udate udate) {
		// TODO Auto-generated method stub
		String sql ="update  admin_user_data  set picmodel='"+udate.getPicmodel()+"' where userid="+udate.getUserid() ;
		int row = jdbcTemplate.update(sql);
		System.out.println("de row="+row);
		return row ;
	}

	@Override
	public int UpUdate(String key, String value,Udate udate) {
		// TODO Auto-generated method stub
		String sql ="update  admin_user_data  set "+key+"='"+value+"' where userid="+udate.getUserid() ;
		int row = jdbcTemplate.update(sql);
		System.out.println("de row="+row);
		return row ;
	}



}
