package com.testsystem.quanxian.dao;

import java.util.List;

import com.testsystem.quanxian.vo.SysPermission;

public interface SysPermissionMapperDao {
    //�����û�id��ѯ�˵�
    public List<SysPermission> findMenuListByUserId(String userid)throws Exception;
    //�����û�id��ѯȨ��url
    public List<SysPermission> findPermissionListByUserId(String userid)throws Exception;
}
