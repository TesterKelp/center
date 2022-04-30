package com.testsystem.systemtest.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.JsonAndString;
import com.testsystem.systemtest.service.WebModuleService;
import com.testsystem.systemtest.util.SelectOption;
import com.testsystem.systemtest.vo.WebModule;
@Controller
@RequestMapping("/systemtest")
public class WebModuleController {
	
	
	@Autowired
	private WebModuleService webModuleService;
	private List moduleList ;
	
	WebModule webModule=new WebModule();
	@RequestMapping(value ="/getModuleByProjectId.do", method = RequestMethod.GET)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		moduleList=webModuleService.getModuleByProjectId(projectid);
		String jsonstr =JsonAndString.ListToJsonToString(moduleList);
	//	System.out.println("122333"+jsonstr);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}

	@RequestMapping(value ="/Addmodule.do", method = RequestMethod.POST)
	public void addModule(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		String modulename =request.getParameter("modulename");
		webModule.setProjectid(projectid);
		webModule.setModulename(modulename);
		webModule.setUserid(UserUtil.getCurrentUser().getUserid());
		webModuleService.addModule(webModule);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/GetModuleSelect.do", method = RequestMethod.POST)
	public void Module(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		moduleList = webModuleService.getModuleByProjectId(projectid);
		String option =SelectOption.Option(moduleList, "moduleid", "modulename") ;
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(option);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/DelModule.do", method = RequestMethod.POST)
	public void DelModule(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int moduleid = Integer.parseInt(request.getParameter("moduleid"));
//		moduleList = stModuleService.getModuleByProjectId(projectid);
//		String option =SelectOption.Option(moduleList, "moduleid", "modulename") ;
		webModuleService.DelModuleByModuleId(moduleid);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
}
