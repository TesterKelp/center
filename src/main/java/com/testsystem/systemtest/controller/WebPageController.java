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

import com.testsystem.helper.JsonAndString;
import com.testsystem.systemtest.service.WebPageService;
import com.testsystem.systemtest.util.SelectOption;
import com.testsystem.systemtest.vo.WebPage;

@Controller
@RequestMapping("/systemtest")
public class WebPageController {
	
	@Autowired
	private WebPageService webPageService ;
	private List pageList ;
	
//	Page page =new Page();
	@RequestMapping(value ="/Addpage.do", method = RequestMethod.POST)
	public void addPage(ModelMap map, WebPage webPage,HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
//		int projectid = Integer.parseInt(request.getParameter("projectid"));
//		String pagename =request.getParameter("pagename");
//		page.setProjectid(projectid);
//		page.setPagename(pagename);
		webPageService.AddPage(webPage);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}

	@RequestMapping(value ="/getPageByProjectId.do", method = RequestMethod.GET)
	public void getPage(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid"));
		pageList= webPageService.GetPageList(projectid);
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
		webPageService.DelPage(pageid);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/GetPageSelect.do", method = RequestMethod.POST)
	public void Module(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid"));
//		moduleList = stModuleService.getModuleByProjectId(projectid);
		pageList= webPageService.GetPageList(projectid);
		String option =SelectOption.Option(pageList, "pageid", "pagename") ;
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(option);
		response.getWriter().flush();
	}
	
	
}
