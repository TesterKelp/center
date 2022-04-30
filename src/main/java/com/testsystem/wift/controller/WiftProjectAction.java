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

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.UserInfo;
import com.testsystem.utils.Constants;
import com.testsystem.wift.service.InProjectService;
import com.testsystem.wift.vo.Project;

@Controller
@RequestMapping("/wift")
public class WiftProjectAction {

	
	@Autowired
	private InProjectService inProjectService ;
	private List moduleList ;
	private Project project =new Project();
	private String msg;
	
	
	@RequestMapping(value ="/Wift_ProjectManage.do", method = RequestMethod.GET)
	public String GetTask(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		return  Constants.WIFTDIR+"Wift_ProjectManage";
	}
	
	

	
	@RequestMapping(value ="/InterfaceManage.do", method = RequestMethod.GET)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList = inProjectService.GetProjectList() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/AddProject.do", method = RequestMethod.POST)
	public void AddProject(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String projectname =request.getParameter("projectname");
		String projectdesc =request.getParameter("projectdesc");
		project.setProjectname(projectname);
		project.setProjectdesc(projectdesc);
		project.setCreatetime(DataFormat.DataTime());
		project.setUserid(UserUtil.getCurrentUserinfo().getUserid());
		inProjectService.AddProject(project);
		System.out.println("Createtime"+DataFormat.DataTime());
//		System.out.println("Userid"+UserInfo.GetUserId(request));
		System.out.println("projectname"+projectname);
		response.getWriter().write("test");
		response.getWriter().flush();
	}
	
	
	  @RequestMapping(value={"/DelProject.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
	  public void delProject(ModelMap map, HttpServletResponse response, HttpServletRequest request)
	    throws IOException
	  {
	    int projectid = Integer.parseInt(request.getParameter("projectid"));
	    if (this.inProjectService.HavePageOrModuleByProjectId(projectid)) {
	      this.msg = "该项目下还有模块数据，请先删除";
	    } else {
	      this.inProjectService.DelProjectByProjectId(projectid);
	      this.msg = "删除成功";
	    }
	    response.setContentType("text/html; charset=utf-8");
	    response.getWriter().write(this.msg);
	    response.getWriter().flush();
	  }
	
	
	
	
}
