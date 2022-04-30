package com.testsystem.admin.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.dao.PermissionDao;
import com.testsystem.admin.service.PermissionService;
import com.testsystem.admin.vo.Permission;
@Service
public class PermissionServiceImpl implements PermissionService {
	@Autowired
	private PermissionDao permissionDao ;
	public List permissionAllList() {
		// TODO Auto-generated method stub
		return permissionDao.permissionAllList();
	}
	public List<Map<String, Object>> permissions(int groupid) {
		// TODO Auto-generated method stub
		return permissionDao.permissions(groupid);
	}
	public List MenuByGroupId(int groupid) {
		// TODO Auto-generated method stub
		return permissionDao.MenuByGroupId(groupid);
	}
	public List permissionSetByGroupId(int groupid) {
		// TODO Auto-generated method stub
		return permissionDao.permissionSetByGroupId(groupid);
	}
	public List MenuByGroups(String sql) {
		// TODO Auto-generated method stub
		return permissionDao.MenuByGroups(sql);
	}
	public Boolean IsHave(int groupid, int permissionid) {
		// TODO Auto-generated method stub
		return permissionDao.IsHave(groupid, permissionid);
	}
	public void SyncGroupPermission(int groupid, int permissionid) {
		// TODO Auto-generated method stub
		permissionDao.SyncGroupPermission(groupid, permissionid);
	}
	public void CheckPermission(int groupid, int permissionid, int checkstatus) {
		// TODO Auto-generated method stub
		permissionDao.CheckPermission(groupid, permissionid, checkstatus);
	}
	public void AddPermission(Permission permission) {
		// TODO Auto-generated method stub
		permissionDao.AddPermission(permission);
	}
	@Override
	public void DelPermission(int Permissionid) {
		// TODO Auto-generated method stub
		permissionDao.DelPermission(Permissionid);
	}
	@Override
	public void updateSort(Permission permission) {
		// TODO Auto-generated method stub
		permissionDao.updateSort(permission);
	}
	@Override
	public int SavePermission(Permission permission) {
		// TODO Auto-generated method stub
		return permissionDao.SavePermission(permission);
	}
	@Override
	public int UpdatePermission(Permission permission) {
		// TODO Auto-generated method stub
		return permissionDao.UpdatePermission(permission);
	}


}
