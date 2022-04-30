package com.testsystem.article.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.article.dao.CateDao;
import com.testsystem.article.service.CateService;
import com.testsystem.article.vo.Cate;
@Service
public class CateServiceImpl implements CateService {

	
	@Autowired
	private CateDao cateDao ;
	public void AddCate(Cate cate) {
		// TODO Auto-generated method stub
		cateDao.AddCate(cate);
	}
	public List GetCateList() {
		// TODO Auto-generated method stub
		return cateDao.GetCateList();
	}
	public void SaveCate(Cate cate) {
		// TODO Auto-generated method stub
		cateDao.SaveCate(cate);
	}
	public void DelCate(int cateid) {
		// TODO Auto-generated method stub
		cateDao.DelCate(cateid);
	}
	public List GetCateName() {
		// TODO Auto-generated method stub
		return cateDao.GetCateName();
	}
	public List GetShareCateSelect() {
		// TODO Auto-generated method stub
		return cateDao.GetShareCateSelect();
	}
	public List GetHiddenCateSelect() {
		// TODO Auto-generated method stub
		return cateDao.GetHiddenCateSelect();
	}
	@Override
	public List GetItemCate(int itemid) {
		// TODO Auto-generated method stub
		return cateDao.GetItemCate(itemid);
	}
	@Override
	public List GetItemCate(String item_directorie) {
		// TODO Auto-generated method stub
		return cateDao.GetItemCate(item_directorie);
	}
	@Override
	public List GetCateJson() {
		// TODO Auto-generated method stub
		return cateDao.GetCateJson();
	}
	@Override
	public Cate CateInfo(String catedirectory) {
		// TODO Auto-generated method stub
		return cateDao.CateInfo(catedirectory);
	}
	@Override
	public Cate CateById(int cateid) {
		// TODO Auto-generated method stub
		return cateDao.CateById(cateid);
	}
	@Override
	public List GetCateJsonByItem(String item_directorie) {
		// TODO Auto-generated method stub
		return cateDao.GetCateJsonByItem(item_directorie);
	}


}
