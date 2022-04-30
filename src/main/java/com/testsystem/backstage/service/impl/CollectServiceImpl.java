package com.testsystem.backstage.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.backstage.dao.CollectDao;
import com.testsystem.backstage.service.CollectService;
@Service
public class CollectServiceImpl implements CollectService {

	@Autowired
	private CollectDao collectDao ;
	
	
	@Override
	public List CollectItemList() {
		// TODO Auto-generated method stub
		return collectDao.CollectItemList();
	}


	@Override
	public List GetItemCate(int itemid) {
		// TODO Auto-generated method stub
		return collectDao.GetItemCate(itemid);
	}


	@Override
	public void AddDataToCollectContent(String sql) {
		// TODO Auto-generated method stub
		collectDao.AddDataToCollectContent(sql);
	}


	@Override
	public List GetItemWenZhang(int itemid) {
		// TODO Auto-generated method stub
		
			return collectDao.GetItemWenZhang(itemid);

	}


	@Override
	public List GetCollectWenZhang(int wid) {
		// TODO Auto-generated method stub
		return collectDao.GetCollectWenZhang(wid);
	}


	@Override
	public List GetCollectCateWenZhang(int cid) {
		// TODO Auto-generated method stub
		return collectDao.GetCollectCateWenZhang(cid);
	}


	@Override
	public void AddCollectToArticle(String sql) {
		// TODO Auto-generated method stub
		collectDao.AddCollectToArticle(sql);
	}

	

}
