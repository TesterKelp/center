package com.testsystem.name.dao;

import com.testsystem.name.tools.P;

public interface NameWapDao {

	
	public  P GetSjName(int pagesize ,int pagenumber,int nameid);
	public int  GetSjNameTotal(int pagesize ,int nameid);
	
}
