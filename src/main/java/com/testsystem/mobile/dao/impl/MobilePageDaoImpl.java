package com.testsystem.mobile.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mobile.dao.MobilePageDao;
import com.testsystem.mobile.vo.MobilePage;
@Repository
public class MobilePageDaoImpl implements MobilePageDao {
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	

	public List GetPageList(int projectid) {
		// TODO Auto-generated method stub
		String sql = "select * from mo_page where projectid="+projectid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}

	public void AddPage(MobilePage mobilePage) {
		// TODO Auto-generated method stub
		String sql = "insert into mo_page(pagename,projectid) values ('"+mobilePage.getPagename()+"','"+mobilePage.getProjectid()+"')";
		//	System.out.println("221222"+sql);
			jdbcTemplate.update(sql);
	}

	public void DelPage(int pageid) {
		// TODO Auto-generated method stub
		String sql = "delete  from mo_page   where  pageid="+pageid;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

	public List GetPageList() {
		// TODO Auto-generated method stub
		String sql = "select * from mo_page ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}

	public boolean HavePageByProjectId(int projectid) {
		// TODO Auto-generated method stub
		
		Boolean s;
		String sql = " select count(*) from mo_page where  projectid="+projectid;
		int rs = jdbcTemplate.queryForInt(sql);

		if (rs > 0) {
			return true;
		} else {
			return false;
		}
	}

}
