package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.MenuDao;
import com.testsystem.defect.vo.Menu;
@Repository
public class MenuDaoImpl implements MenuDao {

	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	
	
	public List GetDefectMenu() {
		// TODO Auto-generated method stub
		String sql= "select * from defect_menu    where   menutype=1  and  isshow=1   order by sort" ;
		return jdbcTemplate.queryForList(sql);
	}

	public void AddMenu(Menu menu) {
		// TODO Auto-generated method stub
		String sql= "insert    into        defect_menu    (menuname,menuurl,menutarget,sort,menutype,isshow)  values ('"+menu.getMenuname()+"','"+menu.getMenuurl()+"','"+menu.getMenutarget()+"','"+menu.getSort()+"','"+menu.getMenutype()+"','"+menu.getIsshow()+"')" ;
		
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

	public void DelMenu(int menuid) {
		// TODO Auto-generated method stub
		String sql ="delete  from defect_menu where menuid="+menuid ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

	public void UpdataMenu(Menu menu) {
		// TODO Auto-generated method stub
		String updatasql=" update defect_menu  set menuname='"+menu.getMenuname()+"'    menuurl= '"+menu.getMenuurl()+"'  sort='"+menu.getSort()+"'"
				+ "menutarget= '"+menu.getMenutarget()+"'";
		jdbcTemplate.update(updatasql);
	}

	public void UpdataMenuFiled(String filename, String value,int menuid) {
		// TODO Auto-generated method stub
		String  sql="update defect_menu  set "+filename+"='"+value+"'     where  menuid="+menuid;
		
		jdbcTemplate.update(sql);
	}

	@Override
	public List GetShareMenu() {
		// TODO Auto-generated method stub
		String sql= "select * from defect_menu    where   menutype=2  and  isshow=1   order by sort" ;
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetDefectAndShareMenu() {
		// TODO Auto-generated method stub
		String sql= "select * from defect_menu     order by  menutype , sort" ;
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public void SetMenuShow(int menuid, int isshow) {
		// TODO Auto-generated method stub
	String  sql="update defect_menu     set isshow='"+isshow+"'     where  menuid="+menuid;
		
		jdbcTemplate.update(sql);
	}

}
