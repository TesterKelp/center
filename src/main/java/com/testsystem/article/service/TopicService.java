package com.testsystem.article.service;

import java.util.List;

import com.testsystem.article.vo.Topic;

public interface TopicService {
	
public List TopicAllList();
public List TopicAllList(String item);

public  void TopicAdd(Topic topic);
public void TopicEdit(Topic topic);

public List MyTopic(int userid);
public Topic GetTopicById(int topicid);

public  void DelTopic(int topicid);
public List GetTopicSelect(int userid);

public int SetTopicTop(Topic topic);

}
