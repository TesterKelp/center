package com.testsystem.mift.service;

import java.util.List;

import com.testsystem.mift.vo.MitfProject;

public interface MitfProjectService {

	public List GetProjectList();
	public void AddProject(MitfProject mitfProject);
}
