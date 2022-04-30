package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.dao.TaskDao;
import com.testsystem.defect.service.TaskService;
@Service
public class TaskServiceImpl implements TaskService {

	@Autowired
	private  TaskDao taskDao;
	
	
	
	public List GetTask() {
		// TODO Auto-generated method stub
		return taskDao.GetTask();
	}



	public List GetMyTask() {
		// TODO Auto-generated method stub
		int  userid =UserUtil.getCurrentUserinfo().getUserid();
		return taskDao.GetMyTask(userid);
	}



	@Override
	public int CreateTask(String sql) {
		// TODO Auto-generated method stub
		return taskDao.CreateTask(sql);
	}



	@Override
	public List TaskDetail(int taskid) {
		// TODO Auto-generated method stub
		return taskDao.TaskDetail(taskid);
	}



	@Override
	public List GetShowOperationByTask() {
		// TODO Auto-generated method stub
		return taskDao.GetShowOperationByTask();
	}



	@Override
	public List GetTaskDetailCustomField(int taskid) {
		// TODO Auto-generated method stub
		return taskDao.GetTaskDetailCustomField(taskid);
	}



	@Override
	public void DelTask(int taskid) {
		// TODO Auto-generated method stub
		taskDao.DelTask(taskid);
	}



	@Override
	public void SetTaskStatus(int taskid) {
		// TODO Auto-generated method stub
		taskDao.SetTaskStatus(taskid);
	}



	@Override
	public void AssignedTask(int taskid, int assignedid) {
		// TODO Auto-generated method stub
		taskDao.AssignedTask(taskid, assignedid);
	}

	
	
	
	
}
