package com.testsystem.defect.service;

import java.util.List;

import com.testsystem.defect.vo.Widget;

public  interface SchemeWidgetService
{
  public  List GetSchemeWidgetList(int paramInt);

  public  String GetWidgetFieldName(int paramInt);

  public  boolean isExistEngLishName(String paramString);

  public  void setFieldNameIsUsed(String paramString, int paramInt);

  public  void AddWidget(Widget paramWidget);

  public  String GetWidgetDefaultValue(int paramInt);

  public  List GetWidgetSelectDefaultValue(int paramInt);

  public  boolean isFirst(int paramInt);

  public  void updataValueText(int paramInt, String paramString);

  public  void saveValueText(int paramInt, String paramString);
}