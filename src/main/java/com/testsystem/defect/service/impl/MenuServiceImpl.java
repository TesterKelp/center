package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.defect.dao.MenuDao;
import com.testsystem.defect.service.MenuService;
import com.testsystem.defect.vo.Menu;
@Service
public class MenuServiceImpl implements MenuService {

	
	@Autowired
	private MenuDao menuDao ;
	
	public List GetDefectMenu() {
		// TODO Auto-generated method stub
		return menuDao.GetDefectMenu();
	}

	public void AddMenu(Menu menu) {
		// TODO Auto-generated method stub
		menuDao.AddMenu(menu);
	}

	public void DelMenu(int menuid) {
		// TODO Auto-generated method stub
		menuDao.DelMenu(menuid);
	}

	public void UpdataMenu(Menu menu) {
		// TODO Auto-generated method stub
		menuDao.UpdataMenu(menu);
	}

	public void UpdataMenuFiled(String filename, String value,int menuid) {
		// TODO Auto-generated method stub
		menuDao.UpdataMenuFiled(filename, value, menuid);
	}

	@Override
	public List GetShareMenu() {
		// TODO Auto-generated method stub
		return menuDao.GetShareMenu();
	}

	@Override
	public List GetDefectAndShareMenu() {
		// TODO Auto-generated method stub
		return menuDao.GetDefectAndShareMenu();
	}

	@Override
	public void SetMenuShow(int menuid, int isshow) {
		// TODO Auto-generated method stub
		menuDao.SetMenuShow(menuid, isshow);
	}

}
