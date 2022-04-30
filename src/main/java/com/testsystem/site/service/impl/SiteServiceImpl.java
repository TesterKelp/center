package com.testsystem.site.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.tools.P;
import com.testsystem.site.dao.SiteDao;
import com.testsystem.site.service.SiteService;
import com.testsystem.site.vo.Site;
@Service
public class SiteServiceImpl   implements SiteService {

	
	
	@Autowired
	private SiteDao siteDao ;

	@Override
	public Site GetSite() {
		// TODO Auto-generated method stub
		return siteDao.GetSite();
	}




	
	
	
	
	
	
}
