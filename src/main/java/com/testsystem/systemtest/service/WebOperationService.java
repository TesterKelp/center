package com.testsystem.systemtest.service;

import java.util.List;

public interface WebOperationService {

	
	public List GetAllOperation();
	public List GetAllOperationByStatus(int Status);
}
