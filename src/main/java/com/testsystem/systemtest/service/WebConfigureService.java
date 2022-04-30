package com.testsystem.systemtest.service;

import java.util.List;

public interface WebConfigureService {
	public  List GetConfigureByUserId(int userid);
	
	public  void  UpdataMacSolo(int macid,String maxcsolo ) ;
}
