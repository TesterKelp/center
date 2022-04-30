package com.testsystem.article.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.article.dao.TopicDao;
import com.testsystem.article.service.TopicService;
import com.testsystem.article.vo.Topic;
@Service
public class TopicServiceImpl implements TopicService {
	@Autowired  
	private TopicDao topicDao ;
	public List TopicAllList() {
		// TODO Auto-generated method stub
		return topicDao.TopicAllList();
	}
	public void TopicAdd(Topic topic) {
		// TODO Auto-generated method stub
		 topicDao.TopicAdd(topic);
	}
	public List MyTopic(int userid) {
		// TODO Auto-generated method stub
		return topicDao.MyTopic(userid);
	}
	public Topic GetTopicById(int topicid) {
		// TODO Auto-generated method stub
		return topicDao.GetTopicById(topicid);
	}
	public void DelTopic(int topicid) {
		// TODO Auto-generated method stub
		topicDao.DelTopic(topicid);
	}
	public void TopicEdit(Topic topic) {
		// TODO Auto-generated method stub
		topicDao.TopicEdit(topic);
	}
	public List GetTopicSelect(int userid) {
		// TODO Auto-generated method stub
		return topicDao.GetTopicSelect(userid) ;
	}
	@Override
	public List TopicAllList(String item) {
		// TODO Auto-generated method stub
		return topicDao.TopicAllList(item);
	}
	@Override
	public int SetTopicTop(Topic topic) {
		// TODO Auto-generated method stub
		return topicDao.SetTopicTop(topic);
	}

}
