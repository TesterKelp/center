package com.testsystem.mift.controller;

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
import com.testsystem.mift.service.MitfModuleService;
import com.testsystem.mift.vo.MitfModule;

@Controller
@RequestMapping("/mift")
public class MitfModuleAction {
	@Autowired
	private MitfModuleService mitfModuleService ;
	private List moduleList ;
	private MitfModule  mitfModule =new MitfModule();
	
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
		mitfModule.setModulename(modulename);
		mitfModule.setProjectid(projectid);
		mitfModuleService.AddModule(mitfModule);	
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
		moduleList = mitfModuleService.GetModuleListByProjectId(projectid);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);
		

		
		System.out.println("projectname"+modulename);
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
}
