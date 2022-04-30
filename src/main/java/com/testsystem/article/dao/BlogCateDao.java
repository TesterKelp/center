package com.testsystem.article.dao;

import java.util.List;

import com.testsystem.article.vo.BlogCate;

public interface BlogCateDao {
	public List GetBlogCate(BlogCate blogcate);
	
	public List GetBlogCateMenu(BlogCate blogcate) ;
	
	
	public List BlogCateByUserId(int userid);
	public void SaveBlogCate(BlogCate blogcate);
	
	public int  AlterBlogCate(BlogCate blogcate);
	
	
	public Boolean IsHaveBlog(int blogcateid);
	
	public void DelBlogCate(int blogcateid) ;
	
	public String BlogCateName(int blogcateid);
	
	public BlogCate GetBlogCateById(int blogcateid);
	
	public void SetBlogCateSort(BlogCate blogcate);
	
}
