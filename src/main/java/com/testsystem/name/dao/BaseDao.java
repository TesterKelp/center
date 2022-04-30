package com.testsystem.name.dao;

import java.util.List;

public interface BaseDao {
	
	
	public List GetInfoList(String sql);
	
	public void AddInfo(String sql);
	
	public  void  UpdataInfo(String sql);
	
	public  void  DelInfo(String sql);

	
	public  List  GetList(String sql);
	
}
