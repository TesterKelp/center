package com.testsystem.systemtest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.systemtest.dao.WebCaseDao;
import com.testsystem.systemtest.service.WebCaseService;
import com.testsystem.systemtest.vo.WebBody;
import com.testsystem.systemtest.vo.WebCase;
@Service
public class WebCaseServiceImpl implements WebCaseService {

	@Autowired
	private WebCaseDao webCaseDao;

	public List GetStCaseByStatus(int status) {
		// TODO Auto-generated method stub
		return webCaseDao.GetStCaseByStatus(status);
	}

	public void AddStCase(WebCase webCase) {
		// TODO Auto-generated method stub
		webCaseDao.AddStCase(webCase);
	}

	public List GetStCaseByProjectId(int projectid) {
		// TODO Auto-generated method stub
		return webCaseDao.GetStCaseByProjectId(projectid);
	}

	public List GetStCaseByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		return webCaseDao.GetStCaseByModuleId(moduleid);
	}

	public void AddStbody(WebBody webBody) {
		// TODO Auto-generated method stub
		webCaseDao.AddStbody( webBody);
	}

	public int AddStCasea(WebCase webCase) {
		// TODO Auto-generated method stub
		return webCaseDao.AddStCasea(webCase);
	}

	public List GetCaseIndex(int caseid) {
		// TODO Auto-generated method stub
		return webCaseDao.GetCaseIndex(caseid);
	}

	public List GetCaseBody(int caseid) {
		// TODO Auto-generated method stub
		return webCaseDao.GetCaseBody(caseid);
	}

	public void UpdateStCaseIndex(WebCase webCase) {
		// TODO Auto-generated method stub
		webCaseDao.UpdateStCaseIndex(webCase);
	}

	public void DelStCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		webCaseDao.DelStCaseBodyByCaseId(caseid);
	}

	public void DelStCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		webCaseDao.DelStCaseIndexByCaseId(caseid);
	}

	public void SetCaseIsSuccessfully(int caseid, int status) {
		// TODO Auto-generated method stub
		webCaseDao.SetCaseIsSuccessfully(caseid, status);
	}

	public Boolean IsHaveTaskByCaseTaskAndMaxcsoloo(String maxcsolo,int tasktype) {
		return webCaseDao.IsHaveTaskByCaseTaskAndMaxcsoloo(maxcsolo, tasktype);
	} 

}
