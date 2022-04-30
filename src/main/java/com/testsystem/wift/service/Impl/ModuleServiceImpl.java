package com.testsystem.wift.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.wift.dao.ModuleDao;
import com.testsystem.wift.service.ModuleService;
import com.testsystem.wift.vo.Module;
@Service
public class ModuleServiceImpl implements ModuleService {
	@Autowired
	private ModuleDao moduleDao ;


	public void AddModule(Module module) {
		// TODO Auto-generated method stub
		moduleDao.AddModule(module);
	}


	public List GetModuleListByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return moduleDao.GetModuleListByProjectId(projectid);
	}

	  public void DelWiftModule(int moduleid, int projectid)
	  {
	    this.moduleDao.DelWiftModule(moduleid, projectid);
	  }
	
	
	
	
}
