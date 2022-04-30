package com.testsystem.mift.service;

import java.util.List;

public interface MitfTaskService {

	public List  GetAllTask();
	public List  GetCaseByTaskId(int taskid);
}
