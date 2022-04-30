package com.testsystem.wift.dao;

import java.util.List;

import com.testsystem.wift.vo.Project;

public interface InProjectDao {
	
	public List GetProjectList();

	public void AddProject(Project project);

	public boolean HavePageOrModuleByProjectId(int projectId);

	public boolean DelProjectByProjectId(int projectId);

}
