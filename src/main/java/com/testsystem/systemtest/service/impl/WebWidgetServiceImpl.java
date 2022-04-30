package com.testsystem.systemtest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.systemtest.dao.WebWidgetDao;
import com.testsystem.systemtest.service.WebWidgetService;
import com.testsystem.systemtest.vo.WebWidget;
@Service
public class WebWidgetServiceImpl implements WebWidgetService {
	@Autowired
	private WebWidgetDao webWidgetDao ;
	public List GetAllWidget() {
		// TODO Auto-generated method stub
		return webWidgetDao.GetAllWidget();
	}
	public List GetWidgetByStatus(int Status) {
		// TODO Auto-generated method stub
		return webWidgetDao.GetWidgetByStatus(Status);
	}
	public List GetWidgetByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		return webWidgetDao.GetWidgetByModuleId(moduleid);
	}
	public void AddWidget(WebWidget webWidget) {
		// TODO Auto-generated method stub
		webWidgetDao.AddWidget(webWidget);
	}
	public List GetWidgetByWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		return webWidgetDao.GetWidgetByWidgetId(widgetid);
	}
	public void DelWidgetByWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		webWidgetDao.DelWidgetByWidgetId(widgetid);
	}
	public void UpdateWidget(WebWidget webWidget) {
		// TODO Auto-generated method stub
		webWidgetDao.UpdateWidget(webWidget);
	}
	public void SetWidgetIsSuccessfully(int widgetid, int widgetstatus) {
		// TODO Auto-generated method stub
		webWidgetDao.SetWidgetIsSuccessfully(widgetid, widgetstatus);
	}
	public List WidgetIsUsedBWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		return webWidgetDao.WidgetIsUsedBWidgetId(widgetid);
	}

}
