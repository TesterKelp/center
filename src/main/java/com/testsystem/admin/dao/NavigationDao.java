package com.testsystem.admin.dao;

import java.util.List;

import com.testsystem.admin.vo.Navigation;

public interface NavigationDao {
	  public  List<Navigation> GetApp11licationNavigation();

	  public List GetApplicationNavigation();

	  public  List GetArticleNavigation();

	  public  List GetNavigation();

	  public  List GetDefectAndShareMenu();

	  public  void AddNavigation(Navigation paramNavigation);

	  public  void DelNavigation(int paramInt);

	  public  void UpdataNavigation(Navigation paramNavigation);

	  public  void UpdataNavigationFiled(String paramString1, String paramString2, int paramInt);

	  public  void SetNavigationShow(int paramInt1, int paramInt2);
	  
	  public  List GetNavigationByNavigation_type(int Navigation_type);
	  
	  public  List GetNavigation_type();
	  
	  public  List GetShowNavigationByNavigation_type(int Navigation_type);
	  
	  public  List GetUserCenterLeftMenu();
	  
	  public  List GetNavigationTypeList();
	  
	  public  int  AddNavigationType(String navigationTypeName);
}
