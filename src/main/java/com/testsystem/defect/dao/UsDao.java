package com.testsystem.defect.dao;

import java.util.List;

import com.testsystem.admin.vo.User;

public interface UsDao {
	public List GetUserList();
	
	List<User>  GetUserByName(String username);
	public int  getUserIdByUserName(String username);
	public List getUserGroupsByUserId(int userid);
}
