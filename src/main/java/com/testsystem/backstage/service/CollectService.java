package com.testsystem.backstage.service;

import java.util.List;

public interface CollectService {

	
	
	
	public List CollectItemList();
	
	public  List GetItemCate(int itemid);
	
	public  void  AddDataToCollectContent(String sql);
	
	public  List  GetItemWenZhang(int itemid);
	
	
	public  List GetCollectWenZhang(int wid);
	
	
	
	public  List GetCollectCateWenZhang(int cid) ;

	public  void  AddCollectToArticle(String sql) ;
	
	
}
