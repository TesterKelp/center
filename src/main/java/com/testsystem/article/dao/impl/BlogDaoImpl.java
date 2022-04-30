package com.testsystem.article.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.article.dao.BlogDao;
import com.testsystem.article.vo.Blog;
import com.testsystem.article.vo.BlogInfo;
import com.testsystem.article.vo.Comment;
import com.testsystem.article.vo.Topic;
import com.testsystem.backstage.vo.PageList;
import com.testsystem.helper.Page;
@Repository
public class BlogDaoImpl implements BlogDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	public List BlogInfo(int userid) {
		// TODO Auto-generated method stub
		String sql = "select * from blog_info,admin_user  where blog_info.userid= admin_user.userid and admin_user.userid="+userid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;

	}
	public List BlogList(int userid) {
		// TODO Auto-generated method stub

		String sql = "select a.articleid ,b.blogcatename, a.cateid ,a.articletitle, a.articleitd ,a.articlesummary ,a.userid ,a.blogcateid ,a.creattime ,a.articletype ,a.topicid ,a.picaddress "
				+ " from article_content a ,blog_cate  b  where  b.blogcateid=a.blogcateid   and    a.userid='"+userid+"'   order by articleid DESC " ;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List BlogListByCate(int userid, int blogcateid) {
		// TODO Auto-generated method stub
		
		String sql = "select a.articleid ,b.blogcatename, a.cateid ,a.articletitle, a.articleitd ,a.articlesummary ,a.userid ,a.blogcateid ,a.creattime ,a.articletype ,a.topicid ,a.picaddress "
				+ " from article_content a ,blog_cate  b  where  b.blogcateid=a.blogcateid   and    a.userid='"+userid+"'  and a.blogcateid='"+blogcateid+"'   order by articleid DESC " ;

		
		
//		String sql = "select * from article_content  where userid="+userid +" and blogcateid="+blogcateid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public void SaveComment(Comment comment) {
		// TODO Auto-generated method stub
	    String  ss= "insert into article_comment  (articleid,userid,content,commenttime) values "
	             +"('"+comment.getArticleid()+"','"+comment.getUserid()+"','"+comment.getContent()+"','"+comment.getCommenttime()+"')" ;
	
  System.out.println("sssss"+ss);
	jdbcTemplate.update(ss);
	}
	public List GetComment(int articleid) {
		// TODO Auto-generated method stub
		String sql = "select * from article_comment as a,admin_user b where a.userid =b.userid and articleid ="+articleid+" order by a.commenttime";		
		System.out.println(sql);
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public void AddBlog(Blog blog) {
		// TODO Auto-generated method stub
	    String  ss= "insert into article_content  (cateid,articletitle,picaddress,articlecontent,userid,blogcateid,creattime,articletype,topicid,articleitd) values "
	             +"('"+blog.getCateid()+"','"+blog.getArticletitle()+"','"+blog.getPicaddress()+"','"+blog.getArticlecontent()+"','"+blog.getUserid()+"','"+blog.getBlogcateid()+"','"+blog.getCreatetime()+"','"+blog.getArticletype()+"','"+blog.getTopicid()+"','"+blog.getArticleitd()+"')" ;
 System.out.println("sssss"+ss);
	jdbcTemplate.update(ss);
	}
	public void DelBlogByBlogId(int blogid, int userid) {
		// TODO Auto-generated method stub
		String sql ="delete  from  article_content  where articleid='"+blogid+"' and userid="+userid ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
		
	}
	public void UpdateBlog(Blog blog) {
		// TODO Auto-generated method stub
		String sql ="update  article_content  set  cateid=" +blog.getCateid() +", articletitle ='"+blog.getArticletitle()+"', articlecontent = '"+blog.getArticlecontent()+"', topicid = '"+blog.getTopicid()+"', blogcateid ='"+blog.getBlogcateid()+"', "
				+ " articletype ="+blog.getArticletype()+" where userid ="+blog.getUserid()  +" and   articleid= "+blog.getArticleid() ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}
	public List BlogListByArticleType(int userid, int articletype) {
		// TODO Auto-generated method stub
		String sql = "select * from article_content  where article_content.userid="+userid + " and article_content.articletype="+articletype;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List BlogSearch(int userid, String keyword) {
		// TODO Auto-generated method stub  															
		String sql = "select a.articleid , a.cateid ,a.articletitle, a.articleitd ,a.articlesummary ,a.userid ,a.blogcateid ,a.creattime ,a.articletype ,a.topicid ,a.picaddress  from article_content a where a.userid="+userid +" and a.articlecontent   like  '%"+keyword+"%'"  ;	
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public void SetBlogRec(int userid, int blogid,int blogtype) {
		// TODO Auto-generated method stub
		String sql ="update  article_content  set  articletype=" +blogtype +" where userid ="+userid  +" and   articleid= "+blogid ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}
	@Override
	public int AddBlogReutrnBlogId(Blog blog) {
		// TODO Auto-generated method stub
		
		String  ss= "insert into article_content  (cateid,articletitle,picaddress,articlecontent,userid,blogcateid,creattime,articletype,topicid,articleitd) values "
	             +"('"+blog.getCateid()+"','"+blog.getArticletitle()+"','"+blog.getPicaddress()+"','"+blog.getArticlecontent()+"','"+blog.getUserid()+"','"+blog.getBlogcateid()+"','"+blog.getCreatetime()+"','"+blog.getArticletype()+"','"+blog.getTopicid()+"','"+blog.getArticleitd()+"')" ;
System.out.println("sssss"+ss);
	jdbcTemplate.update(ss);
	return	jdbcTemplate.queryForInt("select @@identity") ;
	}
	@Override
	public Page BologListByCate(int userid, int blogcateid, int pagesize ,int pageNum) {
		// TODO Auto-generated method stub
		List lst = null ;
		
		String sql = "select  count(*) "
				+ " from article_content a ,blog_cate  b ,admin_user  c  where  b.blogcateid=a.blogcateid  and  c.userid=a.userid  and    a.userid='"+userid+"'  and a.blogcateid='"+blogcateid+"'   order by articleid DESC " ;
     	int totalRecord = jdbcTemplate.queryForInt(sql);
		
		
     	int pages = 0;   //总页数
		 if (totalRecord % pagesize == 0) {
	            pages = totalRecord / pagesize;
	        } else {
	            pages = totalRecord / pagesize + 1;
	        }
     	
		 String sqll = "select a.articleid ,b.blogcatename, a.cateid ,a.articletitle, a.articleitd ,a.articlesummary ,a.userid ,a.blogcateid ,a.creattime ,a.articletype ,a.topicid ,a.picaddress "
					+ " from article_content a ,blog_cate  b  where  b.blogcateid=a.blogcateid   and    a.userid='"+userid+"'  and a.blogcateid='"+blogcateid+"'   order by articleid DESC " ;

	     //查询第page页的数据sql语句
	        if(pageNum<=1){
	            sqll+=" limit 0,"+pagesize;
	        }else{
	            sqll+=" limit "+((pageNum-1)*pagesize)+","+pagesize;
	        } 
     	
	        lst = jdbcTemplate.queryForList(sqll) ;
		
	        Page pl =new Page();
	        System.out.println("totalRecord:"+totalRecord);
	        pl.setTotalRecord(totalRecord);    //设置总记录数	
	        pl.setTotalPage(pages);         // 设置总页数
	        pl.setList(lst);         //设置返回数据
	        pl.setPageNum(pageNum);  // 设置当前页面号
	        pl.setPageSize(pagesize); //设置当前一页显示多少条数据
	        
		return pl;
	}
	@Override
	public com.testsystem.article.vo.BlogInfo GetBlogInfoByUserId(int userid) {
		// TODO Auto-generated method stub
		String sql="select *  from  blog_info  where userid='"+userid+"' ";
		Object blogInfo= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<BlogInfo>(BlogInfo.class)) ;
		return (BlogInfo) blogInfo ;
	}
	@Override
	public void DelBlog(int blogid) {
		// TODO Auto-generated method stub
		String sql ="delete  from  article_content  where articleid='"+blogid+"'";
		jdbcTemplate.update(sql);
	}

}
