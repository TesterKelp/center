package com.testsystem.name.service;

import java.util.List;

import com.testsystem.name.tools.P;

public interface ContentService {

	
	public List GetContentByCateId(int id) ;
	public  List ContentCateDetail(int id);
	
	
	public P GetContentByCateId(int id,int pasesize ,int pagenumber) ;
	
	
	
}
