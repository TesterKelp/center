package com.testsystem.quanxian.service;

import java.util.List;

import com.testsystem.quanxian.vo.SysUser;

public interface SysUserMapper {

	
	List<SysUser> getSysUserByUserCode(String usercode);
}
