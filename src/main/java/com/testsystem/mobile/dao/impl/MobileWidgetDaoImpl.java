package com.testsystem.mobile.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mobile.dao.MobileWidgetDao;
import com.testsystem.mobile.vo.MobileWidget;
@Repository
public class MobileWidgetDaoImpl implements MobileWidgetDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	public List GetAllWidget() {
		// TODO Auto-generated method stub
		String sql = "SELECT * from mo_widget w , mo_project p ,mo_page m , admin_user a  where  w.projectid =p.projectid   and w.pageid = m.pageid  and  w.userid = a.userid   ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetWidgetByStatus(int Status) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from st_widget w , mo_project p ,mo_page m , admin_user a  where  w.projectid =p.projectid   and w.pageid = m.pageid  and  w.userid = a.userid ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetWidgetByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from mo_widget w where  w.moduleid="+moduleid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void AddWidget(MobileWidget mobileWidget) {
		// TODO Auto-generated method stub
		String sql = "insert into mo_widget(projectid,pageid,widgetname,widgetmethod,widgetsole,userid,widgetstatus) values ('"+mobileWidget.getProjectid()+"','"+mobileWidget.getPageid()+"','"+mobileWidget.getWidgetname()+"','"+mobileWidget.getWidgetmethod()+"','"+mobileWidget.getWidgetsole()+"','"+mobileWidget.getUserid()+"','"+mobileWidget.getWidgetstatus()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public List GetWidgetByWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from mo_widget w where  w.widgetid="+widgetid ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void DelWidgetByWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		String sql = "delete  from mo_widget  where  widgetid="+widgetid ;	
		jdbcTemplate.update(sql)	;
	}
	public void UpdateWidget(MobileWidget mobileWidget) {
		// TODO Auto-generated method stub
		String sql = "update mo_widget  set projectid='"+mobileWidget.getProjectid()+"',"
				+"pageid = '"+mobileWidget.getPageid()+"',"
				+"widgetmethod = '"+mobileWidget.getWidgetmethod()+"',"
				+"widgetname = '"+mobileWidget.getWidgetname()+"',"
				+"widgetsole = '"+mobileWidget.getWidgetsole()+"'  where  widgetid ="+mobileWidget.getWidgetid();

		jdbcTemplate.update(sql);
	}
	public void SetWidgetIsSuccessfully(int widgetid, int widgetstatus) {
		// TODO Auto-generated method stub
		String sql="update mo_widget  set widgetstatus="+widgetstatus+" where widgetid="+widgetid;
		jdbcTemplate.update(sql);
	}
	public List WidgetIsUsedBWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from mo_case_body w where  w.widgetid="+widgetid ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
}
