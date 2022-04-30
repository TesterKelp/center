package com.testsystem.systemtest.service;

import java.util.List;

import com.testsystem.systemtest.vo.WebModule;

public interface WebModuleService {

	
	public List GetStModuleSelect();
	public List getModuleByProjectId(int projectid);
	public void addModule(WebModule webModule);
	public  void  DelModuleByModuleId(int moduleid);
}
