package com.testsystem.backstage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.backstage.dao.ItemDao;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.backstage.vo.Item;
import com.testsystem.backstage.vo.PageList;
@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemDao itemDao ;
	
	
	@Override
	public List ItemList() {
		return itemDao.ItemList();	
	}


	public List ArticleList(String catedirectory) {
		// TODO Auto-generated method stub
		return itemDao.ArticleList(catedirectory);
	}


	@Override
	public List ArticleList(int id) {
		// TODO Auto-generated method stub
		return itemDao.ArticleList(id);
	}


	@Override
	public String ItemList(String item_directorie) {
		// TODO Auto-generated method stub
		return itemDao.ItemList(item_directorie);
	}


	@Override
	public List ArticleItemCate(String item_directorie) {
		// TODO Auto-generated method stub
		return itemDao.ArticleItemCate(item_directorie);
	}


	@Override
	public List ItemAllArticle(String item_directorie) {
		// TODO Auto-generated method stub
		return itemDao.ItemAllArticle(item_directorie);
	}


	@Override
	public String ItemHtmlorDo(String item_directorie) {
		// TODO Auto-generated method stub
		return itemDao.ItemHtmlorDo(item_directorie);
	}


	@Override
	public List ArticleList() {
		// TODO Auto-generated method stub
		return itemDao.ArticleList();
	}


	public String ItemCateName(String catedirectory) {
		// TODO Auto-generated method stub
		return itemDao.ItemCateName(catedirectory);
	}


	@Override
	public PageList ArticleList(String catedirectory, int pageNum) {
		// TODO Auto-generated method stub
		return itemDao.ArticleList(catedirectory, pageNum);
	}


	@Override
	public boolean HaveSubCate(String catedirectory) {
		// TODO Auto-generated method stub
		return itemDao.HaveSubCate(catedirectory);
	}


	@Override
	public List ItemCateSub(String catedirectory) {
		// TODO Auto-generated method stub
		return itemDao.ItemCateSub(catedirectory);
	}


	@Override
	public List ItemCateSubArticle(String catedirectory) {
		// TODO Auto-generated method stub
		return itemDao.ItemCateSubArticle(catedirectory);
	}


	@Override
	public List SubCateArticleList(int id) {
		// TODO Auto-generated method stub
		return itemDao.SubCateArticleList(id);
	}


	@Override
	public PageList SubCateArticleList(String catedirectory, int pageNum) {
		// TODO Auto-generated method stub
		return itemDao.SubCateArticleList(catedirectory, pageNum);
	}


	@Override
	public String ItemName(String item_directorie) {
		// TODO Auto-generated method stub
		return itemDao.ItemName(item_directorie);
	}


	@Override
	public Item GetItem(String item_directorie) {
		// TODO Auto-generated method stub
		return itemDao.GetItem(item_directorie);
	}


	@Override
	public List ItemCate(String item_directorie) {
		// TODO Auto-generated method stub
		return itemDao.ItemCate(item_directorie);
	}


	@Override
	public int CatePage(String catedirectory , int pagesize) {
	
		// TODO Auto-generated method stub
		return itemDao.CatePage(catedirectory, pagesize);
	}


	@Override
	public List ItemCateArticleHtml(String item_directorie) {
		// TODO Auto-generated method stub
		return itemDao.ItemCateArticleHtml(item_directorie);
	}


	@Override
	public List ItemArticleUserBlog(int articleid ,String item_directorie) {
		// TODO Auto-generated method stub
		return itemDao.ItemArticleUserBlog(articleid, item_directorie);
	}


	@Override
	public List FuLi() {
		// TODO Auto-generated method stub
		return itemDao.FuLi();
	}


	@Override
	public List TopicList() {
		// TODO Auto-generated method stub
		return itemDao.TopicList();
	}


	@Override
	public int SaveItem(Item item) {
		// TODO Auto-generated method stub
		return itemDao.SaveItem(item);
	}


	@Override
	public int AlterItem(Item item) {
		// TODO Auto-generated method stub
		return itemDao.AlterItem(item);
	}


	@Override
	public Item GetItemById(int item_id) {
		// TODO Auto-generated method stub
		return itemDao.GetItemById(item_id);
	}


	@Override
	public int GetPreviousId(String catedirectory, int id) {
		// TODO Auto-generated method stub
		return itemDao.GetPreviousId(catedirectory, id);
	}


	@Override
	public int GetNextId(String catedirectory, int id) {
		// TODO Auto-generated method stub
		return itemDao.GetNextId(catedirectory, id);
	}


	@Override
	public List ItemListShow() {
		// TODO Auto-generated method stub
		return itemDao.ItemListShow();
	}


	@Override
	public List RecommendArticle() {
		// TODO Auto-generated method stub
		
		
		return itemDao.RecommendArticle() ;
	}

	



}
