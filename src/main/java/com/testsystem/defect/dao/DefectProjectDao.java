package com.testsystem.defect.dao;

import java.util.List;

import com.testsystem.defect.vo.Project;

public interface DefectProjectDao {
	public  List GetDefectProjectListAll();
	
	public  int  CreateProject(Project  project);
	
	  public  void SetProjectScheme(int projectId, int schemeId, String fieldName);

	  public  void resetProjectId(int projectId, int userId);
		public  void  delDefectProject(int projectId);
}
