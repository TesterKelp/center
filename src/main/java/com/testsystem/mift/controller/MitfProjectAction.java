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

import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.UserInfo;
import com.testsystem.mift.service.MitfProjectService;
import com.testsystem.mift.vo.MitfProject;

@Controller
@RequestMapping("/mift")
public class MitfProjectAction {

	
	@Autowired
	private MitfProjectService mitfProjectService ;
	private List moduleList ;
	private MitfProject mitfProject =new MitfProject();
	
	
	
	@RequestMapping(value ="/Mift_ProjectManage.do", method = RequestMethod.GET)
	public String GetTask(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	

		return "/module/mift/Mift_ProjectManage";
	}
	

	@RequestMapping(value ="/Mift_ProjectManageAjax.do", method = RequestMethod.GET)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList = mitfProjectService.GetProjectList() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/interface/AddProject.do", method = RequestMethod.POST)
	public void AddProject(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
		String projectname =request.getParameter("projectname");
		String projectdesc =request.getParameter("projectdesc");
		mitfProject.setProjectname(projectname);
		mitfProject.setProjectdesc(projectdesc);
		mitfProject.setCreatetime(DataFormat.DataTime());
		mitfProject.setUserid(UserInfo.GetUserId(request));
		mitfProjectService.AddProject(mitfProject);
		System.out.println("Createtime"+DataFormat.DataTime());
		System.out.println("Userid"+UserInfo.GetUserId(request));
		
		System.out.println("projectname"+projectname);
		response.getWriter().write("test");
		response.getWriter().flush();
	}
	
	
	
	
}
