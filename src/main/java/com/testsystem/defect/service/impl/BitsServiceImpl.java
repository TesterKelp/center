package com.testsystem.defect.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.dao.BitsDao;
import com.testsystem.defect.service.BitsService;
@Service
public class BitsServiceImpl  implements  BitsService{
@Autowired
private  	BitsDao  bitsDao ;
	@Override
	public int GetqProjectIdByUserId(int userid) {
		// TODO Auto-generated method stub
		
		return  bitsDao.GetqProjectIdByUserId(userid);
	}
	@Override
	public void SetProjectDefault(int userid, int projectid) {
		// TODO Auto-generated method stub
		bitsDao.SetProjectDefault(userid, projectid);
	}
	@Override
	public String GetProjectNameByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return bitsDao.GetProjectNameByProjectId(projectid);
	}
	@Override
	public String GetLibNameByUserId(int userid) {
		// TODO Auto-generated method stub
		return bitsDao.GetLibNameByUserId(userid);
	}
	@Override
	public int GetqLibIdByUserId(int userid) {
		// TODO Auto-generated method stub
		return  bitsDao.GetqLibIdByUserId(userid);
	}
	@Override
	public int GetMaxProjectId() {
		// TODO Auto-generated method stub
		return bitsDao.GetMaxProjectId();
	}
	@Override
	public int GetMaxLibId() {
		// TODO Auto-generated method stub
		return bitsDao.GetMaxLibId();
	}
	@Override
	public void AddInitUserData(int userid, int projectid, int libid) {
		// TODO Auto-generated method stub
		bitsDao.AddInitUserData(userid, projectid, libid);
	}
	@Override
	public String GetWebSiteUrl() {
		// TODO Auto-generated method stub
		return bitsDao.GetWebSiteUrl();
	}

	
	  public int getNowUserProjectId()
	  {
	    int userId = UserUtil.getCurrentUserinfo().getUserid();
	    return this.bitsDao.getNowUserProjectId(userId);
	  }

	  public String GetProjectName()
	  {
	    int userId = UserUtil.getCurrentUserinfo().getUserid();
	    return this.bitsDao.GetProjectName(userId);
	  }
	
}
