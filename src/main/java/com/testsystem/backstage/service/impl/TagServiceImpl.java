package com.testsystem.backstage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.backstage.dao.ItemDao;
import com.testsystem.backstage.dao.TagDao;
import com.testsystem.backstage.service.TagService;
import com.testsystem.backstage.vo.Tag;
@Service
public class TagServiceImpl implements TagService {

	
	@Autowired
	private TagDao tagDao ;
	
	
	@Override
	public List ArticleTag(int articleid) {
		// TODO Auto-generated method stub
		return tagDao.ArticleTag(articleid);
	}


	@Override
	public List TagArticle(int tagid) {
		// TODO Auto-generated method stub
		return tagDao.TagArticle(tagid);
	}


	@Override
	public List CateTag(String catedirectory) {
		// TODO Auto-generated method stub
		return tagDao.CateTag(catedirectory);
	}


	@Override
	public List ItemTag(String item_directorie) {
		// TODO Auto-generated method stub
		return tagDao.ItemTag(item_directorie);
	}


	@Override
	public String TagName(int tagid) {
		// TODO Auto-generated method stub
		return tagDao.TagName(tagid);
	}


	@Override
	public List ItemTagAndNumber(String item_directorie) {
		// TODO Auto-generated method stub
		return tagDao.ItemTagAndNumber(item_directorie);
	}


	@Override
	public List MyTag(int userid) {
		// TODO Auto-generated method stub
		return tagDao.MyTag(userid);
	}


	@Override
	public Tag CreateTagReturId(String key,int itemid) {
		// TODO Auto-generated method stub
		return tagDao.CreateTagReturId(key,itemid);
	}


	@Override
	public void AddTagidToOwer(int userid, int tagid) {
		// TODO Auto-generated method stub
		tagDao.AddTagidToOwer(userid, tagid);
	}


	@Override
	public void AddTagidToArticle(int tagid, int articleid) {
		// TODO Auto-generated method stub
		tagDao.AddTagidToArticle(tagid, articleid);
	}


	@Override
	public List GetArticleTag(int articleid) {
		// TODO Auto-generated method stub
		return tagDao.GetArticleTag(articleid);
	}


	@Override
	public List GetTagArticle(String item, int tagid) {
		// TODO Auto-generated method stub
		return tagDao.GetTagArticle(item, tagid);
	}


	@Override
	public Tag GetTagById(int tagid) {
		// TODO Auto-generated method stub
		return tagDao.GetTagById(tagid);
	}


	@Override
	public List GetTagByItemId(int itemid) {
		// TODO Auto-generated method stub
		return tagDao.GetTagByItemId(itemid);
	}


	@Override
	public List Mytag(int userid, int itemid) {
		// TODO Auto-generated method stub
		return tagDao.Mytag(userid, itemid);
	}


	@Override
	public List GetTagAll() {
		// TODO Auto-generated method stub
		return tagDao.GetTagAll();
	}

}
