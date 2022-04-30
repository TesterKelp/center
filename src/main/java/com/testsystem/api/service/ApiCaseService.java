package com.testsystem.api.service;

import java.util.List;

public interface ApiCaseService {
	
	public  List GetInterfaceCase(int caseid) ;
	
	public  List GetInterfaceRequest(int caseid);
	
	public  List GetInterfaceRequestHeader(int caseid);
	
	public  List GetInterfaceResponseAssert(int caseid);
	
	public  List GetInterfaceResponseHeaderAssert(int caseid);
	
	
	

}
