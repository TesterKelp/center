package com.testsystem.mobile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mobile.dao.MobileConfigureDao;
import com.testsystem.mobile.service.MobileConfigureService;
@Service
public class MobileConfigureServiceImpl implements MobileConfigureService {

	@Autowired
	private MobileConfigureDao mobileConfigureDao ;
		
	public List GetConfigureByUserId(int userid) {
		// TODO Auto-generated method stub
		return mobileConfigureDao.GetConfigureByUserId(userid);
	}

	public void UpdataMacSolo(int macid, String maxcsolo) {
		// TODO Auto-generated method stub
		mobileConfigureDao.UpdataMacSolo(macid, maxcsolo);
	}

}
