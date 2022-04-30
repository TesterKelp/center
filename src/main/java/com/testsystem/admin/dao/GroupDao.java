package com.testsystem.admin.dao;

import java.util.List;
import java.util.Map;

import com.testsystem.admin.vo.Group;

public interface GroupDao {
	public List<Map<String,Object>> getGroups(int userid);
	
	public List GetGroupList() ;
	
	public List GetGroupUserList(int groupid);
	
	public int  SaveGroup(Group group);
	public void DelGroup(int groupid);
	public List GetOutGroupUser(int groupid);
	public void addUserToGroup(int groupid ,int userid);
	public void groupDelUser(int groupid ,int userid);
	public  void  DelUserByGroupId(int  groupid);
	public   void  DelPermissonByGroupId(int  groupid);
	public  void  DelPermissonAllGroup( int Permissionid);
}
