package com.testsystem.defect.service;

import java.util.List;

import com.testsystem.admin.vo.User;
import com.testsystem.quanxian.vo.SysUser;

public interface UsService {

	
	public List GetUserList();
	
	
	public  User getUserByName(String username);
	
//	List<User>  GetUserByName(String username);
	
	public int  getUserIdByUserName(String username);
	
	public List getUserGroupsByUserId(int userid);

}
