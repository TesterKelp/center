package com.testsystem.article.dao;

import java.util.List;

import com.testsystem.article.vo.Cate;

public interface CateDao {
	
	public void AddCate(Cate cate);
	public List GetCateList();
	public  List  GetCateJson();
	public  List  GetCateJsonByItem(String item_directorie);
	public void SaveCate(Cate cate);
	
	public  void DelCate(int cateid);
	
	public List GetCateName();

	public List GetShareCateSelect();
	public List GetHiddenCateSelect();
	
	
	public List GetItemCate(int itemid);
	public List GetItemCate(String item_directorie);
	
	public Cate CateInfo(String catedirectory);
	
	public Cate CateById(int cateid);
	
	
	
	
}
