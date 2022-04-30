
package com.testsystem.navigation.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.navigation.dao.NavDao;
import com.testsystem.navigation.service.NavService;
import com.testsystem.navigation.vo.Nav;
import com.testsystem.navigation.vo.Udate;
@Service
public class NavServiceImpl implements NavService {

	
	@Autowired NavDao navDao ;
	
	public void addNav(Nav nav) {
		// TODO Auto-generated method stub
		navDao.addNav(nav);
	}

	public List NavList(int userid) {
		// TODO Auto-generated method stub
		return navDao.NavList(userid);
	}

	@Override
	public List IndexBackGround(int userid) {
		// TODO Auto-generated method stub
		return navDao.IndexBackGround(userid);
	}

	@Override
	public String GetIndexBackGround(int userid) {
		// TODO Auto-generated method stub
		return navDao.GetIndexBackGround(userid);
	}

	@Override
	public int SaveBg(int userid, String pic) {
		// TODO Auto-generated method stub
		return navDao.SaveBg(userid, pic);
	}

	@Override
	public List IndexIcon(int userid) {
		// TODO Auto-generated method stub
		return navDao.IndexIcon(userid);
	}

	@Override
	public int SetBg(int userid, String pic) {
		// TODO Auto-generated method stub
		return navDao.SetBg(userid, pic);
	}

	@Override
	public int DelBg(int id) {
		// TODO Auto-generated method stub
		return navDao.DelBg(id);
	}

	@Override
	public int DelNav(int id) {
		// TODO Auto-generated method stub
		return navDao.DelNav(id);
	}

	@Override
	public void UPdateNav(Nav nav) {
		// TODO Auto-generated method stub
		navDao.UPdateNav(nav);
	}

	@Override
	public int BgModel(int userid) {
		// TODO Auto-generated method stub
		return navDao.BgModel(userid);
	}

	@Override
	public Udate GetUdate(int userid) {
		// TODO Auto-generated method stub
		return navDao.GetUdate(userid);
	}

	@Override
	public int AddUdate(Udate udate) {
		// TODO Auto-generated method stub
		return navDao.AddUdate(udate);
	}

	@Override
	public int SetUdate(Udate udate) {
		// TODO Auto-generated method stub
		return navDao.SetUdate(udate);
	}

	@Override
	public int UpUdate(String key, String value, Udate udate) {
		// TODO Auto-generated method stub
		return navDao.UpUdate(key, value ,udate);
	}



}
