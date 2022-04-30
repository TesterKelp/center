package com.testsystem.article.dao;

import java.util.List;

import com.testsystem.article.vo.Bored;

public interface BoredDao {

	
	public  List  BoredListByShow();
	
	public  List  BoredListByAll();
	
	public  void  SpeakBored(Bored bored);
	
	public  void  SetBoredShow(int id );
	
	
	
	
	
	
	
}
