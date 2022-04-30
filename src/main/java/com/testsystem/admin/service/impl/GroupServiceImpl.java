package com.testsystem.admin.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.dao.GroupDao;
import com.testsystem.admin.service.GroupService;
import com.testsystem.admin.vo.Group;


@Service
public class GroupServiceImpl implements GroupService {

	
	@Autowired
	private GroupDao groupDao ;

	public List<Map<String, Object>> getGroups(int userid) {
		// TODO Auto-generated method stub
		return groupDao.getGroups(userid);
	}

	public List GetGroupList() {
		// TODO Auto-generated method stub
		return groupDao.GetGroupList();
	}
	public List GetGroupUserList(int groupid) {
		// TODO Auto-generated method stub
		return groupDao.GetGroupUserList(groupid);
	}
	public int SaveGroup(Group group) {
		// TODO Auto-generated method stub
		return groupDao.SaveGroup(group);
	}
	public void DelGroup(int groupid) {
		// TODO Auto-generated method stub
		groupDao.DelGroup(groupid);
	}
	public List GetOutGroupUser(int groupid) {
		// TODO Auto-generated method stub
		return groupDao.GetOutGroupUser(groupid);
	}
	public void addUserToGroup(int groupid, int userid) {
		// TODO Auto-generated method stub
		 groupDao.addUserToGroup(groupid,userid);
	}
	public void groupDelUser(int groupid, int userid) {
		// TODO Auto-generated method stub
		groupDao.groupDelUser(groupid, userid);
	}

	@Override
	public void DelUserByGroupId(int groupid) {
		// TODO Auto-generated method stub
		groupDao.DelUserByGroupId(groupid);
	}

	@Override
	public void DelPermissonByGroupId(int groupid) {
		// TODO Auto-generated method stub
		groupDao.DelPermissonByGroupId(groupid);
	}

	@Override
	public void DelPermissonAllGroup(int Permissionid) {
		// TODO Auto-generated method stub
		groupDao.DelPermissonAllGroup(Permissionid);
	}
}
