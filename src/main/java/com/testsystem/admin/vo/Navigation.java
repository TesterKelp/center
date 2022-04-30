package com.testsystem.admin.vo;

public class Navigation
{
   int navigationId;
   String navigationName;
   String navigationUrl;
   String navigationTarget;
   int navigationSort;
   int navigationType;
   int navigationShow;
   String navigationIcon ;
   String navigationTypeName ;

   
   
   
   
   
  public String getNavigationTypeName() {
	return navigationTypeName;
}

public void setNavigationTypeName(String navigationTypeName) {
	this.navigationTypeName = navigationTypeName;
}

public String getNavigationIcon() {
	return navigationIcon;
}

public void setNavigationIcon(String navigationIcon) {
	this.navigationIcon = navigationIcon;
}

public int getNavigationId()
  {
    return this.navigationId;
  }

  public void setNavigationId(int navigationId) {
    this.navigationId = navigationId;
  }

  public String getNavigationName() {
    return this.navigationName;
  }

  public void setNavigationName(String navigationName) {
    this.navigationName = navigationName;
  }

  public String getNavigationUrl() {
    return this.navigationUrl;
  }

  public void setNavigationUrl(String navigationUrl) {
    this.navigationUrl = navigationUrl;
  }

  public String getNavigationTarget() {
    return this.navigationTarget;
  }

  public void setNavigationTarget(String navigationTarget) {
    this.navigationTarget = navigationTarget;
  }

  public int getNavigationSort() {
    return this.navigationSort;
  }

  public void setNavigationSort(int navigationSort) {
    this.navigationSort = navigationSort;
  }

  public int getNavigationType() {
    return this.navigationType;
  }

  public void setNavigationType(int navigationType) {
    this.navigationType = navigationType;
  }

  public int getNavigationShow() {
    return this.navigationShow;
  }

  public void setNavigationShow(int navigationShow) {
    this.navigationShow = navigationShow;
  }
}