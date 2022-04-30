package com.testsystem.mobile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mobile.dao.MobilePageDao;
import com.testsystem.mobile.service.MobilePageService;
import com.testsystem.mobile.vo.MobilePage;
@Service
public class MobilePageServiceImpl implements MobilePageService {
	
	@Autowired
	private MobilePageDao mobilePageDao;

	public List GetPageList(int projectid) {
		// TODO Auto-generated method stub
		return mobilePageDao.GetPageList(projectid);
	}

	public void AddPage(MobilePage mobilePage) {
		// TODO Auto-generated method stub
		mobilePageDao.AddPage(mobilePage);
	}

	public void DelPage(int pageid) {
		// TODO Auto-generated method stub
		mobilePageDao.DelPage(pageid);
	}

	public List GetPageList() {
		// TODO Auto-generated method stub
		return mobilePageDao.GetPageList();
	}

	public boolean HavePageByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return mobilePageDao.HavePageByProjectId(projectid);
	}

}
