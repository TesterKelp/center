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
import com.testsystem.helper.DataFormat;
import com.testsystem.mobile.service.MobilePageService;
import com.testsystem.mobile.service.MobileProjectService;
import com.testsystem.mobile.vo.MobileProject;

@Controller
@RequestMapping("/mobile")
public class MobileProjectController {

	@Autowired
	private MobileProjectService  mobileProjectService;
	
	@Autowired
	private MobilePageService mobilePageService ;
	private List webProjectProjectList;
	String msg="";
	
	MobileProject mobileProject =new MobileProject();
	@RequestMapping(value ="/Mobile_ProjectManage.do", method = RequestMethod.GET)
	public String ArticleSearch(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		
		webProjectProjectList =mobileProjectService.GetStProjectAllList();
		map.put("stProjectList",webProjectProjectList);
		System.out.println("11111111");
		return "/module/mobile/Mobile_ProjectManage";
	}
	
	
	@RequestMapping(value ="/AddProject.do", method = RequestMethod.POST)
	public void addModule(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String projectname =request.getParameter("projectname");
		mobileProject.setProjectname(projectname);
		mobileProject.setUserid(UserUtil.getCurrentUser().getUserid());
		mobileProject.setCreatetime(DataFormat.DataTime());
		mobileProjectService.AddStProject(mobileProject);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value ="/DelProject.do", method = RequestMethod.POST)
	public void delProject(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int projectid = Integer.parseInt(request.getParameter("projectid")) ;	
		if(mobilePageService .HavePageByProjectId(projectid)){
			msg="璇ラ」鐩笅杩樻湁page椤甸潰锛岃鍏堝垹闄わ紒" ;
		}else{
			mobileProjectService.DelProjectByProjectId(projectid);
			msg="鍒犻櫎鎴愬姛锛�" ;
		}
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
}
