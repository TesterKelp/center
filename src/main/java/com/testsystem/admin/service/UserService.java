package com.testsystem.admin.service;

import java.util.List;

import com.testsystem.admin.vo.Member;
import com.testsystem.admin.vo.User;
import com.testsystem.quanxian.vo.SysUser;

public interface UserService {

	
	public List GetUserList();
	
	
	public  User getUserByName(String username);
	
//	List<User>  GetUserByName(String username);
	
	public int  getUserIdByUserName(String username);
	
	public List getUserGroupsByUserId(int userid);
	
	public String  getUserEmail(int userid);

	public  Member GetMemberByUserId(int userid) ;
	

	public  List  GetUserInfo(int userid);
	
	
}
