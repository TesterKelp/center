package com.testsystem.systemtest.dao;

import java.util.List;

public interface WebOperationDao {
	public List GetAllOperation();
	public List GetAllOperationByStatus(int Status);
}
