package com.testsystem.article.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.article.dao.CommentDao;
import com.testsystem.article.service.CommentService;
import com.testsystem.article.vo.Comment;
@Service
public class CommentServiceImpl  implements  CommentService{

	@Autowired
	private CommentDao commentDao;
	
	public void SaveComment(Comment comment) {
		// TODO Auto-generated method stub
		commentDao.SaveComment(comment);
	}

	public List GetComment(int articleid) {
		// TODO Auto-generated method stub
		return commentDao.GetComment(articleid);
	}

}
