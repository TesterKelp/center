package com.testsystem.wift.service;

import java.util.List;

public interface EnvironmentService {

	  public  List GetEnvironmentListByProjectId(int paramInt);

	  public  List GetEnvironmentByProjectId(int paramInt);

	  public  List GetEnvironmentTypeByProjectId(int paramInt);

	  public  List GetEnvironmentTypeServer(int paramInt1, int paramInt2);

	  public  void CreateGetEnvironmentTypeServer(int paramInt1, int paramInt2);

	  public  int CreateEnvironmentByProjectId(int paramInt, String paramString);

	  public  int CreateEnvironmentTypeByProjectId(int paramInt, String paramString);

	  public  int SaveServerValue(int paramInt, String paramString);
	  	  
	  public  void  DelEnvironment(int environmentid);
	
	 
	
}
