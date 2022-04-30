package com.testsystem.quanxian.shiro;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.testsystem.quanxian.service.SysService;
import com.testsystem.quanxian.vo.ActiveUser;
import com.testsystem.quanxian.vo.SysPermission;
import com.testsystem.quanxian.vo.SysUser;

public class CustomRealm extends AuthorizingRealm {
	
	//ע��service
	@Autowired
	private SysService sysService;

	// ����realm������
	@Override
	public void setName(String name) {
		super.setName("customRealm");
	}

	// ������֤
	//realm����֤�����������ݿ��ѯ�û���Ϣ
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		
		// token���û�������û��������� 
		// ��һ����token��ȡ���û���
		String userCode = (String) token.getPrincipal();

		// �ڶ����������û������userCode�����ݿ��ѯ
		SysUser sysUser = null;
		try {
			sysUser = sysService.findSysUserByUserCode(userCode);
		} catch (Exception e1) {
			e1.printStackTrace();
		}

		// �����ѯ��������null
		if(sysUser==null){//
			return null;
		}
		// �����ݿ��ѯ������
		String password = sysUser.getPassword();
		
		//��
		String salt = sysUser.getSalt();

		// �����ѯ��������֤��ϢAuthenticationInfo
		
		//activeUser�����û������Ϣ
		ActiveUser activeUser = new ActiveUser();
		
		activeUser.setUserid(sysUser.getId());
		activeUser.setUsercode(sysUser.getUsercode());
		activeUser.setUsername(sysUser.getUsername());
		//..
		
		//�����û�idȡ���˵�
		List<SysPermission> menus  = null;
		try {
			//ͨ��serviceȡ���˵� 
			menus = sysService.findMenuListByUserId(sysUser.getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		//���û��˵� ���õ�activeUser
		activeUser.setMenus(menus);

		//��activeUser����simpleAuthenticationInfo
		SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(
				activeUser, password,ByteSource.Util.bytes(salt), this.getName());

		return simpleAuthenticationInfo;
	}
	
	

	// ������Ȩ
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		
		//�� principals��ȡ�������Ϣ
		//��getPrimaryPrincipal��������ֵתΪ��ʵ������ͣ����ϱߵ�doGetAuthenticationInfo��֤ͨ����䵽SimpleAuthenticationInfo��������ͣ���
		ActiveUser activeUser =  (ActiveUser) principals.getPrimaryPrincipal();
		
		//���������Ϣ��ȡȨ����Ϣ
		//�����ݿ��ȡ��Ȩ������
		List<SysPermission> permissionList = null;
		try {
			permissionList = sysService.findMenuListByUserId(activeUser.getUserid());
		} catch (Exception e) {
			e.printStackTrace();
		}
		//������һ�����϶��� 
		List<String> permissions = new ArrayList<String>();
		if(permissionList!=null){
			for(SysPermission sysPermission:permissionList){
				//�����ݿ��е�Ȩ�ޱ�ǩ �����뼯��
				permissions.add(sysPermission.getPercode());
			}
		}
		
		//�鵽Ȩ�����ݣ�������Ȩ��Ϣ(Ҫ���� �ϱߵ�permissions)
		SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
		//���ϱ߲�ѯ����Ȩ��Ϣ��䵽simpleAuthorizationInfo������
		simpleAuthorizationInfo.addStringPermissions(permissions);

		return simpleAuthorizationInfo;
	}
	
	//========================================�������=====================================================
	public void clearCached() {
		PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
		super.clearCache(principals);
	}


}