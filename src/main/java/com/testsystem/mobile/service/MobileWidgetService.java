package com.testsystem.mobile.service;

import java.util.List;

import com.testsystem.mobile.vo.MobileWidget;
import com.testsystem.systemtest.vo.WebWidget;

public interface MobileWidgetService {

	public List GetAllWidget();

	public List GetWidgetByStatus(int Status);

	public List GetWidgetByModuleId(int moduleid);

	public void AddWidget(MobileWidget mobileWidget);

	public List GetWidgetByWidgetId(int widgetid);
	
	public List WidgetIsUsedBWidgetId(int widgetid);

	public void DelWidgetByWidgetId(int widgetid);

	
	public  void  UpdateWidget(MobileWidget mobileWidget);
	
	
	public  void  SetWidgetIsSuccessfully(int widgetid,int widgetstatus);
	
	
	
	
}
