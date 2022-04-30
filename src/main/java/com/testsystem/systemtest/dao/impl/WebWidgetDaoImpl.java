package com.testsystem.systemtest.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.systemtest.dao.WebWidgetDao;
import com.testsystem.systemtest.vo.WebWidget;
@Repository
public class WebWidgetDaoImpl implements WebWidgetDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	public List GetAllWidget() {
		// TODO Auto-generated method stub
		String sql = "SELECT * from st_widget w , st_project p ,st_page m , admin_user a  where  w.projectid =p.projectid   and w.pageid = m.pageid  and  w.userid = a.userid   ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetWidgetByStatus(int Status) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from st_widget w , st_project p ,st_page m , admin_user a  where  w.projectid =p.projectid   and w.pageid = m.pageid  and  w.userid = a.userid ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetWidgetByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from st_widget w where  w.moduleid="+moduleid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void AddWidget(WebWidget webWidget) {
		// TODO Auto-generated method stub
		String sql = "insert into st_widget(projectid,pageid,widgetname,widgetmethod,widgetsole,userid,widgetstatus) values ('"+webWidget.getProjectid()+"','"+webWidget.getPageid()+"','"+webWidget.getWidgetname()+"','"+webWidget.getWidgetmethod()+"','"+webWidget.getWidgetsole()+"','"+webWidget.getUserid()+"','"+webWidget.getWidgetstatus()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public List GetWidgetByWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from st_widget w where  w.widgetid="+widgetid ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void DelWidgetByWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		String sql = "delete  from st_widget  where  widgetid="+widgetid ;	
		jdbcTemplate.update(sql)	;
	}
	public void UpdateWidget(WebWidget webWidget) {
		// TODO Auto-generated method stub
		String sql = "update st_widget  set projectid='"+webWidget.getProjectid()+"',"
				+"pageid = '"+webWidget.getPageid()+"',"
				+"widgetmethod = '"+webWidget.getWidgetmethod()+"',"
				+"widgetname = '"+webWidget.getWidgetname()+"',"
				+"widgetsole = '"+webWidget.getWidgetsole()+"'  where  widgetid ="+webWidget.getWidgetid();

		jdbcTemplate.update(sql);
	}
	public void SetWidgetIsSuccessfully(int widgetid, int widgetstatus) {
		// TODO Auto-generated method stub
		String sql="update st_widget  set widgetstatus="+widgetstatus+" where widgetid="+widgetid;
		jdbcTemplate.update(sql);
	}
	public List WidgetIsUsedBWidgetId(int widgetid) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from st_case_body w where  w.widgetid="+widgetid ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
}
