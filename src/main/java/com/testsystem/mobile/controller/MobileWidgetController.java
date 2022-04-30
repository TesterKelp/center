package com.testsystem.mobile.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.JsonAndString;
import com.testsystem.mobile.service.MobileWidgetService;
import com.testsystem.mobile.vo.MobileWidget;
import com.testsystem.systemtest.vo.WebCase;
import com.testsystem.systemtest.vo.WebWidget;

import net.sf.json.JSONObject;
@Controller
@RequestMapping("/mobile")
public class MobileWidgetController {
	@Autowired
	private MobileWidgetService mobileWidgetService ;
	private List widgetList ;
	String msg="";
	
	@RequestMapping(value ="/Mobile_WidgetManage.do", method = RequestMethod.GET)
	public String ArticleSearch(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		widgetList=	mobileWidgetService.GetAllWidget();
		//System.out.println("widgetList"+widgetList);
		map.put("widgetList", widgetList);
		return "/module/mobile/Mobile_WidgetManage";
	}
	
	@RequestMapping(value ="/AddWidget.do", method = RequestMethod.POST)
	public void Module(ModelMap map,MobileWidget mobileWidget, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String pro ="" ; 
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		mobileWidget.setUserid(UserUtil.getCurrentUser().getUserid());
		mobileWidget.setWidgetstatus(0);
		
		String  ad=mobileWidget.getWidgetsole().replace("'","''") ;
		mobileWidget.setWidgetsole(ad);
		mobileWidgetService.AddWidget(mobileWidget);
		widgetList= mobileWidgetService.GetWidgetByStatus(1);
		HttpSession session = request.getSession();	 
		for (int i = 0; i <JsonAndString.ListToJsonArray(widgetList).size(); i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(widgetList).get(i);
			pro = pro + "<option value='"+ob.getString("widgetid")+"'>"+ob.getString("pagename")+"_"+ob.getString("widgetname")+"</option>" ;
			}
		session.setAttribute("widgetoperation", pro);
		session.setAttribute("defaultWidgetList", widgetList);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/DelWidget.do", method = RequestMethod.POST)
	public void DelWidget(ModelMap map,WebWidget webWidget, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String pro ="" ; 
		int widgetid = Integer.parseInt(request.getParameter("widgetid"));
		if(mobileWidgetService.WidgetIsUsedBWidgetId(widgetid).size()>0){
			msg="鏈夌敤渚嬭繕鍦ㄤ娇鐢ㄨ缁勪欢锛岃鍏堜慨鏀圭敤渚嬨�";
		}else{
			mobileWidgetService.DelWidgetByWidgetId(widgetid);
			
			
			widgetList= mobileWidgetService.GetWidgetByStatus(1);
			HttpSession session = request.getSession();	 
	// 闇�澶勭悊涓や釜session		
//			1. operation  string  set session
			for (int i = 0; i <JsonAndString.ListToJsonArray(widgetList).size(); i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(widgetList).get(i);
				pro = pro + "<option value='"+ob.getString("widgetid")+"'>"+ob.getString("pagename")+"_"+ob.getString("widgetname")+"</option>" ;
				}
			session.setAttribute("widgetoperation", pro);
//			2. periation  list  set  session
			session.setAttribute("defaultWidgetList", widgetList);
			
			
			
			
			msg="鍒犻櫎鎴愬姛锛�";
		}
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/widgetedit.do", method = RequestMethod.GET)
	public String DelStCase(ModelMap map, WebCase webCase, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
			int  widgetid =Integer.parseInt(request.getParameter("widgetid"));
			widgetList  =mobileWidgetService.GetWidgetByWidgetId(widgetid);
			//System.out.println(widgetList);
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(widgetList).get(0);
			map.put("widgetid", ob.getString("widgetid"));
			map.put("widgetname", ob.getString("widgetname"));
			map.put("widgetmethod", ob.getString("widgetmethod"));
			map.put("widgetsole", ob.getString("widgetsole"));
			map.put("pageid", ob.getString("pageid"));
			map.put("projectid", ob.getString("projectid"));
			return "/module/mobile/Mobile_CaseWidgetEdit";
	}
	
	@RequestMapping(value ="/SaveEditWidget.do", method = RequestMethod.POST)
	public void SaveEditWidget(ModelMap map,MobileWidget mobileWidget, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String  ad=mobileWidget.getWidgetsole().replace("'","''") ;
		mobileWidget.setWidgetsole(ad);
		mobileWidgetService.UpdateWidget(mobileWidget);
		msg="ok" ;
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value ="/SearchWidget.do", method = RequestMethod.POST)
	public String SearchWidget(ModelMap map, MobileWidget mobileWidget, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		if (!mobileWidget.getWidgetname().equals("")) {

			String sql = "SELECT * from st_widget w , st_project p ,st_module m , admin_user a  where  w.projectid =p.projectid   and w.moduleid = m.moduleid  and  w.userid = a.userid  and "
					+ "widgetstatus=0 and  (w.widgetid='"+mobileWidget.getWidgetname()+"' or w.widgetname='"+mobileWidget.getWidgetname()+ "' or w.widgetsole='"+mobileWidget.getWidgetsole()+"')";		
		}		
		else if (mobileWidget.getWidgetname().equals("") && mobileWidget.getProjectid() == 0 && mobileWidget.getModuleid() == 0) {
			widgetList = mobileWidgetService.GetAllWidget();
		} else if (mobileWidget.getWidgetname().equals("") && mobileWidget.getProjectid() == 0 && mobileWidget.getModuleid() != 0) {

			String sql = "SELECT * from st_widget w , st_project p ,st_module m , admin_user a  where  w.projectid =p.projectid   and w.moduleid = m.moduleid  and  w.userid = a.userid  and widgetstatus=0 and w.moduleid="+mobileWidget.getModuleid();		
			
		} else if (mobileWidget.getWidgetname().equals("") && mobileWidget.getProjectid() != 0 && mobileWidget.getModuleid() == 0) {

			String sql = "SELECT * from st_widget w , st_project p ,st_module m , admin_user a  where  w.projectid =p.projectid   and w.moduleid = m.moduleid  and  w.userid = a.userid  and widgetstatus=0 and w.projectid="+mobileWidget.getProjectid();		
		} 
		

		map.put("widgetList", widgetList);
		return "/S_WidgetManage";
	}
	
	
	
	
	
	
}
