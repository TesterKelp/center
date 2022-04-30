package com.testsystem.systemtest.service;

import java.util.List;

import com.testsystem.systemtest.vo.WebProject;

public interface WebProjectService {

	
	public List GetStProjectAllList();
    public List GetStProjectSelect();
    public void AddStProject(WebProject webProject);
    public  void  DelProjectByProjectId(int projectid);
    
    
}
