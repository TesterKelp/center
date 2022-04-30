package com.testsystem.mobile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mobile.dao.MobileProjectDao;
import com.testsystem.mobile.service.MobileProjectService;
import com.testsystem.mobile.vo.MobileProject;
@Service
public class MobileProjectServiceImpl implements MobileProjectService {
@Autowired
private  MobileProjectDao mobileProjectDao ;
	public List GetStProjectAllList() {
		// TODO Auto-generated method stub
		return mobileProjectDao.GetStProjectAllList();
	}
	public List GetStProjectSelect() {
		// TODO Auto-generated method stub
		return mobileProjectDao.GetStProjectSelect();
	}
	public void AddStProject(MobileProject mobileProject) {
		// TODO Auto-generated method stub
		mobileProjectDao.AddStProject(mobileProject);
	}
	public void DelProjectByProjectId(int projectid) {
		// TODO Auto-generated method stub
		mobileProjectDao.DelProjectByProjectId(projectid);
	}

}
