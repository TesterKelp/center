package com.testsystem.api.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.api.dao.ApiTaskDao;
import com.testsystem.api.service.ApiTaskService;
@Service
public class ApiTaskServiceImpl implements ApiTaskService {

	
	@Autowired
		private ApiTaskDao  apiTaskDao ;
	@Override
	public List GetTaskInfoByServerName(String servername,int status) {
		// TODO Auto-generated method stub
		return apiTaskDao.GetTaskInfoByServerName(servername,status);
	}
	@Override
	public List GetTaskCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		return apiTaskDao.GetTaskCaseByTaskId(taskid);
	}
	@Override
	public List GetTaskInfoByTaskId(int taskid) {
		// TODO Auto-generated method stub
		return apiTaskDao.GetTaskInfoByTaskId(taskid);
	}
	@Override
	public int  SetTaskStatusByTaskId(int taskid, int status) {
		// TODO Auto-generated method stub
		return apiTaskDao.SetTaskStatusByTaskId(taskid, status);
	}
	@Override
	public List GetCaseInfoByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return apiTaskDao.GetCaseInfoByCaseId(caseid);
	}
	@Override
	public int SetCaseNumber(int taskid,int fc ,int sc ,int skc ,int allcn) {
		// TODO Auto-generated method stub
		return apiTaskDao.SetCaseNumber(taskid, fc, sc ,skc ,allcn);
	}
	@Override
	public List GetWiftCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		return apiTaskDao.GetWiftCaseByTaskId(taskid);
	}
	@Override
	public List GetWiftCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return apiTaskDao.GetWiftCaseBodyByCaseId(caseid);
	}
	@Override
	public List GetWiftCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		return apiTaskDao.GetWiftCaseIndexByCaseId(caseid);
	}


}
