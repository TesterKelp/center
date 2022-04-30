package com.testsystem.admin.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.dao.NavigationDao;
import com.testsystem.admin.vo.Navigation;
@Repository
public class NavigationDaoImpl implements NavigationDao {

	  @Autowired
	  JdbcTemplate jdbcTemplate;

	  public List<Navigation> GetApp11licationNavigation()
	  {
	    return null;
	  }

	  public List GetApplicationNavigation()
	  {
	    String sql = "select * from admin_navigation    where   navigation_type=1  and  navigation_show=1   order by navigation_sort";
	    return this.jdbcTemplate.queryForList(sql);
	  }

	  public List GetArticleNavigation()
	  {
	    String sql = "select * from admin_navigation    where   navigation_type=2  and  navigation_show=1   order by navigation_sort";
	    return this.jdbcTemplate.queryForList(sql);
	  }

	  public List GetDefectAndShareMenu()
	  {
	    return null;
	  }

	  public void AddNavigation(Navigation navigation)
	  {
	    String sql = "insert into admin_navigation (navigation_name,navigation_url,navigation_target,navigation_sort,navigation_icon,navigation_type_name,navigation_type,navigation_show)  values ('" + 
	      navigation.getNavigationName() + "','" + navigation.getNavigationUrl() + "','" + 
	      navigation.getNavigationTarget() + "','" + navigation.getNavigationSort() + "','" + 
	      navigation.getNavigationIcon() + "','" + navigation.getNavigationTypeName() + "','" +
	      navigation.getNavigationType() + "','" + navigation.getNavigationShow() + "')";
	    System.out.println(sql);
	    this.jdbcTemplate.update(sql);
	  }

	  public void DelNavigation(int navigationId)
	  {
	    String sql = "delete  from admin_navigation where navigation_id=" + navigationId;
	    System.out.println(sql);
	    this.jdbcTemplate.update(sql);
	  }

	  public void UpdataNavigation(Navigation navigation)
	  {
	  }

	  public void UpdataNavigationFiled(String fieldName, String value, int navigationId)
	  {
	    String sql = "update admin_navigation set " + fieldName + "='" + value + "' where navigation_id=" + navigationId;
	    this.jdbcTemplate.update(sql);
	  }

	  public void SetNavigationShow(int navigationId, int navigationShow)
	  {
	    String sql = "update admin_navigation set navigation_show='" + navigationShow + "' where navigation_id=" + 
	      navigationId;
	    this.jdbcTemplate.update(sql);
	  }

	  public List GetNavigation()
	  {
	    String sql = "select * from admin_navigation  order by navigation_type , navigation_sort";
	    return this.jdbcTemplate.queryForList(sql);
	  }

	@Override
	public List GetNavigationByNavigation_type(int Navigation_type) {
		// TODO Auto-generated method stub
		 String sql = "select * from admin_navigation  where  navigation_type='"+Navigation_type+"'   order by  navigation_sort";
		    return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetNavigation_type() {
		// TODO Auto-generated method stub
		 String sql = "select * from admin_navigation_type  ";
		    return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetShowNavigationByNavigation_type(int Navigation_type) {
		// TODO Auto-generated method stub
		String sql = "select * from admin_navigation  where  navigation_type='"+Navigation_type+"'  and  navigation_show=1  order by  navigation_sort";
	    return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetUserCenterLeftMenu() {
		// TODO Auto-generated method stub
		String sql = "select * from admin_navigation  where  navigation_type='5'  and  navigation_show=1 order by  navigation_sort";
	    return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetNavigationTypeList() {
		// TODO Auto-generated method stub
		String sql = "select * from admin_navigation_type  order by navigation_type_id ";
	    return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public int AddNavigationType(String navigationTypeName) {
		// TODO Auto-generated method stub
		String sql ="insert into  admin_navigation_type (navigation_type_name) values ('"+navigationTypeName+"')   " ;
		return this.jdbcTemplate.update(sql);
	}
}
