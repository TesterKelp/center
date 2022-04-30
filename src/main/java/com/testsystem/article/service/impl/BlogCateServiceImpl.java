package com.testsystem.article.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.article.dao.BlogCateDao;
import com.testsystem.article.service.BlogCateService;
import com.testsystem.article.vo.BlogCate;
@Service
public class BlogCateServiceImpl implements BlogCateService {

	@Autowired
	private BlogCateDao blogCateDao;
	public List GetBlogCate(BlogCate blogcate) {
		// TODO Auto-generated method stub
		return blogCateDao.GetBlogCate(blogcate);
	}
	public List GetBlogCateMenu(BlogCate blogcate) {
		// TODO Auto-generated method stub
		return null;
	}
	public List BlogCateByUserId(int userid) {
		// TODO Auto-generated method stub
		return blogCateDao.BlogCateByUserId(userid);
	}
	public void SaveBlogCate(BlogCate blogcate) {
		// TODO Auto-generated method stub
		blogCateDao.SaveBlogCate(blogcate);
	}
	public Boolean IsHaveBlog(int blogcateid) {
		// TODO Auto-generated method stub
		return blogCateDao.IsHaveBlog(blogcateid);
	}
	public void DelBlogCate(int blogcateid) {
		// TODO Auto-generated method stub
		blogCateDao.DelBlogCate(blogcateid);
	}
	@Override
	public String BlogCateName(int blogcateid) {
		// TODO Auto-generated method stub
		return blogCateDao.BlogCateName(blogcateid);
	}
	@Override
	public int AlterBlogCate(BlogCate blogcate) {
		// TODO Auto-generated method stub
		return blogCateDao.AlterBlogCate(blogcate);
	}
	@Override
	public BlogCate GetBlogCateById(int blogcateid) {
		// TODO Auto-generated method stub
		return blogCateDao.GetBlogCateById(blogcateid);
	}
	@Override
	public void SetBlogCateSort(BlogCate blogcate) {
		// TODO Auto-generated method stub
		blogCateDao.SetBlogCateSort(blogcate);
	}

	
	
}
