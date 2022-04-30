package com.testsystem.admin.service;

import com.testsystem.admin.vo.SysInfo;

public interface SysSetService {

	
	

	public String GetDefaultPage();
	
	public void SavePage(String page);
	
	public  String  GetSysInfoValue(String fieldname);
	
	public  void   SetSysInfoValue(String fieldname,String value);
	
	public  SysInfo  GetSysInfo() ;
	
	
	
}
