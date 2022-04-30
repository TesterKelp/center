package com.testsystem.wift.dao;

import java.util.List;

public interface IfTaskDao {
	public List  GetAllTask();
	public List  GetCaseByTaskId(int taskid);
}
