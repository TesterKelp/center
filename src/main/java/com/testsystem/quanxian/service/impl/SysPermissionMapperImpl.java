package com.testsystem.quanxian.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.quanxian.dao.SysPermissionMapperDao;
import com.testsystem.quanxian.service.SysPermissionMapper;
import com.testsystem.quanxian.vo.SysPermission;
@Service
public class SysPermissionMapperImpl implements SysPermissionMapper {
	
	@Autowired
	private SysPermissionMapperDao sysPermissionMapperDao ;

	public List<SysPermission> findMenuListByUserId(String userid) throws Exception {
		// TODO Auto-generated method stub
		return sysPermissionMapperDao.findMenuListByUserId(userid);
	}

	public List<SysPermission> findPermissionListByUserId(String userid) throws Exception {
		// TODO Auto-generated method stub
		return sysPermissionMapperDao.findPermissionListByUserId(userid);
	}

}
