package com.testsystem.systemtest.dao;

import java.util.List;

import com.testsystem.systemtest.vo.WebPage;

public interface WebPageDao {

	public  List GetPageList(int projectid);
	
	public  List  GetPageList();
	
	public void  AddPage(WebPage webPage);
	
	public void  DelPage(int pageid);
	
	public boolean HavePageByProjectId(int projectid);
}
