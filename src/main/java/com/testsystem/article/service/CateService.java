package com.testsystem.article.service;

import java.util.List;

import com.testsystem.article.vo.Cate;

public interface CateService {
	
	public void AddCate(Cate cate);
	
	public List GetCateList();
	
	public  void SaveCate(Cate cate);

	public  void DelCate(int cateid);
	
	public List GetCateName();
	
	public List GetHiddenCateSelect();
	
	public List GetShareCateSelect();
	
	
	public List GetItemCate(int itemid);
	
	
	public List GetItemCate(String item_directorie);
	
	
	public  List  GetCateJson();
	
	public  List  GetCateJsonByItem(String item_directorie);
	
	public Cate CateInfo(String catedirectory);
	
	public Cate CateById(int cateid);
	
	
}
