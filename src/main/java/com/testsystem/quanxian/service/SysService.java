package com.testsystem.quanxian.service;

import java.util.List;

import com.testsystem.quanxian.vo.ActiveUser;
import com.testsystem.quanxian.vo.SysPermission;
import com.testsystem.quanxian.vo.SysUser;

public interface SysService {

	//�����û�����ݺ����� ������֤�������֤ͨ���������û������Ϣ
	public ActiveUser authenticat(String userCode, String password) throws Exception;

	//�����û��˺Ų�ѯ�û���Ϣ
	public SysUser findSysUserByUserCode(String userCode)throws Exception;

	//�����û�id��ѯȨ�޷�Χ�Ĳ˵�
	public List<SysPermission> findMenuListByUserId(String userid)throws Exception;

	//�����û�id��ѯȨ�޷�Χ��url
	public List<SysPermission> findPermissionListByUserId(String userid) throws Exception;
}