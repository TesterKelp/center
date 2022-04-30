package com.testsystem.admin.dao;

import java.util.List;

import com.testsystem.admin.vo.SysInfo;
import com.testsystem.admin.vo.User;

public interface SysSetDao {
	public String GetDefaultPage();
	
	public void SavePage(String page);
	
	
	public  String  GetSysInfoValue(String fieldname);
	
	public  void   SetSysInfoValue(String fieldname,String value);
	
//	public  SysInfo  GetSysInfo() ;
	
	List<SysInfo> GetSysInfo();
	
	
}
