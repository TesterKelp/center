package com.testsystem.systemtest.dao;

import java.util.List;

import com.testsystem.systemtest.vo.WebWidget;

public interface WebWidgetDao {
	public List GetAllWidget();

	public List GetWidgetByStatus(int Status);

	public List GetWidgetByModuleId(int moduleid);

	public void AddWidget(WebWidget webWidget);

	public List GetWidgetByWidgetId(int widgetid);

	public void DelWidgetByWidgetId(int widgetid);
	
	public  void  UpdateWidget(WebWidget webWidget);
	
	public  void  SetWidgetIsSuccessfully(int widgetid,int widgetstatus);
	
	public List WidgetIsUsedBWidgetId(int widgetid);

}
