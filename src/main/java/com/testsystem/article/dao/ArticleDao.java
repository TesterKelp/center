package com.testsystem.article.dao;

import java.util.List;

import com.testsystem.article.vo.Article;
import com.testsystem.backstage.vo.PageList;

public interface ArticleDao {
	
	public List GetArticleList();
	
	public List GetMyArticleList(int userid);
	
	public PageList GetMyArticleList(int userid,int pageNo ,int pagesize);
	public List ArticleList();
	
	public PageList ArticleList(int pageNo , int pagesize);
	
	public List ArticleHiddenList();
	public List GetArticleById(int articleid);
	public List ArticleListByCate(int cateid);
	public List ArticleSearch(String keyword);
	public  List ArticleByTopicId(int topicid);
	public  int  UpdateArticleType(int articleid  ,int articleType );
	
	public  void SetArticlePic(int articleid  ,String pic_src);
	
	public  Article ArticleById(int articleid);
	
	public  List SearchWordRsList(String word,String item);
}
