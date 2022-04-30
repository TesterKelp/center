package com.testsystem.name.dao;

import java.util.List;

import com.testsystem.name.vo.Wxl;

public interface CalendarDao {

	
	public  int AddCalendar(Wxl wxl);
	
	public List  DayAll();
	
	public Wxl GetWxlById(int id);
	
	public Wxl NextWxlById(int id);
	
	public Wxl PreviousWxlById(int id);
	
	public  List  DayByYear(String year);
	
	public Wxl  WnlByDate(String date);
	
}
