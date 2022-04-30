package com.testsystem.mobile.dao;

import java.util.List;

import com.testsystem.mobile.vo.MobileWidget;

public interface MobileWidgetDao {
	public List GetAllWidget();

	public List GetWidgetByStatus(int Status);

	public List GetWidgetByModuleId(int moduleid);

	public void AddWidget(MobileWidget mobileWidget);

	public List GetWidgetByWidgetId(int widgetid);

	public void DelWidgetByWidgetId(int widgetid);
	
	public  void  UpdateWidget(MobileWidget mobileWidget);
	
	public  void  SetWidgetIsSuccessfully(int widgetid,int widgetstatus);
	
	public List WidgetIsUsedBWidgetId(int widgetid);

}
