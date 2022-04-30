package com.testsystem.article.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.article.dao.BlogCateDao;
import com.testsystem.article.dao.BlogDao;
import com.testsystem.article.service.BlogCateService;
import com.testsystem.article.service.BlogService;
import com.testsystem.article.vo.Blog;
import com.testsystem.article.vo.Comment;
import com.testsystem.helper.Page;
@Service
public class BlogServiceImpl implements BlogService {
	@Autowired
	private BlogDao blogDao;
	public List BlogInfo(int userid) {
		// TODO Auto-generated method stub
		return blogDao.BlogInfo(userid);
	}
	public List BlogList(int userid) {
		// TODO Auto-generated method stub
		return blogDao.BlogList(userid);
	}
	public List BlogListByCate(int userid, int blogcateid) {
		// TODO Auto-generated method stub
		return blogDao.BlogListByCate(userid, blogcateid);
	}
	public void SaveComment(Comment comment) {
		// TODO Auto-generated method stub
		blogDao.SaveComment(comment);
	}
	public List GetComment(int articleid) {
		// TODO Auto-generated method stub
		return blogDao.GetComment(articleid);
	}
	public void AddBlog(Blog blog) {
		// TODO Auto-generated method stub
		blogDao.AddBlog(blog);
	}
	public void DelBlogByBlogId(int blogid, int userid) {
		// TODO Auto-generated method stub
		blogDao.DelBlogByBlogId(blogid, userid);
	}
	public void UpdateBlog(Blog blog) {
		// TODO Auto-generated method stub
		blogDao.UpdateBlog(blog);
	}
	public List BlogListByArticleType(int userid, int articletype) {
		// TODO Auto-generated method stub
		return blogDao.BlogListByArticleType(userid, articletype);
	}
	public List BlogSearch(int userid, String keyword) {
		// TODO Auto-generated method stub
		return blogDao.BlogSearch(userid, keyword);
	}
	public void SetBlogRec(int userid, int blogid,int blogtype) {
		// TODO Auto-generated method stub
		blogDao.SetBlogRec(userid, blogid, blogtype);
	}
	@Override
	public int AddBlogReutrnBlogId(Blog blog) {
		// TODO Auto-generated method stub
		return blogDao.AddBlogReutrnBlogId(blog);
	}
	@Override
	public Page BologListByCate(int userid, int blogcateid, int pagesize ,int pageNum) {
		// TODO Auto-generated method stub
		return blogDao.BologListByCate(userid, blogcateid, pagesize , pageNum);
	}
	@Override
	public com.testsystem.article.vo.BlogInfo GetBlogInfoByUserId(int userid) {
		// TODO Auto-generated method stub
		return blogDao.GetBlogInfoByUserId(userid);
	}
	@Override
	public void DelBlog(int blogid) {
		// TODO Auto-generated method stub
		blogDao.DelBlog(blogid);
	}

}
