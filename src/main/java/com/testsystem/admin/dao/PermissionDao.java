package com.testsystem.admin.dao;

import java.util.List;
import java.util.Map;

import com.testsystem.admin.vo.Permission;

public interface PermissionDao {
	
	public List permissionAllList();

	public List<Map<String, Object>> permissions(int groupid);

	public List MenuByGroupId(int groupid);

	public List MenuByGroups(String sql);

	public List permissionSetByGroupId(int groupid);

	public Boolean IsHave(int groupid, int permissionid);

	public void SyncGroupPermission(int groupid, int permissionid);

	public void CheckPermission(int groupid, int permissionid, int checkstatus);

	public void AddPermission(Permission permission);

	public int UpdatePermission(Permission permission);
	
	public void updateSort(Permission permission);

	public void DelPermission(int Permissionid);

	public int SavePermission(Permission permission);

}
