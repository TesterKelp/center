package com.testsystem.defect.service;

import java.util.List;

import com.testsystem.defect.vo.Menu;

public interface MenuService {

	
	public List  GetDefectMenu();
	public List  GetShareMenu();
	
	public  List  GetDefectAndShareMenu();
	
	public void AddMenu(Menu menu);
	
	public void DelMenu(int menuid);
	
	public  void UpdataMenu(Menu menu);
	
	public  void  UpdataMenuFiled(String filename,String value,int menuid);
	
	public  void  SetMenuShow(int menuid,int isshow);
	
}
