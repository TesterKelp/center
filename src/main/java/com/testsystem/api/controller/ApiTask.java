package com.testsystem.api.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.api.common.ListFormatToString;
import com.testsystem.api.service.ApiTaskService;

@Controller
@RequestMapping("/api")
public class ApiTask {
	
	@Autowired
	private ApiTaskService apiTaskrService;
	private List moduleList;
	private String rsstatus;
	private String message;
	
//	runnetestcase start	
	@RequestMapping(value = "/wr/task/GetCaseInfoByCaseId.do", method = RequestMethod.GET)
	public void GetCaseInfoByCaseId(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
	    int caseid =Integer.parseInt(request.getParameter("caseid"));
	    moduleList= apiTaskrService.GetCaseInfoByCaseId(caseid);
	    if(moduleList.size()!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
	    System.out.println("Respones:"+rs);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/wr/task/SetCaseSuccessAndFaileNumber.do", method = RequestMethod.POST)
	public void SetCaseRunnerSucessAndFaileNumber(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int taskid = Integer.parseInt(request.getParameter("taskid"));
		int fc = Integer.parseInt(request.getParameter("fc"));
		int sc = Integer.parseInt(request.getParameter("sc"));
		int skc = Integer.parseInt(request.getParameter("skc"));
		int allcn = Integer.parseInt(request.getParameter("allcn"));

	    int temp = apiTaskrService.SetCaseNumber(taskid, fc, sc,skc,allcn);
	    System.out.println("/api/wr/task/SetCaseSuccessAndFaileNumber.do"+temp);
	    if(temp==1){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();	
	}
	
	
	
	
	
	
	
	
	
	
//	runnertestcase end
	

//	maketestcase start

	@RequestMapping(value = "/wr/task/GetTaskInfoByServerNameAndTaskStatus.do", method = RequestMethod.GET)
	public void GetTaskIdByServiceName(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
	    String servername = request.getParameter("servername"); 
	    int status =Integer.parseInt(request.getParameter("taskstatus"));
	    moduleList= apiTaskrService.GetTaskInfoByServerName(servername, status);
	    if(moduleList.size()!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/wr/task/GetTaskCaseByTaskId.do", method = RequestMethod.GET)
	public void GetTaskCaseByTaskId(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
	 
	    int taskid =Integer.parseInt(request.getParameter("taskid"));
	    moduleList= apiTaskrService.GetTaskCaseByTaskId(taskid);
	    if(moduleList.size()!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	
//	maketestcase end
	
	
	
//	task  start
	
	@RequestMapping(value = "/task/GetTaskInfoByServerName.do", method = RequestMethod.GET)
	public void GetTaskInfo(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String servername = request.getParameter("servername"); 
		int status = Integer.parseInt(request.getParameter("status"));
		System.out.println(servername+"------------"+status);
	    moduleList= apiTaskrService.GetTaskInfoByServerName(servername,status);
	    if(moduleList.size()!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
	    System.out.println(rs+"ffdfdfdd");
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/task/GetTaskInfoByTaskId.do", method = RequestMethod.GET)
	public void GetTaskInfoByTaskId(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		
		int taskid = Integer.parseInt(request.getParameter("taskid"));
	    moduleList= apiTaskrService.GetTaskInfoByTaskId(taskid);
	    if(moduleList.size()!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
	    System.out.println(rs+"ffdfdfdd");
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/task/GetTaskCaseByTaskId.do", method = RequestMethod.GET)
	public void GetCase(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		 
		
		int taskid = Integer.parseInt(request.getParameter("taskid"));
	    moduleList= apiTaskrService.GetTaskCaseByTaskId(taskid);
	    if(moduleList.size()!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
	    System.out.println(rs+"ffdfdfdd");
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/task/SetTaskStatus.do", method = RequestMethod.GET)
	public void SetTaskStatus(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int taskid = Integer.parseInt(request.getParameter("taskid"));
	    int status = Integer.parseInt(request.getParameter("status")); 
	    int temp= apiTaskrService.SetTaskStatusByTaskId(taskid, status);
	    if(temp==1){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}

	
//task end	
	
		
//  interface  task start
	
	@RequestMapping(value = "/task/GetWiftCaseByTaskId.do", method = RequestMethod.GET)
	public void GetWiftCase(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int taskid = Integer.parseInt(request.getParameter("taskid"));
	    moduleList= apiTaskrService.GetWiftCaseByTaskId(taskid);
	    if(moduleList.size()!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
	    System.out.println(rs+"ffdfdfdd");
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	

	
	
	@RequestMapping(value = "/task/GetWiftCaseIndexByCaseId.do", method = RequestMethod.GET)
	public void GetWiftCaseIndex(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int caseid = Integer.parseInt(request.getParameter("caseid"));
	    moduleList= apiTaskrService.GetWiftCaseIndexByCaseId(caseid);
	    if(moduleList.size()!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
	    System.out.println(rs+"ffdfdfdd");
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	
//	interface task end
	
	
	
//	interface task end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
