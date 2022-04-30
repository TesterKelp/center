package com.testsystem.article.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.article.dao.CommentDao;
import com.testsystem.article.vo.Comment;
@Repository
public class CommentDaoImpl implements CommentDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
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

}
