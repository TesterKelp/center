package com.testsystem.mift.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mift.dao.MitfModuleDao;
import com.testsystem.mift.service.MitfModuleService;
import com.testsystem.mift.vo.MitfModule;
@Service
public class MitfModuleServiceImpl implements MitfModuleService {
	@Autowired
	private MitfModuleDao mitfModuleDao ;


	public void AddModule(MitfModule  mitfModule) {
		// TODO Auto-generated method stub
		mitfModuleDao .AddModule(mitfModule);
	}


	public List GetModuleListByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return mitfModuleDao.GetModuleListByProjectId(projectid);
	}





	
	
	
	
}
