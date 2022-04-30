package com.testsystem.systemtest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.systemtest.dao.WebModuleDao;
import com.testsystem.systemtest.service.WebModuleService;
import com.testsystem.systemtest.vo.WebModule;
@Service
public class WebModuleServiceImpl implements WebModuleService {

	@Autowired
	private WebModuleDao webModuleDao ;
		
	public List GetStModuleSelect() {
		// TODO Auto-generated method stub
		return webModuleDao.GetStModuleSelect();
	}

	public List getModuleByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return webModuleDao.getModuleByProjectId(projectid);
	}

	public void addModule(WebModule webModule) {
		// TODO Auto-generated method stub
		webModuleDao.addModule(webModule);
	}

	public void DelModuleByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		webModuleDao.DelModuleByModuleId(moduleid);
	}

}
