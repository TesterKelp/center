package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.defect.dao.DefectProjectDao;
import com.testsystem.defect.service.DefectProjectService;
import com.testsystem.defect.vo.Project;
@Service
public class DefectProjectServiceImpl implements DefectProjectService {

	@Autowired
	private 	DefectProjectDao defectProjectDao;
	
	
	@Override
	public List GetDefectProjectListAll() {
		// TODO Auto-generated method stub
		return defectProjectDao.GetDefectProjectListAll();
	}


	@Override
	public int  CreateProject(Project project) {
		// TODO Auto-generated method stub
	return	defectProjectDao.CreateProject(project);
	}
	
	
	
	 public void SetProjectScheme(int projectId, int schemeId, String fieldName)
	  {
	    this.defectProjectDao.SetProjectScheme(projectId, schemeId, fieldName);
	  }

	  public void resetProjectId(int projectId, int userId)
	  {
	    this.defectProjectDao.resetProjectId(projectId, userId);
	  }


	@Override
	public void delDefectProject(int projectId) {
		// TODO Auto-generated method stub
	this.defectProjectDao.delDefectProject(projectId);
	}
	
	
	
	
	
	
	
	
	

}
