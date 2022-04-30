package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.testsystem.admin.vo.User;
import com.testsystem.defect.dao.UsDao;
import com.testsystem.defect.service.UsService;


@Service
public class UsServiceImpl implements UsService{
	
	@Autowired
	private UsDao  userDao;
	public List GetUserList() {
		// TODO Auto-generated method stub
		return userDao.GetUserList();
	}
	public User getUserByName(String username) {
		// TODO Auto-generated method stub
		List<User> list = userDao.GetUserByName(username);
		System.out.println(list+"11111");
		if(list!=null && list.size()==1){
			
			
			System.out.println("list.get(0).getNormal();"+list.get(0).getNormal());
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

}
