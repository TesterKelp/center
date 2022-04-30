package com.testsystem.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.testsystem.admin.vo.Permission;
@Service
public interface PermissionService {
	
	public List permissionAllList();

	public List<Map<String, Object>> permissions(int groupid);

	public List MenuByGroupId(int groupid);

	public List MenuByGroups(String sql);

	public List permissionSetByGroupId(int groupid);

	public Boolean IsHave(int groupid, int permissionid);

	public void SyncGroupPermission(int groupid, int permissionid);

	public void CheckPermission(int groupid, int permissionid, int checkstatus);

	public int SavePermission(Permission permission);

	public int UpdatePermission(Permission permission);
	
	public void AddPermission(Permission permission);

	public void updateSort(Permission permission);

	public void DelPermission(int Permissionid);
    
}
