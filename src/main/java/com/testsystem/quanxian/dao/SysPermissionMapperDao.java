package com.testsystem.quanxian.dao;

import java.util.List;

import com.testsystem.quanxian.vo.SysPermission;

public interface SysPermissionMapperDao {
    //根据用户id查询菜单
    public List<SysPermission> findMenuListByUserId(String userid)throws Exception;
    //根据用户id查询权限url
    public List<SysPermission> findPermissionListByUserId(String userid)throws Exception;
}
