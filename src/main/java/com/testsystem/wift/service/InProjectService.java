package com.testsystem.wift.service;

import java.util.List;

import com.testsystem.wift.vo.Project;

public interface InProjectService {

	public List GetProjectList();

	public void AddProject(Project project);

	public boolean HavePageOrModuleByProjectId(int projectId);

	public boolean DelProjectByProjectId(int projectId);
}
