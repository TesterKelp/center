package com.testsystem.systemtest.controller;

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
import com.testsystem.systemtest.service.WebWidgetService;
import com.testsystem.systemtest.vo.WebCase;
import com.testsystem.systemtest.vo.WebWidget;

import net.sf.json.JSONObject;
@Controller
@RequestMapping("/systemtest")
public class WebWidgetController {
	@Autowired
	private WebWidgetService webWidgetService ;
	private List widgetList ;
	String msg="";
	
	@RequestMapping(value ="/Web_WidgetManage.do", method = RequestMethod.GET)
	public String ArticleSearch(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		widgetList=	webWidgetService.GetAllWidget();
		//System.out.println("widgetList"+widgetList);
		map.put("widgetList", widgetList);
		return "/module/systemtest/Web_WidgetManage";
	}
	
	@RequestMapping(value ="/AddWidget.do", method = RequestMethod.POST)
	public void Module(ModelMap map,WebWidget webWidget, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String pro ="" ; 
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		webWidget.setUserid(UserUtil.getCurrentUser().getUserid());
		webWidget.setWidgetstatus(0);
		
		String  ad=webWidget.getWidgetsole().replace("'","''") ;
		webWidget.setWidgetsole(ad);
		webWidgetService.AddWidget(webWidget);
		widgetList= webWidgetService.GetWidgetByStatus(1);
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
		if(webWidgetService.WidgetIsUsedBWidgetId(widgetid).size()>0){
			msg="鏈夌敤渚嬭繕鍦ㄤ娇鐢ㄨ缁勪欢锛岃鍏堜慨鏀圭敤渚嬨�";
		}else{
			webWidgetService.DelWidgetByWidgetId(widgetid);
			
			
			widgetList= webWidgetService.GetWidgetByStatus(1);
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
			widgetList  =	webWidgetService.GetWidgetByWidgetId(widgetid);
			//System.out.println(widgetList);
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(widgetList).get(0);
			map.put("widgetid", ob.getString("widgetid"));
			map.put("widgetname", ob.getString("widgetname"));
			map.put("widgetmethod", ob.getString("widgetmethod"));
			map.put("widgetsole", ob.getString("widgetsole"));
			map.put("pageid", ob.getString("pageid"));
			map.put("projectid", ob.getString("projectid"));
			return "/module/systemtest/Web_CaseWidgetEdit";
	}
	
	@RequestMapping(value ="/SaveEditWidget.do", method = RequestMethod.POST)
	public void SaveEditWidget(ModelMap map,WebWidget webWidget, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String  ad=webWidget.getWidgetsole().replace("'","''") ;
		webWidget.setWidgetsole(ad);
		webWidgetService.UpdateWidget(webWidget);
		msg="ok" ;
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value ="/SearchWidget.do", method = RequestMethod.POST)
	public String SearchWidget(ModelMap map, WebWidget webWidget, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		if (!webWidget.getWidgetname().equals("")) {

			String sql = "SELECT * from st_widget w , st_project p ,st_module m , admin_user a  where  w.projectid =p.projectid   and w.moduleid = m.moduleid  and  w.userid = a.userid  and "
					+ "widgetstatus=0 and  (w.widgetid='"+webWidget.getWidgetname()+"' or w.widgetname='"+webWidget.getWidgetname()+ "' or w.widgetsole='"+webWidget.getWidgetsole()+"')";		
		}		
		else if (webWidget.getWidgetname().equals("") && webWidget.getProjectid() == 0 && webWidget.getModuleid() == 0) {
			widgetList = webWidgetService.GetAllWidget();
		} else if (webWidget.getWidgetname().equals("") && webWidget.getProjectid() == 0 && webWidget.getModuleid() != 0) {

			String sql = "SELECT * from st_widget w , st_project p ,st_module m , admin_user a  where  w.projectid =p.projectid   and w.moduleid = m.moduleid  and  w.userid = a.userid  and widgetstatus=0 and w.moduleid="+webWidget.getModuleid();		
			
		} else if (webWidget.getWidgetname().equals("") && webWidget.getProjectid() != 0 && webWidget.getModuleid() == 0) {

			String sql = "SELECT * from st_widget w , st_project p ,st_module m , admin_user a  where  w.projectid =p.projectid   and w.moduleid = m.moduleid  and  w.userid = a.userid  and widgetstatus=0 and w.projectid="+webWidget.getProjectid();		
		} 
		

		map.put("widgetList", widgetList);
		return "/S_WidgetManage";
	}
	
	
	
	
	
	
}
