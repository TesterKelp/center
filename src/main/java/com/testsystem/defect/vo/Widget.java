package com.testsystem.defect.vo;

public class Widget
{
  int widgetId;
  int schemeId;
  int widgetShow;
  int widgetOrder;
  String widgetEnglishName;
  String widgetChinaName;
  String widgetType;
  int widgetDataSource;
  String widgetFieldName;
  String widgetSqlStr;

  public int getWidgetDataSource()
  {
    return this.widgetDataSource;
  }

  public void setWidgetDataSource(int widgetDataSource) {
    this.widgetDataSource = widgetDataSource;
  }

  public int getWidgetId() {
    return this.widgetId;
  }

  public void setWidgetId(int widgetId) {
    this.widgetId = widgetId;
  }

  public int getSchemeId() {
    return this.schemeId;
  }

  public void setSchemeId(int schemeId) {
    this.schemeId = schemeId;
  }

  public int getWidgetShow() {
    return this.widgetShow;
  }

  public void setWidgetShow(int widgetShow) {
    this.widgetShow = widgetShow;
  }

  public int getWidgetOrder() {
    return this.widgetOrder;
  }

  public void setWidgetOrder(int widgetOrder) {
    this.widgetOrder = widgetOrder;
  }

  public String getWidgetEnglishName() {
    return this.widgetEnglishName;
  }

  public void setWidgetEnglishName(String widgetEnglishName) {
    this.widgetEnglishName = widgetEnglishName;
  }

  public String getWidgetChinaName() {
    return this.widgetChinaName;
  }

  public void setWidgetChinaName(String widgetChinaName) {
    this.widgetChinaName = widgetChinaName;
  }

  public String getWidgetType() {
    return this.widgetType;
  }

  public void setWidgetType(String widgetType) {
    this.widgetType = widgetType;
  }

  public String getWidgetFieldName()
  {
    return this.widgetFieldName;
  }

  public void setWidgetFieldName(String widgetFieldName) {
    this.widgetFieldName = widgetFieldName;
  }

  public String getWidgetSqlStr() {
    return this.widgetSqlStr;
  }

  public void setWidgetSqlStr(String widgetSqlStr) {
    this.widgetSqlStr = widgetSqlStr;
  }
}