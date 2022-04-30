package com.testsystem.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.dao.NavigationDao;
import com.testsystem.admin.service.NavigationService;
import com.testsystem.admin.vo.Navigation;
@Service
public class NavigationServiceImpl implements NavigationService {

	@Autowired
	  private NavigationDao navigationDao;

	  public List<Navigation> GetApp11licationNavigation()
	  {
	    return this.navigationDao.GetApp11licationNavigation();
	  }

	  public List GetApplicationNavigation()
	  {
	    return this.navigationDao.GetApplicationNavigation();
	  }

	  public List GetArticleNavigation()
	  {
	    return this.navigationDao.GetArticleNavigation();
	  }

	  public List GetDefectAndShareMenu()
	  {
	    return this.navigationDao.GetDefectAndShareMenu();
	  }

	  public void AddNavigation(Navigation navigation)
	  {
	    this.navigationDao.AddNavigation(navigation);
	  }

	  public void DelNavigation(int navigationId)
	  {
	    this.navigationDao.DelNavigation(navigationId);
	  }

	  public void UpdataNavigation(Navigation navigation)
	  {
	    this.navigationDao.UpdataNavigation(navigation);
	  }

	  public void UpdataNavigationFiled(String fieldName, String value, int navigationId)
	  {
	    this.navigationDao.UpdataNavigationFiled(fieldName, value, navigationId);
	  }

	  public void SetNavigationShow(int navigationId, int navigationShow)
	  {
	    this.navigationDao.SetNavigationShow(navigationId, navigationShow);
	  }

	  public List GetNavigation()
	  {
	    return this.navigationDao.GetNavigation();
	  }

	@Override
	public List GetNavigationByNavigation_type(int Navigation_type) {
		// TODO Auto-generated method stub
		return navigationDao.GetNavigationByNavigation_type(Navigation_type);
	}

	@Override
	public List GetNavigation_type() {
		// TODO Auto-generated method stub
		return navigationDao.GetNavigation_type();
	}

	@Override
	public List GetShowNavigationByNavigation_type(int Navigation_type) {
		// TODO Auto-generated method stub
		return navigationDao.GetShowNavigationByNavigation_type(Navigation_type);
	}

	@Override
	public List GetUserCenterLeftMenu() {
		// TODO Auto-generated method stub
		return navigationDao.GetUserCenterLeftMenu();
	}

	@Override
	public List GetNavigationTypeList() {
		// TODO Auto-generated method stub
		return navigationDao.GetNavigationTypeList();
	}

	@Override
	public int AddNavigationType(String navigationTypeName) {
		// TODO Auto-generated method stub
		return navigationDao.AddNavigationType(navigationTypeName);
	}
}
