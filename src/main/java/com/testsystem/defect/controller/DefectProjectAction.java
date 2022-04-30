package com.testsystem.defect.controller;

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
import com.testsystem.defect.service.BitsService;
import com.testsystem.defect.service.DefectProjectService;
import com.testsystem.defect.service.OperationService;
import com.testsystem.defect.service.SchemeService;
import com.testsystem.defect.util.ProjectOperation;
import com.testsystem.defect.vo.Project;
import com.testsystem.helper.JsonAndString;

@Controller
public class DefectProjectAction {
@Autowired
private DefectProjectService defectProjectService ;
@Autowired
private OperationService  operationService ;
@Autowired
private SchemeService schemeService;
@Autowired
private  BitsService  bitsService ;
private List projectlist ;
private List modulelist;

@RequestMapping(value ="/module/defect/Project.do", method = RequestMethod.GET)
public String DefectList(ModelMap map, HttpServletResponse response,
		HttpServletRequest request) throws IOException{
			System.out.println("qweewe");
			projectlist =defectProjectService.GetDefectProjectListAll() ;
			map.put("plst", projectlist);
			return "/module/defect/ProjectManage";
}


@RequestMapping(value={"/module/defect/jsProject.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
public void jsDefectList(ModelMap map, HttpServletResponse response, HttpServletRequest request)
  throws IOException
{
  this.projectlist = this.defectProjectService.GetDefectProjectListAll();
  String jsonstr = JsonAndString.ListToJsonToString(this.projectlist);
  System.out.println("jsonstr123" + jsonstr);
  response.getWriter().write(jsonstr);
  response.getWriter().flush();
}


@RequestMapping(value={"/module/defect/GetSchemeListBySchemeType.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
public void GetOperationL2ist(ModelMap map, Project project, HttpServletResponse response, HttpServletRequest request)
  throws IOException
{
  int schemeType = Integer.parseInt(request.getParameter("schemeType"));
  this.modulelist = this.schemeService.GetSchemeListBySchemeType(schemeType);
  String jsonstr = JsonAndString.ListToJsonToString(this.modulelist);
  System.out.println("jsonstr123" + jsonstr);
  response.getWriter().write(jsonstr);
  response.getWriter().flush();
}

@RequestMapping(value={"/module/defect/SetProjectScheme.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
public void setProjectScheme(ModelMap map, Project project, HttpServletResponse response, HttpServletRequest request) throws IOException {
  int schemeId = Integer.parseInt(request.getParameter("schemeId"));
  int projectId = Integer.parseInt(request.getParameter("projectId"));
  String fieldName = request.getParameter("fieldName");
  System.out.println(fieldName + "----" + projectId + "--" + schemeId);
  this.defectProjectService.SetProjectScheme(projectId, schemeId, fieldName);
  response.getWriter().write("ok");
  response.getWriter().flush();
}

	
@RequestMapping(value = "/module/defect/CreatProject.do", method = RequestMethod.POST)
public void GetOperationList(ModelMap map,Project project ,HttpServletResponse response, HttpServletRequest request) throws IOException {
int  projectid  =	defectProjectService.CreateProject(project);
	System.out.println("projectidprojojectidprojectidprojectidprojectidprojectidprojrojectidprojectidprojectidprojectid"+projectid);
operationService.SetFieldDefatultProjectId(projectid);
operationService.SetFieldProjectInit();
	response.getWriter().write("ok");
	response.getWriter().flush();
}

@RequestMapping(value = "/module/defect/delDefectProject.do", method = RequestMethod.POST)
public void GetOperatiosnList(ModelMap map,Project project ,HttpServletResponse response, HttpServletRequest request) throws IOException {
	  int projectId = Integer.parseInt(request.getParameter("projectId"));
	  defectProjectService.delDefectProject(projectId);
	  System.out.println("del---------------");
	response.getWriter().write("ok");
	response.getWriter().flush();
}




@RequestMapping(value = "/module/defect/SetProjectDefault.do", method = RequestMethod.GET)
public void SetProjectDefault(ModelMap map,Project project ,HttpServletResponse response, HttpServletRequest request) throws IOException {
	bitsService.SetProjectDefault(UserUtil.getCurrentUserinfo().getUserid(), project.getProjectid());
	
response.getWriter().write("ok");
response.getWriter().flush();
}
	
	
@RequestMapping(value={"/module/defect/setProjectId.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
public void SetProjectId(ModelMap map, Project project, HttpServletResponse response, HttpServletRequest request)
  throws IOException
{
  String projectId = request.getParameter("projectId");
  ProjectOperation.SetProjectId(response, request, projectId);
  System.out.println("99999999999:" + projectId);
  response.getWriter().write("ok");
  response.getWriter().flush();
}

@RequestMapping(value={"/module/defect/resetProjectId.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
public void resetProjectId(ModelMap map, Project project, HttpServletResponse response, HttpServletRequest request) throws IOException
{
  int projectId = Integer.parseInt(request.getParameter("projectId"));
  int userId = UserUtil.getCurrentUserinfo().getUserid();
  this.defectProjectService.resetProjectId(projectId, userId);
  response.getWriter().write("ok");
  response.getWriter().flush();
}
	
}
