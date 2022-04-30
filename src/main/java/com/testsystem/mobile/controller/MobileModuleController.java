package com.testsystem.mobile.controller;

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
import com.testsystem.mobile.service.MobileModuleService;
import com.testsystem.mobile.vo.MobileModule;
import com.testsystem.systemtest.util.SelectOption;
@Controller
@RequestMapping("/mobile")
public class MobileModuleController {
	
	
	@Autowired
	private MobileModuleService mobileModuleService;
	private List moduleList ;
	
	MobileModule mobileModule=new MobileModule();
	@RequestMapping(value ="/getModuleByProjectId.do", method = RequestMethod.GET)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		moduleList=mobileModuleService.getModuleByProjectId(projectid);
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
		mobileModule.setProjectid(projectid);
		mobileModule.setModulename(modulename);
		mobileModule.setUserid(UserUtil.getCurrentUser().getUserid());
		mobileModuleService.addModule(mobileModule);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/GetModuleSelect.do", method = RequestMethod.POST)
	public void Module(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		moduleList = mobileModuleService.getModuleByProjectId(projectid);
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
		mobileModuleService.DelModuleByModuleId(moduleid);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
}
