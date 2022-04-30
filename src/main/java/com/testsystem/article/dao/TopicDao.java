package com.testsystem.article.dao;

import java.util.List;

import com.testsystem.article.vo.Topic;

public interface TopicDao {
	public List TopicAllList();
	public List TopicAllList(String item);
	public  void TopicAdd(Topic topic);
	public List MyTopic(int userid);
	public Topic GetTopicById(int topicid);
	public  void DelTopic(int topicid);
	public  void TopicEdit(Topic topic);
	public List GetTopicSelect(int userid);
	
	public int SetTopicTop(Topic topic);
	
	
}
