package com.testsystem.mift.service;

import java.util.List;

import com.testsystem.mift.vo.MitfModule;

public interface MitfModuleService {
	public List GetModuleListByProjectId(int projectid);
	public void AddModule(MitfModule mitfModule);
}
