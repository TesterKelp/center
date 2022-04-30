package com.testsystem.article.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.article.dao.ArticleDao;
import com.testsystem.article.service.ArticleService;
import com.testsystem.article.vo.Article;
import com.testsystem.backstage.vo.PageList;
@Service
public class ArticleServiceImpl implements ArticleService{

	
	@Autowired
	private ArticleDao articelDao;
	public List GetArticleList() {
		// TODO Auto-generated method stub
		return articelDao.GetArticleList();
	}
	public List GetMyArticleList(int userid) {
		// TODO Auto-generated method stub
		return articelDao.GetMyArticleList(userid);
	}
	public List ArticleList() {
		// TODO Auto-generated method stub
		return articelDao.ArticleList();
	}
	public List GetArticleById(int articleid) {
		// TODO Auto-generated method stub
		return articelDao.GetArticleById(articleid);
	}
	public List ArticleListByCate(int cateid) {
		// TODO Auto-generated method stub
		return articelDao.ArticleListByCate(cateid);
	}
	public List ArticleSearch(String keyword) {
		// TODO Auto-generated method stub
		return articelDao.ArticleSearch(keyword);
	}
	public List ArticleByTopicId(int topicid) {
		// TODO Auto-generated method stub
		return articelDao.ArticleByTopicId(topicid);
	}
	public List ArticleHiddenList() {
		// TODO Auto-generated method stub
		return articelDao.ArticleHiddenList();
	}
	@Override
	public PageList ArticleList(int pageNo ,int pagesize) {
		// TODO Auto-generated method stub
		return articelDao.ArticleList(pageNo,pagesize);
	}
	@Override
	public PageList GetMyArticleList(int userid, int pageNo, int pagesize) {
		// TODO Auto-generated method stub
		return articelDao.GetMyArticleList(userid, pageNo, pagesize);
	}
	@Override
	public int UpdateArticleType(int articleid, int articleType) {
		// TODO Auto-generated method stub
		return articelDao.UpdateArticleType(articleid, articleType);
	}
	@Override
	public void SetArticlePic(int articleid, String pic_src) {
		// TODO Auto-generated method stub
		articelDao.SetArticlePic(articleid, pic_src);
	}
	@Override
	public Article ArticleById(int articleid) {
		// TODO Auto-generated method stub
		return articelDao.ArticleById(articleid);
	}
	@Override
	public List SearchWordRsList(String word, String item) {
		// TODO Auto-generated method stub
		return articelDao.SearchWordRsList(word, item);
	}

}
