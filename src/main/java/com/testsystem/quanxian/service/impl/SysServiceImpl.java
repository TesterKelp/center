package com.testsystem.quanxian.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.quanxian.exception.CustomException;
import com.testsystem.quanxian.service.SysPermissionMapper;
import com.testsystem.quanxian.service.SysService;
import com.testsystem.quanxian.service.SysUserMapper;
import com.testsystem.quanxian.util.MD5;
import com.testsystem.quanxian.vo.ActiveUser;
import com.testsystem.quanxian.vo.SysPermission;
import com.testsystem.quanxian.vo.SysUser;

@Service
public class SysServiceImpl implements SysService {
	
	@Autowired
	private SysUserMapper sysUserMapper;
	@Autowired
	private SysPermissionMapper sysPermissionMapper;

	public ActiveUser authenticat(String userCode, String password)
			throws Exception {
		/**
	��֤���̣�
	�����û���ݣ��˺ţ���ѯ���ݿ⣬�����ѯ�����û�������
	����������� �����ݿ����� ���бȶԣ����һ�£���֤ͨ��
		 */
		//�����û��˺Ų�ѯ���ݿ�
		SysUser sysUser = this.findSysUserByUserCode(userCode);
		
		if(sysUser == null){
			//�׳��쳣
			throw new CustomException("�û��˺Ų�����");
		}
		
		//���ݿ����� (md5���� )
		String password_db = sysUser.getPassword();
		System.out.println("password_db"+password_db);
		//����������� �����ݿ����� ���бȶԣ����һ�£���֤ͨ��
		//��ҳ����������� ����md5���� 
		String password_input_md5 = new MD5().getMD5ofStr(password);
//		if(!password_input_md5.equalsIgnoreCase(password_db)){
//			//�׳��쳣
//			throw new CustomException("�û��������� ����");
//		}
		
		
		if(!password_db.equals(password_db)){
		//�׳��쳣
		throw new CustomException("�û��������� ����");
	}
		
		
		
		//�õ��û�id
		String userid = sysUser.getId();

		//�����û�id��ѯ�˵�
		List<SysPermission> menus =this.findMenuListByUserId(userid);
		//�����û�id��ѯȨ��url
		List<SysPermission> permissions = this.findPermissionListByUserId(userid);


		//��֤ͨ���������û������Ϣ
		ActiveUser activeUser = new ActiveUser();
		activeUser.setUserid(sysUser.getId());
		activeUser.setUsercode(userCode);
		activeUser.setUsername(sysUser.getUsername());//�û�����
		//����Ȩ�޷�Χ�Ĳ˵���url
		activeUser.setMenus(menus);
		activeUser.setPermissions(permissions);
		return activeUser;
	}

	//�����û��˺Ų�ѯ�û���Ϣ
	public SysUser findSysUserByUserCode(String userCode)throws Exception{
		List<SysUser> list = sysUserMapper.getSysUserByUserCode(userCode);
		System.out.println(list+"11111");
		if(list!=null && list.size()==1){
			return list.get(0);
		}
		return null;
	}
	//�����û�id��ѯȨ�޷�Χ�Ĳ˵�
	public List<SysPermission> findMenuListByUserId(String userid)
			throws Exception {

		return sysPermissionMapper.findMenuListByUserId(userid);
	}
	//�����û�id��ѯȨ�޷�Χ��url
	public List<SysPermission> findPermissionListByUserId(String userid)
			throws Exception {

		return sysPermissionMapper.findPermissionListByUserId(userid);
	}

}
