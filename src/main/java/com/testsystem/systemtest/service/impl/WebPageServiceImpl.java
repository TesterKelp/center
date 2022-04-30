package com.testsystem.systemtest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.systemtest.dao.WebPageDao;
import com.testsystem.systemtest.service.WebPageService;
import com.testsystem.systemtest.vo.WebPage;
@Service
public class WebPageServiceImpl implements WebPageService {
	
	@Autowired
	private WebPageDao webPageDao;

	public List GetPageList(int projectid) {
		// TODO Auto-generated method stub
		return webPageDao.GetPageList(projectid);
	}

	public void AddPage(WebPage webpage) {
		// TODO Auto-generated method stub
		webPageDao.AddPage(webpage);
	}

	public void DelPage(int pageid) {
		// TODO Auto-generated method stub
		webPageDao.DelPage(pageid);
	}

	public List GetPageList() {
		// TODO Auto-generated method stub
		return webPageDao.GetPageList();
	}

	public boolean HavePageByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return webPageDao.HavePageByProjectId(projectid);
	}

}
