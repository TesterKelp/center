package com.testsystem.wift.dao;

import java.util.List;

import com.testsystem.wift.vo.Module;

public interface ModuleDao {
	public List GetModuleListByProjectId(int projectid);

	public void AddModule(Module module);

	public void DelWiftModule(int moduleid, int projectid);
}
