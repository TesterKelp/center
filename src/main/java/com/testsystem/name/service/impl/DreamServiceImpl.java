package com.testsystem.name.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.CalendarDao;
import com.testsystem.name.dao.DreamDao;
import com.testsystem.name.service.DreamService;
import com.testsystem.name.vo.Dream;
import com.testsystem.name.vo.Ques;
@Service
public class DreamServiceImpl implements DreamService {

	@Autowired
	private DreamDao dreamDao ;

	@Override
	public List DreamList() {
		// TODO Auto-generated method stub
		return dreamDao.DreamList();
	}

	@Override
	public List DreamBy(String field) {
		// TODO Auto-generated method stub
		return dreamDao.DreamBy(field);
	}

	@Override
	public List DreamByZm(int id) {
		// TODO Auto-generated method stub
		return dreamDao.DreamByZm(id);
	}

	@Override
	public List DreamByBig(int id) {
		// TODO Auto-generated method stub
		return dreamDao.DreamByBig(id);
	}

	@Override
	public List DreamBySmall(int id) {
		// TODO Auto-generated method stub
		return dreamDao.DreamBySmall(id);
	}

	@Override
	public Dream GetDream(int id) {
		// TODO Auto-generated method stub
		return dreamDao.GetDream(id);
	}

	@Override
	public List Search(String word,String field) {
		// TODO Auto-generated method stub
		return dreamDao.Search(word,field);
	}

	@Override
	public Ques GetQues(int id) {
		// TODO Auto-generated method stub
		return dreamDao.GetQues(id);
	}

	@Override
	public int addQues(Ques ques) {
		// TODO Auto-generated method stub
		return dreamDao.addQues(ques);
	}

	@Override
	public List QuesList() {
		// TODO Auto-generated method stub
		return dreamDao.QuesList();
	}

	@Override
	public List GetDream(String w) {
		// TODO Auto-generated method stub
		return dreamDao.GetDream(w);
	}

	@Override
	public String GetSql(String w) {
		// TODO Auto-generated method stub
		return dreamDao.GetSql(w);
	}

	@Override
	public List<Dream> GetDream() {
		// TODO Auto-generated method stub
		return dreamDao.GetDream();
	}

	@Override
	public void UpdateMessage(Dream dream) {
		// TODO Auto-generated method stub
		dreamDao.UpdateMessage(dream);
	}

	
	
	
	
	
	
	
	
}
