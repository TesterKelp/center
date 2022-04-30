package com.testsystem.systemtest.dao;

import java.util.List;

import com.testsystem.systemtest.vo.WebProject;

public interface WebProjectDao {
	
	public List GetStProjectAllList();
    public List GetStProjectSelect();
    public void AddStProject(WebProject webProject);
    public  void  DelProjectByProjectId(int projectid);
}
