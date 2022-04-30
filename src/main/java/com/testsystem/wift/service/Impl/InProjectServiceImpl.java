package com.testsystem.wift.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.dao.EmailDao;
import com.testsystem.wift.dao.InProjectDao;
import com.testsystem.wift.service.InProjectService;
import com.testsystem.wift.vo.Project;

@Service
public class InProjectServiceImpl implements InProjectService{
	@Autowired
	private InProjectDao inProjectDao ;
	public List GetProjectList() {
		// TODO Auto-generated method stub
		return inProjectDao.GetProjectList();
	}
	public void AddProject(Project project) {
		// TODO Auto-generated method stub
		inProjectDao.AddProject(project);
	}

	  public boolean HavePageOrModuleByProjectId(int projectid)
	  {
	    return this.inProjectDao.HavePageOrModuleByProjectId(projectid);
	  }

	  public boolean DelProjectByProjectId(int projectid)
	  {
	    return this.inProjectDao.DelProjectByProjectId(projectid);
	  }
	
	
}
