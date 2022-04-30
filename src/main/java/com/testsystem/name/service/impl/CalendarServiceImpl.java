package com.testsystem.name.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.BaseDao;
import com.testsystem.name.dao.CalendarDao;
import com.testsystem.name.service.CalendarService;
import com.testsystem.name.vo.Wxl;
@Service
public class CalendarServiceImpl implements CalendarService {

	
	@Autowired
	private CalendarDao calendarDao ;

	@Override
	public int AddCalendar(Wxl wxl) {
		// TODO Auto-generated method stub
		return calendarDao.AddCalendar(wxl);
	}

	@Override
	public List DayAll() {
		// TODO Auto-generated method stub
		return calendarDao.DayAll();
	}

	@Override
	public Wxl GetWxlById(int id) {
		// TODO Auto-generated method stub
		return calendarDao.GetWxlById(id);
	}

	@Override
	public List DayByYear(String year) {
		// TODO Auto-generated method stub
		return calendarDao.DayByYear(year);
	}

	@Override
	public Wxl NextWxlById(int id) {
		// TODO Auto-generated method stub
		return calendarDao.NextWxlById(id);
	}

	@Override
	public Wxl PreviousWxlById(int id) {
		// TODO Auto-generated method stub
		return calendarDao.PreviousWxlById(id);
	}

	@Override
	public Wxl WnlByDate(String date) {
		// TODO Auto-generated method stub
		return calendarDao.WnlByDate(date);
	}
	
	
}
