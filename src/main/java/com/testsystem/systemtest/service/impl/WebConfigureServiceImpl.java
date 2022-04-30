package com.testsystem.systemtest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.systemtest.dao.WebConfigureDao;
import com.testsystem.systemtest.service.WebConfigureService;
@Service
public class WebConfigureServiceImpl implements WebConfigureService {

	@Autowired
	private WebConfigureDao webConfigureDao ;
		
	public List GetConfigureByUserId(int userid) {
		// TODO Auto-generated method stub
		return webConfigureDao.GetConfigureByUserId(userid);
	}

	public void UpdataMacSolo(int macid, String maxcsolo) {
		// TODO Auto-generated method stub
		webConfigureDao.UpdataMacSolo(macid, maxcsolo);
	}

}
