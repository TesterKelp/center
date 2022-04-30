package com.testsystem.wift.service;

import java.util.List;

import com.testsystem.wift.vo.Module;
import com.testsystem.wift.vo.Project;

public interface ModuleService {
	public List GetModuleListByProjectId(int projectid);

	public void AddModule(Module module);

	public void DelWiftModule(int moduleid, int projectid);
}
