package com.testsystem.article.dao;

import java.util.List;

import com.testsystem.article.vo.Blog;
import com.testsystem.article.vo.BlogInfo;
import com.testsystem.article.vo.Comment;
import com.testsystem.helper.Page;

public interface BlogDao {
	public List BlogInfo(int userid);
	public List BlogList(int userid);
	public List BlogListByArticleType(int userid,int articletype);
	public List BlogListByCate(int userid,int blogcateid);
	public void SaveComment(Comment comment);
	public List GetComment(int articleid);
	public void AddBlog(Blog blog);
	public int    AddBlogReutrnBlogId(Blog blog);
	public void  DelBlogByBlogId(int blogid,int userid);
	public  void  UpdateBlog(Blog blog) ;
	public List BlogSearch(int userid,String keyword);
	public  void SetBlogRec(int userid,int blogid,int blogtype);
	
	public  Page  BologListByCate(int userid,int blogcateid ,int pagesize ,int pageNum);
	
	public  BlogInfo GetBlogInfoByUserId(int userid) ;
	public  void  DelBlog(int blogid);
}
