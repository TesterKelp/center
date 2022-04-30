package com.testsystem.systemtest.service;

import java.util.List;

import com.testsystem.systemtest.vo.WebPage;

public interface WebPageService {

	
	public  List GetPageList(int projectid);
	
	public  List  GetPageList();
	
	public void  AddPage(WebPage webpage);
	
	public void  DelPage(int pageid);
	
	public boolean HavePageByProjectId(int projectid);
	
}
