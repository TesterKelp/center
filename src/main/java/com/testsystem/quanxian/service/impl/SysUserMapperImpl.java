package com.testsystem.quanxian.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.quanxian.dao.SysUserMapperDao;
import com.testsystem.quanxian.service.SysUserMapper;
import com.testsystem.quanxian.vo.SysUser;
@Service
public class SysUserMapperImpl implements SysUserMapper {

	@Autowired
	private SysUserMapperDao  sysUserMapperDao ;
	public List<SysUser> getSysUserByUserCode(String usercode) {
		// TODO Auto-generated method stub
		return sysUserMapperDao.getSysUserByUserCode(usercode);
	}

}
