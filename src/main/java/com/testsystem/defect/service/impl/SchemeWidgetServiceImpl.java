package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.defect.dao.SchemeWidgetDao;
import com.testsystem.defect.service.SchemeWidgetService;
import com.testsystem.defect.vo.Widget;

@Service
public class SchemeWidgetServiceImpl
  implements SchemeWidgetService
{

  @Autowired
  private SchemeWidgetDao schemeWidgetDao;

  public List GetSchemeWidgetList(int schemeId)
  {
    return this.schemeWidgetDao.GetSchemeWidgetList(schemeId);
  }

  public String GetWidgetFieldName(int schemeId)
  {
    return this.schemeWidgetDao.GetWidgetFieldName(schemeId);
  }

  public void AddWidget(Widget widget)
  {
    this.schemeWidgetDao.AddWidget(widget);
  }

  public void setFieldNameIsUsed(String fieldName, int schemeId)
  {
    this.schemeWidgetDao.setFieldNameIsUsed(fieldName, schemeId);
  }

  public boolean isExistEngLishName(String widgetEnglishName)
  {
    return this.schemeWidgetDao.isExistEngLishName(widgetEnglishName);
  }

  public String GetWidgetDefaultValue(int widigetId)
  {
    return this.schemeWidgetDao.GetWidgetDefaultValue(widigetId);
  }

  public List GetWidgetSelectDefaultValue(int widgetId)
  {
    return this.schemeWidgetDao.GetWidgetSelectDefaultValue(widgetId);
  }

  public boolean isFirst(int widgetId)
  {
    return this.schemeWidgetDao.isFirst(widgetId);
  }

  public void updataValueText(int widgetId, String valueText)
  {
    this.schemeWidgetDao.updataValueText(widgetId, valueText);
  }

  public void saveValueText(int widgetId, String valueText)
  {
    this.schemeWidgetDao.saveValueText(widgetId, valueText);
  }
}