package com.testsystem.quanxian.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.quanxian.dao.SysUserMapperDao;
import com.testsystem.quanxian.vo.SysUser;
@Repository
public class SysUserMapperDaoImpl implements SysUserMapperDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List<SysUser> getSysUserByUserCode(String usercode) {
		// TODO Auto-generated method stub
System.out.println("code£º"+usercode);
		String sql = "select id, usercode, username, password, salt, locked from sys_user  where  usercode='"+usercode+"'";		
//		List<SysUser> lst = new ArrayList();
		
		System.out.println("SQl"+sql);
//		List<SysUser> lst = jdbcTemplate.queryForList(sql,SysUser.class);
		
		List<SysUser> lst=this.jdbcTemplate.query(sql,new BeanPropertyRowMapper(SysUser.class));
		
		System.out.println("12345size"+lst.size());
		return lst;
	}
	
	
	
	
	
	
	
	

}
