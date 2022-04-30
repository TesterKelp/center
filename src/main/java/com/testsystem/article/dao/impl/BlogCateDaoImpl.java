package com.testsystem.article.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.article.dao.BlogCateDao;
import com.testsystem.article.vo.BlogCate;
import com.testsystem.article.vo.BlogInfo;
@Repository
public class BlogCateDaoImpl implements BlogCateDao {

	
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	
	
	public List GetBlogCate(BlogCate blogcate) {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select * from blog_cate  where  userid ="+blogcate.getUserid() +" order by sort  asc";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}


	public List GetBlogCateMenu(BlogCate blogcate) {
		// TODO Auto-generated method stub
		return null;
	}


	public List BlogCateByUserId(int userid) {
		// TODO Auto-generated method stub
		
		String sql = "select * from blog_cate  where  userid ="+userid +" order by sort  asc" ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;

	}


	public void SaveBlogCate(BlogCate blogcate) {
		// TODO Auto-generated method stub
	    String  ss= "insert into blog_cate  (blogcatename,sort,userid) values "
	             +"('"+blogcate.getBlogcatename()+"','"+blogcate.getSort()+"','"+blogcate.getUserid()+"')" ;
	
  System.out.println("sssss"+ss);
	jdbcTemplate.update(ss);
	}


	public Boolean IsHaveBlog(int blogcateid) {
		// TODO Auto-generated method stub
		String sql="select COUNT(articleid) from article_content  where  blogcateid = "+blogcateid;
		int   num = jdbcTemplate.queryForInt(sql);
		if (num>0){
			return true  ;
		}else{
			return false ;
		}		
	}


	public void DelBlogCate(int blogcateid) {
		// TODO Auto-generated method stub
		String sql ="delete  from  blog_cate where blogcateid='"+blogcateid+"'" ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}


	@Override
	public String BlogCateName(int blogcateid) {
		// TODO Auto-generated method stub
		String sql ="select blogcatename from blog_cate where blogcateid='"+blogcateid+"'" ;
		return  (String)  jdbcTemplate.queryForObject(sql, java.lang.String.class);
	}


	@Override
	public int AlterBlogCate(BlogCate blogcate) {
		// TODO Auto-generated method stub
		String sql=" update   blog_cate    set    blogcatename='"+blogcate.getBlogcatename()+"'  "
				+ "  where  blogcateid='"+blogcate.getBlogcateid()+"' "    ;	
		return jdbcTemplate.update(sql);
	}


	@Override
	public BlogCate GetBlogCateById(int blogcateid) {
		// TODO Auto-generated method stub
		
		String sql="select  *  from  blog_cate  where blogcateid='"+blogcateid+"' ";
		Object blogCate= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<BlogCate>(BlogCate.class)) ;
		return (BlogCate) blogCate ;
	}


	@Override
	public void SetBlogCateSort(BlogCate blogcate) {
		// TODO Auto-generated method stub
		
		
		String sql=" update  blog_cate  set sort='"+blogcate.getSort()+"' where blogcateid='"+blogcate.getBlogcateid()+"'     ";
		jdbcTemplate.update(sql);
		
	}

	
	
	
	
	
}
