package com.testsystem.mift.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mift.dao.MitfProjectDao;
import com.testsystem.mift.service.MitfProjectService;
import com.testsystem.mift.vo.MitfProject;

@Service
public class MitfProjectServiceImpl implements MitfProjectService{
	@Autowired
	private MitfProjectDao mitfProjectDao ;
	public List GetProjectList() {
		// TODO Auto-generated method stub
		return mitfProjectDao.GetProjectList();
	}
	public void AddProject(MitfProject mitfProject) {
		// TODO Auto-generated method stub
		mitfProjectDao.AddProject(mitfProject);
	}

}
