package com.testsystem.mobile.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mobile.dao.MobileConfigureDao;
@Repository
public class MobileConfigureDaoImpl implements MobileConfigureDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	public List GetConfigureByUserId(int userid) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from admin_user_con a ,admin_user b where  a.userid=b.userid and a.userid = "+userid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		//System.out.println(lst);
		return lst;
	}
	public void UpdataMacSolo(int macid, String maxcsolo) {
		// TODO Auto-generated method stub
		String sql = "UPDATE admin_user_con  set  maxcsolo ='"+maxcsolo+"'  where  macid="+macid;
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	

}
