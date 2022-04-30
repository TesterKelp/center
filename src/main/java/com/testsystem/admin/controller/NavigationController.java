package com.testsystem.admin.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.NavigationService;
import com.testsystem.admin.vo.Navigation;
import com.testsystem.helper.JsonAndString;

@Controller
@RequestMapping({"/module/admin"})
public class NavigationController {

	
	 @Autowired
	  NavigationService navigationService;
	  List moduleList;
	  String msg;

	  @RequestMapping(value={"/{navigation_type}/NavigationManage.do"}, method=RequestMethod.GET)
	  public String GetNavigation(ModelMap map, HttpServletResponse response, HttpServletRequest request  , @PathVariable int navigation_type)
	    throws IOException
	  {
		  int Navigation_type = navigation_type ;
		  moduleList =  navigationService.GetNavigationByNavigation_type(Navigation_type) ;
		List  nlst   = navigationService.GetNavigation_type();
	    map.put("navigation", moduleList);
	    map.put("nlst", nlst);
	    map.put("id", navigation_type);
	    return "module/admin/NavigationManage";
	  }

	
	  @RequestMapping(value={"/NavigationTypeList.do"}, method={RequestMethod.GET})
	  public void NavigationType(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
	  {
		 Map  mp =new HashMap();
	    List  ntl =navigationService.GetNavigationTypeList() ;
//	    mp.put("", ntl);
	    ObjectMapper objectMapper = new ObjectMapper();
		String jsonstr = objectMapper.writeValueAsString(ntl);
		System.out.println("jsonstr==:"+jsonstr);
//		String  jsonstr =  JsonAndString.ListToJsonToString(ntl);	
	    response.getWriter().write(jsonstr);
	    response.getWriter().flush();
	  }
	  @RequestMapping(value={"/AddNavigationType.do"}, method={RequestMethod.POST})
	  public void AddNavigationType(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
	  {
		String navigationTypeName =request.getParameter("navigationTypeName");
		int rs =  navigationService.AddNavigationType(navigationTypeName) ;
	    response.getWriter().write(rs+"");
	    response.getWriter().flush();
	  }
	  
	  

	  
	  
	  
	  @RequestMapping(value={"/leftmenu.do"}, method={RequestMethod.GET})
	  public void leftmenu(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
	  {
		 Map  mp =new HashMap();
	    List  leftmenuLst =navigationService.GetUserCenterLeftMenu() ;
	    mp.put("menu", leftmenuLst);
	    ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(mp);
	    response.getWriter().write(json);
	    response.getWriter().flush();
	  }
	  
	  
	  
	  
	  
	  
	  @RequestMapping(value={"/delNavigation.do"}, method={RequestMethod.GET})
	  public void DelMenu(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
	  {
	    int navigationId = Integer.parseInt(request.getParameter("navigationId"));
	    this.navigationService.DelNavigation(navigationId);
	    this.msg = "del is ok !";
	    response.getWriter().write("{\"msg\":\"" + this.msg + "\"}");
	    response.getWriter().flush();
	  }

	  @RequestMapping(value={"/addNavigation.do"}, method={RequestMethod.POST})
	  public void AddMenu(ModelMap map, Navigation navigation, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    this.navigationService.AddNavigation(navigation);
	    this.msg = "add is ok !";
	    response.getWriter().write("{\"msg\":\"" + this.msg + "\"}");
	    response.getWriter().flush();
	  }

	  @RequestMapping(value={"/updataNavigation.do"}, method={RequestMethod.POST})
	  public void UpMenu(ModelMap map, HttpServletResponse response, HttpServletRequest request)
	    throws IOException
	  {
	    String fieldName = request.getParameter("fieldName");
	    String value = request.getParameter("value");
	    int navigationId = Integer.parseInt(request.getParameter("navigationId"));
	    this.navigationService.UpdataNavigationFiled(fieldName, value, navigationId);
	    this.msg = "updata is ok !";
	    response.getWriter().write("{\"msg\":\"" + this.msg + "\"}");
	    response.getWriter().flush();
	  }

	  @RequestMapping(value={"/setNavigationShow.do"}, method={RequestMethod.POST})
	  public void setMenuShow(ModelMap map, Navigation navigation, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    this.navigationService.SetNavigationShow(navigation.getNavigationId(), navigation.getNavigationShow());
	    this.msg = "set  is ok !";
	    response.getWriter().write("{\"msg\":\"" + this.msg + "\"}");
	    response.getWriter().flush();
	  }
	
	
	
	
	
	
	
	
}
