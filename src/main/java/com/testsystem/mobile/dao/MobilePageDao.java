package com.testsystem.mobile.dao;

import java.util.List;

import com.testsystem.mobile.vo.MobilePage;

public interface MobilePageDao {

	public  List GetPageList(int projectid);
	
	public  List  GetPageList();
	
	public void  AddPage(MobilePage mobilePage);
	
	public void  DelPage(int pageid);
	
	public boolean HavePageByProjectId(int projectid);
}
