package com.testsystem.name.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.testsystem.name.dao.NameWapDao;
import com.testsystem.name.tools.P;

public interface NameWapService {

	
	public  P GetSjName(int pagesize ,int pagenumber,int nameid);
	
	
	
	public int  GetSjNameTotal(int pagesize ,int nameid);
	
	
	
	
	
	
	
}
