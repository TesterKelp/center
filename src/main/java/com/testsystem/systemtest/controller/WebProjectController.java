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
import com.testsystem.helper.DataFormat;
import com.testsystem.systemtest.service.WebPageService;
import com.testsystem.systemtest.service.WebProjectService;
import com.testsystem.systemtest.vo.WebProject;

@Controller
@RequestMapping("/systemtest")
public class WebProjectController {

	@Autowired
	private WebProjectService  webProjectService;
	
	@Autowired
	private WebPageService webPageService ;
	private List webProjectProjectList;
	String msg="";
	
	WebProject webProject =new WebProject();
	@RequestMapping(value ="/Web_ProjectManage.do", method = RequestMethod.GET)
	public String ArticleSearch(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		
		webProjectProjectList =webProjectService.GetStProjectAllList();
		map.put("stProjectList",webProjectProjectList);
		System.out.println("11111111");
		return "/module/systemtest/Web_ProjectManage";
	}
	
	
	@RequestMapping(value ="/AddProject.do", method = RequestMethod.POST)
	public void addModule(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String projectname =request.getParameter("projectname");
		webProject.setProjectname(projectname);
		webProject.setUserid(UserUtil.getCurrentUser().getUserid());
		webProject.setCreatetime(DataFormat.DataTime());
		webProjectService.AddStProject(webProject);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value ="/DelProject.do", method = RequestMethod.POST)
	public void delProject(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid")) ;	
		if(webPageService.HavePageByProjectId(projectid)){
			msg="璇ラ」鐩笅杩樻湁page椤甸潰锛岃鍏堝垹闄わ紒" ;
		}else{
			webProjectService.DelProjectByProjectId(projectid);
			msg="鍒犻櫎鎴愬姛锛�" ;
		}
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
}
