package com.testsystem.api.dao;

import java.util.List;

public interface ApiCaseDao {

	public  List GetInterfaceCase(int caseid) ;
	
	public  List GetInterfaceRequest(int caseid);
	
	public  List GetInterfaceRequestHeader(int caseid);
	
	public  List GetInterfaceResponseAssert(int caseid);
	
	public  List GetInterfaceResponseHeaderAssert(int caseid);
	
	
	
	
	
	
	
	
}
