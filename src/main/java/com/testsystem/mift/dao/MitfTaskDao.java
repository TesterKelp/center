package com.testsystem.mift.dao;

import java.util.List;

public interface MitfTaskDao {
	public List  GetAllTask();
	public List  GetCaseByTaskId(int taskid);
}
