package com.testsystem.name.dao;

import java.util.List;

import com.testsystem.name.vo.Dream;
import com.testsystem.name.vo.Ques;

public interface DreamDao {
	public  List   DreamList();
	public  List   DreamBy(String field);

	
	public  List  DreamByZm(int id);
	public  List  DreamByBig(int id);
	public  List  DreamBySmall(int id);
	public  List  Search(String word,String field);
	public Dream  GetDream(int id);
	public Ques GetQues(int id);
	
	public  int  addQues(Ques ques);
	public List  GetDream(String w);
	public String  GetSql(String w);
	public  List  QuesList();
	
	
	public  List<Dream> GetDream();
	
	public  void  UpdateMessage(Dream dream);
	
	
}
