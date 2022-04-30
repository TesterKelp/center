package com.testsystem.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.dao.EmailDao;
import com.testsystem.admin.service.EmailService;
import com.testsystem.admin.vo.Email;
@Service
public class EmailServiceImpl implements EmailService {
	@Autowired
	private EmailDao emailDao ;
	public List GetEmailInfo() {
		// TODO Auto-generated method stub
		return emailDao.GetEmailInfo() ;
	}
	public Email GetEmailImfo() {
		// TODO Auto-generated method stub
		return emailDao.GetEmailImfo();
	}
	

}
