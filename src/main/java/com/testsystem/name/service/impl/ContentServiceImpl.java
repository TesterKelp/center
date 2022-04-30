package com.testsystem.name.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.ContentDao;
import com.testsystem.name.service.ContentService;
import com.testsystem.name.tools.P;
@Service
public class ContentServiceImpl implements ContentService {

	@Autowired
	private ContentDao  contentDao ;
	
	@Override
	public List GetContentByCateId(int id) {
		// TODO Auto-generated method stub
		return contentDao.GetContentByCateId(id);
	}

	@Override
	public List ContentCateDetail(int id) {
		// TODO Auto-generated method stub
		return contentDao.ContentCateDetail(id);
	}

	@Override
	public P GetContentByCateId(int id, int pasesize, int pagenumber) {
		// TODO Auto-generated method stub
		return contentDao.GetContentByCateId(id, pasesize, pagenumber);
	}

	


}
