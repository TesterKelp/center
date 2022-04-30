package com.testsystem.mobile.dao;

import java.util.List;

import com.testsystem.mobile.vo.MobileProject;

public interface MobileProjectDao {
	
	public List GetStProjectAllList();
    public List GetStProjectSelect();
    public void AddStProject(MobileProject mobileProject);
    public  void  DelProjectByProjectId(int projectid);
}
