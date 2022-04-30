package com.testsystem.systemtest.dao;

import java.util.List;

import com.testsystem.systemtest.vo.WebModule;

public interface WebModuleDao {
	public List GetStModuleSelect();
	public List getModuleByProjectId(int projectid);
	public void addModule(WebModule webModule);
	
	public  void  DelModuleByModuleId(int moduleid);
}
