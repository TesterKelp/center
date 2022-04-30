package com.testsystem.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.dao.UserDao;
import com.testsystem.admin.service.UserService;
import com.testsystem.admin.vo.Member;
import com.testsystem.admin.vo.User;


@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao  userDao;
	public List GetUserList() {
		// TODO Auto-generated method stub
		return userDao.GetUserList();
	}
	public User getUserByName(String username) {
		// TODO Auto-generated method stub
		List<User> list = userDao.GetUserByName(username);
		if(list!=null && list.size()==1){
			return list.get(0);
		}
		return null;
	}
	public int getUserIdByUserName(String username) {
		// TODO Auto-generated method stub
		return userDao.getUserIdByUserName(username);
	}
	public List getUserGroupsByUserId(int userid) {
		// TODO Auto-generated method stub
		return userDao.getUserGroupsByUserId(userid);
	}
	public String getUserEmail(int userid) {
		// TODO Auto-generated method stub
		return userDao.getUserEmail(userid);
	}
	@Override
	public Member GetMemberByUserId(int userid) {
		// TODO Auto-generated method stub
		return userDao.GetMemberByUserId(userid);
	}
	@Override
	public List GetUserInfo(int userid) {
		// TODO Auto-generated method stub
		return userDao.GetUserInfo(userid);
	}

}
