package com.testsystem.mobile.dao;

import java.util.List;

public interface MobileOperationDao {
	public List GetAllOperation();
	public List GetAllOperationByStatus(int Status);
}
