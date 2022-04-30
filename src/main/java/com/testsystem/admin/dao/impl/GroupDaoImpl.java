package com.testsystem.admin.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.dao.GroupDao;
import com.testsystem.admin.vo.Group;
@Repository
public class GroupDaoImpl implements GroupDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}

	public List<Map<String, Object>> getGroups(int userid) {
		// TODO Auto-generated method stub
		String sql = "SELECT r.* FROM admin_group_user ur, admin_group r WHERE ur.groupid = r.groupid AND ur.userid="+userid;
		return jdbcTemplate.queryForList(sql);
	
	}
	
	public List GetGroupList() {
		// TODO Auto-generated method stub
		String sql= "select * from admin_group  " ;
		return jdbcTemplate.queryForList(sql);
	}
	public List GetGroupUserList(int groupid) {
		// TODO Auto-generated method stub
		String sql= "select b.realname,a.userid  from admin_group_user a ,admin_user b  where  a.userid=b.userid  and   a.groupid = "+groupid  ;
		return jdbcTemplate.queryForList(sql);
	}
	public  int  SaveGroup(Group group) {
		// TODO Auto-generated method stub
		String  ss= "insert into admin_group  (name,desct,role) values "
	             +"('"+group.getName()+"','"+group.getDesct()+"','"+group.getRole()+"')" ;
  System.out.println("sssss"+ss);
	jdbcTemplate.update(ss);
	return	 jdbcTemplate.queryForInt("select @@identity") ;
	}
	public void DelGroup(int groupid) {
		// TODO Auto-generated method stub
		String sql ="delete  from  admin_group where groupid='"+groupid+"'" ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}
	public List GetOutGroupUser(int groupid) {
		// TODO Auto-generated method stub
		String sql= "select * from admin_user   where userid not in(select userid  from admin_group_user  where  groupid = "+groupid +")";
		return jdbcTemplate.queryForList(sql);
	}
	public void addUserToGroup(int groupid, int userid) {
		// TODO Auto-generated method stub
		String  ss= "insert into admin_group_user  (groupid,userid) values "
	             +"('"+groupid+"','"+userid+"')" ;
	
 System.out.println("sssss"+ss);
	jdbcTemplate.update(ss);
	}
	public void groupDelUser(int groupid, int userid) {
		// TODO Auto-generated method stub
		String sql ="delete  from  admin_group_user where groupid='"+groupid+"' and userid ='"+userid+"'" ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

	@Override
	public void DelUserByGroupId(int groupid) {
		// TODO Auto-generated method stub
		String  sql="delete  from  admin_group_user where groupid ='"+groupid+"'" ;
		
		jdbcTemplate.update(sql);
	}

	@Override
	public void DelPermissonByGroupId(int groupid) {
		// TODO Auto-generated method stub
	String  sql="delete  from  admin_group_permission  where group_id ='"+groupid+"'" ;
		
		jdbcTemplate.update(sql);
	}

	@Override
	public void DelPermissonAllGroup(int Permissionid) {
		// TODO Auto-generated method stub
		String sql ="delete  from  admin_group_permission   where permission_id='"+Permissionid+"'" ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}


}
