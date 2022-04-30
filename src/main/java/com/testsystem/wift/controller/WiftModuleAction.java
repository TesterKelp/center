package com.testsystem.wift.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.helper.JsonAndString;
import com.testsystem.wift.service.ModuleService;
import com.testsystem.wift.vo.Module;

@Controller
@RequestMapping("/wift")
public class WiftModuleAction {
	@Autowired
	private ModuleService moduleService ;
	private List moduleList ;
	private Module module =new Module();
	
	@RequestMapping(value ="/ModuleManage.do", method = RequestMethod.GET)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
//		moduleList = inProjectService.GetProjectList(int projectid) ;
//		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
//		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write("");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/AddModule.do", method = RequestMethod.POST)
	public void AddModule(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String modulename =request.getParameter("modulename");
		int projectid =Integer.parseInt(request.getParameter("projectid"));
		module.setModulename(modulename);
		module.setProjectid(projectid);
		moduleService.AddModule(module);	
		System.out.println("projectname"+modulename);
		response.getWriter().write("test");
		response.getWriter().flush();
	}
											  
	@RequestMapping(value ="/GetModuleByProjectId.do", method = RequestMethod.GET)
	public void GetModuleByProjectId(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String modulename =request.getParameter("modulename");
		int projectid =Integer.parseInt(request.getParameter("projectid"));
		System.out.println("projectid"+projectid);
		moduleList = moduleService.GetModuleListByProjectId(projectid);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);

		System.out.println("projectname"+modulename);
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	  @RequestMapping(value={"/DelWiftMdodule.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
	  public void DelWiftMdodule(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
	  {
	    int projectid = Integer.parseInt(request.getParameter("projectid"));
	    int moduleid = Integer.parseInt(request.getParameter("moduleid"));

	    this.moduleService.DelWiftModule(moduleid, projectid);
	    response.setContentType("text/html; charset=utf-8");
	    response.getWriter().write("ok");
	    response.getWriter().flush();
	  }
	
	
}
