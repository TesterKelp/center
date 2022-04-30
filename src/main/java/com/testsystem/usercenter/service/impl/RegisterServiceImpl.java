package com.testsystem.usercenter.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.vo.User;
import com.testsystem.usercenter.dao.RegisterDao;
import com.testsystem.usercenter.service.RegisterService;
@Service
public class RegisterServiceImpl implements RegisterService {
	
    @Autowired
    private RegisterDao registerDao ;

	public void RegisterUser(User user) {
		// TODO Auto-generated method stub
		registerDao.RegisterUser(user);
	}

}
