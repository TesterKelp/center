package com.testsystem.mobile.service;

import java.util.List;

import com.testsystem.mobile.vo.MobileModule;

public interface MobileModuleService {

	
	public List GetStModuleSelect();
	public List getModuleByProjectId(int projectid);
	public void addModule(MobileModule mobileModule);
	public  void  DelModuleByModuleId(int moduleid);
}
