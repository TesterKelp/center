package com.testsystem.mift.dao;

import java.util.List;

import com.testsystem.mift.vo.MitfProject;

public interface MitfProjectDao {
	
	
	public List GetProjectList();
	public void AddProject(MitfProject mitfProject);

}
