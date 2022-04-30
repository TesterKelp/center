package com.testsystem.backstage.service;

import java.util.List;

import org.springframework.stereotype.Controller;

import com.testsystem.backstage.vo.Item;
import com.testsystem.backstage.vo.PageList;


public interface ItemService {

	
	public List  ItemList();
	
	
	public int  SaveItem(Item item);
	
	public int  AlterItem(Item item);
	
	public String  ItemList(String  item_directorie);
	
	public String  ItemCateName(String catedirectory);
	
	public List ArticleList(String catedirectory);
	
	public PageList ArticleList(String catedirectory,int pageNum);
	
	public PageList SubCateArticleList(String catedirectory,int pageNum);
	
	public List ArticleList(int id);
	
	public List SubCateArticleList(int id);
	
	public List ArticleList();
	
	
	public  int GetPreviousId(String catedirectory,int id);
	
	public  int GetNextId(String catedirectory,int id);
	
	public  List ArticleItemCate(String item_directorie) ;
	
	public  List ItemAllArticle(String item_directorie) ;
	
	public String ItemHtmlorDo(String item_directorie);

    public  boolean HaveSubCate(String catedirectory);
	
	public  List ItemCateSub(String catedirectory) ;
	
	public  List ItemCateSubArticle(String catedirectory) ;
	
	public  String ItemName(String item_directorie);
	
	public  Item  GetItem(String item_directorie);
	
	
	public  Item  GetItemById(int item_id);
	
	public  List ItemCate(String item_directorie) ;
	
	public  int  CatePage(String catedirectory ,int pagesize);
	
	
	public  List ItemCateArticleHtml(String item_directorie) ;
	
	public  List  ItemArticleUserBlog(int articleid ,String item_directorie);
	
	
	public  List FuLi();
	
	public  List TopicList();
	
	
	
	public  List ItemListShow();
	
	
	public  List RecommendArticle();
	
	
	
	
}
