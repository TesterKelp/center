package com.testsystem.admin.dao;

import java.util.List;

import com.testsystem.admin.vo.Member;
import com.testsystem.admin.vo.User;

public interface UserDao {
	public List GetUserList();

	List<User> GetUserByName(String username);

	public int getUserIdByUserName(String username);

	public List getUserGroupsByUserId(int userid);

	public String getUserEmail(int userid);
	
	
	public  Member GetMemberByUserId(int userid) ;
	
	public  List  GetUserInfo(int userid);
}
