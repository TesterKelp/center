package com.testsystem.mobile.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.mobile.dao.MobileWidgetDao;
import com.testsystem.mobile.service.MobileWidgetService;
import com.testsystem.mobile.vo.MobileWidget;
import com.testsystem.systemtest.vo.WebWidget;
@Service
public class MobileWidgetServiceImpl implements MobileWidgetService {
	@Autowired
	private MobileWidgetDao mobileWidgetDao ;
	public List GetAllWidget() {
		// TODO Auto-generated method stub
		return mobileWidgetDao.GetAllWidget();
	}
	public List GetWidgetByStatus(int Status) {
		// TODO Auto-generated method stub
		return mobileWidgetDao.GetWidgetByStatus(Status);
	}
	public List GetWidgetByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		return mobileWidgetDao.GetWidgetByModuleId(moduleid);
	}
	public void AddWidget(MobileWidget mobileWidget) {
		// TODO Auto-generated method stub
		mobileWidgetDao.AddWidget(mobileWidget);
	}
	public List GetWidgetByWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		return mobileWidgetDao.GetWidgetByWidgetId(widgetid);
	}
	public void DelWidgetByWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		mobileWidgetDao.DelWidgetByWidgetId(widgetid);
	}
	public void UpdateWidget(MobileWidget mobileWidget) {
		// TODO Auto-generated method stub
		mobileWidgetDao.UpdateWidget(mobileWidget);
	}
	public void SetWidgetIsSuccessfully(int widgetid, int widgetstatus) {
		// TODO Auto-generated method stub
		mobileWidgetDao.SetWidgetIsSuccessfully(widgetid, widgetstatus);
	}
	public List WidgetIsUsedBWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		return mobileWidgetDao.WidgetIsUsedBWidgetId(widgetid);
	}

}
