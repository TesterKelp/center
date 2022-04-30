package com.testsystem.systemtest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.systemtest.dao.WebProjectDao;
import com.testsystem.systemtest.service.WebProjectService;
import com.testsystem.systemtest.vo.WebProject;
@Service
public class WebProjectServiceImpl implements WebProjectService {
@Autowired
private  WebProjectDao webProjectDao ;
	public List GetStProjectAllList() {
		// TODO Auto-generated method stub
		return webProjectDao.GetStProjectAllList();
	}
	public List GetStProjectSelect() {
		// TODO Auto-generated method stub
		return webProjectDao.GetStProjectSelect();
	}
	public void AddStProject(WebProject webProject) {
		// TODO Auto-generated method stub
		webProjectDao.AddStProject(webProject);
	}
	public void DelProjectByProjectId(int projectid) {
		// TODO Auto-generated method stub
		webProjectDao.DelProjectByProjectId(projectid);
	}

}
