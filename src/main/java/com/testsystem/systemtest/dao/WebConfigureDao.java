package com.testsystem.systemtest.dao;

import java.util.List;

public interface WebConfigureDao {
	
	public  List GetConfigureByUserId(int userid);
	
	public  void  UpdataMacSolo(int macid,String maxcsolo ) ;

}
