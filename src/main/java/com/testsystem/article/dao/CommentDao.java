package com.testsystem.article.dao;

import java.util.List;

import com.testsystem.article.vo.Comment;

public interface CommentDao {
	public void SaveComment(Comment comment);
	public List GetComment(int articleid);
}
