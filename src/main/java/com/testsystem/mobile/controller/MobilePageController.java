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

import com.testsystem.helper.JsonAndString;
import com.testsystem.mobile.service.MobilePageService;
import com.testsystem.mobile.vo.MobilePage;
import com.testsystem.systemtest.util.SelectOption;

@Controller
@RequestMapping("/mobile")
public class MobilePageController {
	
	@Autowired
	private MobilePageService mobilePageService ;
	private List pageList ;
	
//	Page page =new Page();
	@RequestMapping(value ="/Addpage.do", method = RequestMethod.POST)
	public void addPage(ModelMap map, MobilePage mobilePage,HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
//		int projectid = Integer.parseInt(request.getParameter("projectid"));
//		String pagename =request.getParameter("pagename");
//		page.setProjectid(projectid);
//		page.setPagename(pagename);
		mobilePageService.AddPage(mobilePage);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}

	@RequestMapping(value ="/getPageByProjectId.do", method = RequestMethod.GET)
	public void getPage(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		pageList= mobilePageService.GetPageList(projectid);
		String jsonstr =JsonAndString.ListToJsonToString(pageList);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/DelPage.do", method = RequestMethod.POST)
	public void delPage(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{

		int pageid = Integer.parseInt(request.getParameter("pageid"));
		System.out.println("pageid======"+pageid);
		mobilePageService.DelPage(pageid);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/GetPageSelect.do", method = RequestMethod.POST)
	public void Module(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid"));
//		moduleList = stModuleService.getModuleByProjectId(projectid);
		pageList= mobilePageService.GetPageList(projectid);
		String option =SelectOption.Option(pageList, "pageid", "pagename") ;
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(option);
		response.getWriter().flush();
	}
	
	
}
