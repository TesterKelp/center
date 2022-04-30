package com.testsystem.article.service;

import java.util.List;

import com.testsystem.article.vo.Bored;

public interface BoredService {

	
	
	public  List  BoredListByShow();
	
	public  List  BoredListByAll();
	
	public  void  SpeakBored(Bored bored);
	
	public  void  SetBoredShow(int id );
	
}
