package com.testsystem.mobile.dao;

import java.util.List;

public interface MobileConfigureDao {
	
	public  List GetConfigureByUserId(int userid);
	
	public  void  UpdataMacSolo(int macid,String maxcsolo ) ;

}
