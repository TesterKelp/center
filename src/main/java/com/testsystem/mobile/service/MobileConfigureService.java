package com.testsystem.mobile.service;

import java.util.List;

public interface MobileConfigureService {
	public  List GetConfigureByUserId(int userid);
	
	public  void  UpdataMacSolo(int macid,String maxcsolo ) ;
}
