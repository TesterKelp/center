package com.testsystem.mobile.service;

import java.util.List;

import com.testsystem.mobile.vo.MobileProject;

public interface MobileProjectService {

	
	public List GetStProjectAllList();
    public List GetStProjectSelect();
    public void AddStProject(MobileProject mobileProject);
    public  void  DelProjectByProjectId(int projectid);
    
    
}
