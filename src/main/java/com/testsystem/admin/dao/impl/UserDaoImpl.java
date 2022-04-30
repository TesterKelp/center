package com.testsystem.admin.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.dao.UserDao;
import com.testsystem.admin.vo.Member;
import com.testsystem.admin.vo.User;
import com.testsystem.article.vo.Topic;
import com.testsystem.quanxian.vo.SysUser;
@Repository
public class UserDaoImpl implements  UserDao{
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
		System.out.println("code��"+usercode);
		String sql = "select id, usercode, username, password, salt, locked from sys_user  where  usercode='"+usercode+"'";		
//		List<SysUser> lst = new ArrayList();
//		List<SysUser> lst = jdbcTemplate.queryForList(sql,SysUser.class);
		List<SysUser> lst=this.jdbcTemplate.query(sql,new BeanPropertyRowMapper(SysUser.class));
		return lst;
	}
	public List<User> GetUserByName(String username) {
		String sql = "select userid, username, password, useravatar, useremail, realname ,englishname,dept,telephone,qq,jobname,enabled ,normal ,bg from admin_user  where  username='"+username+"'";	
		List<User> lst=this.jdbcTemplate.query(sql,new BeanPropertyRowMapper<User>(User.class));
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
	public String getUserEmail(int userid) {
		// TODO Auto-generated method stub
		
		String sql = "select useremail from admin_user  where  userid="+userid  ;	
		//jdbcTemplate.queryForObject(sql, java.lang.String.class);
System.out.println("sql::::::::"+sql);
		String userAccount=(String)jdbcTemplate.queryForObject(sql, java.lang.String.class); 
//		String  email  =  (String) jdbcTemplate.queryForObject(sql, String.class);
		System.out.println("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:"+userAccount);
		return userAccount ;
	}
	@Override
	public Member GetMemberByUserId(int userid) {
		// TODO Auto-generated method stub
		String sql = "select userid, username, password, useravatar, useremail, realname ,englishname,dept,telephone,qq,jobname,enabled ,normal ,bg ,regtime"
				+ " from admin_user   "
				+ " where  userid='"+userid+"'";	
		Object member= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Member>(Member.class)) ;
		return (Member) member ;
	}
	@Override
	public List GetUserInfo(int userid) {
		// TODO Auto-generated method stub
		
		String sql=" select * from admin_user where userid="+userid;
		System.out.println("sql:"+sql);
		return jdbcTemplate.queryForList(sql) ;
	}
	
	
	
	
	
	
	
	
	
	

}
