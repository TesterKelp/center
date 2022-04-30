package com.testsystem.mobile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mobile.dao.MobileModuleDao;
import com.testsystem.mobile.service.MobileModuleService;
import com.testsystem.mobile.vo.MobileModule;
@Service
public class MobileModuleServiceImpl implements MobileModuleService {

	@Autowired
	private MobileModuleDao mobileModuleDao ;
		
	public List GetStModuleSelect() {
		// TODO Auto-generated method stub
		return mobileModuleDao.GetStModuleSelect();
	}

	public List getModuleByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return mobileModuleDao.getModuleByProjectId(projectid);
	}

	public void addModule(MobileModule mobileModule) {
		// TODO Auto-generated method stub
		mobileModuleDao.addModule(mobileModule);
	}

	public void DelModuleByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		mobileModuleDao.DelModuleByModuleId(moduleid);
	}

}
