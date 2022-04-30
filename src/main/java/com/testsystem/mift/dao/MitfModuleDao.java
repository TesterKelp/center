package com.testsystem.mift.dao;

import java.util.List;

import com.testsystem.mift.vo.MitfModule;

public interface MitfModuleDao {
	public List GetModuleListByProjectId(int projectid);
	public void AddModule(MitfModule mitfModule);
}
