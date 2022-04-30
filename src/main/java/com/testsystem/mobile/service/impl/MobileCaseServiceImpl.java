package com.testsystem.mobile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mobile.dao.MobileCaseDao;
import com.testsystem.mobile.service.MobileCaseService;
import com.testsystem.mobile.vo.MobileBody;
import com.testsystem.mobile.vo.MobileCase;
import com.testsystem.systemtest.vo.WebCase;
@Service
public class MobileCaseServiceImpl implements MobileCaseService {

	@Autowired
	private MobileCaseDao mobileCaseDao;

	public List GetStCaseByStatus(int status) {
		// TODO Auto-generated method stub
		return mobileCaseDao.GetStCaseByStatus(status);
	}

	public void AddStCase(MobileCase mobileCase) {
		// TODO Auto-generated method stub
		mobileCaseDao.AddStCase(mobileCase);
	}

	public List GetStCaseByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return mobileCaseDao.GetStCaseByProjectId(projectid);
	}

	public List GetStCaseByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		return mobileCaseDao.GetStCaseByModuleId(moduleid);
	}

	public void AddStbody(MobileBody mobileBody) {
		// TODO Auto-generated method stub
		mobileCaseDao.AddStbody( mobileBody);
	}

	public int AddStCasea(MobileCase mobileCase) {
		// TODO Auto-generated method stub
		return mobileCaseDao.AddStCasea(mobileCase);
	}

	public List GetCaseIndex(int caseid) {
		// TODO Auto-generated method stub
		return mobileCaseDao.GetCaseIndex(caseid);
	}

	public List GetCaseBody(int caseid) {
		// TODO Auto-generated method stub
		return mobileCaseDao.GetCaseBody(caseid);
	}

	public void UpdateStCaseIndex(	MobileCase mobileCase) {
		// TODO Auto-generated method stub
		mobileCaseDao.UpdateStCaseIndex(mobileCase);
	}

	public void DelStCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		mobileCaseDao.DelStCaseBodyByCaseId(caseid);
	}

	public void DelStCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		mobileCaseDao.DelStCaseIndexByCaseId(caseid);
	}

	public void SetCaseIsSuccessfully(int caseid, int status) {
		// TODO Auto-generated method stub
		mobileCaseDao.SetCaseIsSuccessfully(caseid, status);
	}

	public Boolean IsHaveTaskByCaseTaskAndMaxcsoloo(String maxcsolo,int tasktype) {
		return mobileCaseDao.IsHaveTaskByCaseTaskAndMaxcsoloo(maxcsolo, tasktype);
	} 

}
