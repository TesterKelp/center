package com.testsystem.article.service;

import java.util.List;

import com.testsystem.article.vo.Comment;

public interface CommentService {
	public void SaveComment(Comment comment);
	public List GetComment(int articleid);
}
