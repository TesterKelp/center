package com.testsystem.quanxian.dao;

import java.util.List;

import com.testsystem.quanxian.vo.SysUser;

public interface SysUserMapperDao {
	List<SysUser> getSysUserByUserCode(String usercode);
}
