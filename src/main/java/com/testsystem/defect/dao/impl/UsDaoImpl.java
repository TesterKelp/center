package com.testsystem.defect.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import com.testsystem.admin.vo.User;
import com.testsystem.defect.dao.UsDao;
import com.testsystem.quanxian.vo.SysUser;
@Repository
public class UsDaoImpl implements  UsDao{
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	protected static Logger logger = Logger.getLogger("dao");  
	public List GetUserList() {
		String sql = "select * from admin_user ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List<SysUser> getSysUserByUserCode(String usercode) {
		System.out.println("code£º"+usercode);
		String sql = "select id, usercode, username, password, salt, locked from sys_user  where  usercode='"+usercode+"'";		
//		List<SysUser> lst = new ArrayList();
		System.out.println("SQl"+sql);
//		List<SysUser> lst = jdbcTemplate.queryForList(sql,SysUser.class);
		List<SysUser> lst=this.jdbcTemplate.query(sql,new BeanPropertyRowMapper(SysUser.class));
		System.out.println("12345size"+lst.size());
		return lst;
	}
	public List<User> GetUserByName(String username) {
		String sql = "select userid, username, password, useravatar, useremail, realname ,englishname,dept,telephone,qq,jobname,enabled ,normal from admin_user  where  username='"+username+"'";	
		System.out.println("SQl"+sql);
		List<User> lst=this.jdbcTemplate.query(sql,new BeanPropertyRowMapper<User>(User.class));
		System.out.println("12345size"+lst.size());
		System.out.println("login info:"+lst);
		return lst;
	}
	public int getUserIdByUserName(String username) {
		String sql = "select userid from admin_user  where  username='"+username+"'";	
		return jdbcTemplate.queryForInt(sql);
	}
	public List getUserGroupsByUserId(int userid) {
		String sql=" select groupid from admin_group_user where userid="+userid;
		return jdbcTemplate.queryForList(sql) ;
	}
	
	
	
	
	
	
	
	
	
	

}
