package com.testsystem.admin.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.SysSetService;
import com.testsystem.admin.utils.UserUtil;
import com.testsystem.site.service.SiteService;
import com.testsystem.site.vo.Site;

@Controller
public class SysSetAction {
	
	@Autowired
	private SysSetService sysSetService ;
	
	@Autowired
	private SiteService siteService ;
	
	
	@RequestMapping(value ="/module/admin/SetDefaultPage.do", method = RequestMethod.POST)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String page =request.getParameter("page");
		sysSetService.SavePage(page);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}

//原来使用default.do获取数据库中站点首页名称，然后进行跳转
	@RequestMapping(value = "/default1.do", method = RequestMethod.GET)
	public String Actio(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		System.out.println("----------------default.do");
//		String    name =UserUtil.getCurrentUserinfo().getUsername();
		String page =sysSetService.GetDefaultPage() ;
//		if(name.equals("a")){
//			System.out.println("name"+name);
//		}else{
//			System.out.println("name"+name);
//		}

	return"redirect:"+page ;
	}
	
	@RequestMapping(value = "/module/admin/SysSetting.do", method = RequestMethod.GET)
	public String SysSetting(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    String page = this.sysSetService.GetDefaultPage();
	    System.out.println("----------------page" + page);
	    String weburl = this.sysSetService.GetSysInfoValue("url");
	    String htmladdress = this.sysSetService.GetSysInfoValue("htmladdress");
	    String issethtml = this.sysSetService.GetSysInfoValue("issethtml");
	    map.put("weburl", weburl);
	    map.put("page", page);
	    map.put("htmladdress", htmladdress);
	    map.put("issethtml", issethtml);
	    Site site =siteService.GetSite();
	    map.put("site", site);
	    return"module/admin/SysSetting" ;
	}
	
	
	@RequestMapping(value ="/module/admin/SetSysInfo.do", method = RequestMethod.POST)
	public void getCompqanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String fieldname =request.getParameter("fieldname");		
		String value =request.getParameter("value");
		sysSetService.SetSysInfoValue(fieldname, value);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/admin/updataSystemSetting.do", method = RequestMethod.POST)
	public void updataSystemSetting(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String fieldname =request.getParameter("fieldName");		
		String value =request.getParameter("value");
		sysSetService.SetSysInfoValue(fieldname,value);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
}
