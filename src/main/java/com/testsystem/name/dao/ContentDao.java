package com.testsystem.name.dao;

import java.util.List;

import com.testsystem.name.tools.P;

public interface ContentDao {

	
	public List GetContentByCateId(int id) ;
	public  List ContentCateDetail(int id);
	
	
	
	
	public P GetContentByCateId(int id,int pasesize ,int pagenumber) ;
	
}
