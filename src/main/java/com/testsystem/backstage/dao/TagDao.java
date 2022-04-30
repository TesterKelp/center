package com.testsystem.backstage.dao;

import java.util.List;

import com.testsystem.backstage.vo.Tag;

public interface TagDao {

	
	public List ArticleTag(int articleid);
	
	
//	该标签下的文章
	public List  TagArticle(int tagid);
	
//	该分类下的标签
	public List CateTag(String catedirectory);
	
//	该项目下的标签
	public List ItemTag(String item_directorie);
	
	public List ItemTagAndNumber(String item_directorie);
	
	public String TagName(int tagid);
	
	public List  MyTag(int userid);
	public List  Mytag(int userid,int itemid);
	
	 public Tag CreateTagReturId(String key,int itemid) ;
	
	 public Tag GetTagById(int tagid) ;
	 public void  AddTagidToOwer(int userid ,int tagid);
		
	 public void  AddTagidToArticle(int tagid ,int articleid);
	 
	 public List GetArticleTag(int articleid);
	 
	 public  List GetTagArticle(String item ,int tagid);
	 
	 public  List  GetTagByItemId(int itemid);
	 
	 public List GetTagAll();
	
}
