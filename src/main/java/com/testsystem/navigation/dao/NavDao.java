package com.testsystem.navigation.dao;

import java.util.List;

import com.testsystem.navigation.vo.Nav;
import com.testsystem.navigation.vo.Udate;

public interface NavDao {

	
	public void  addNav(Nav nav);
	
	public void  UPdateNav(Nav nav);
	
	public List  NavList(int userid);
	
	public int   DelNav(int id);
	
	public List  IndexBackGround(int userid);
	
	public List  IndexIcon(int userid);
	
	public String GetIndexBackGround(int userid);
	
	public int  SaveBg(int userid,String pic);
	
	
	public int SetBg(int userid , String pic);
	
	public int DelBg(int id);

	
	public int BgModel(int userid);
	
	public Udate GetUdate(int userid);
	
	public int  AddUdate(Udate udate);
	
	public int  SetUdate(Udate udate);
	
	public int   UpUdate(String key ,String value ,Udate udate);
}
