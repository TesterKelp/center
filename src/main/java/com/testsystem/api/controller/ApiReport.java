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
import com.testsystem.api.service.ApiReportService;

@Controller
@RequestMapping("/api/wr")
public class ApiReport {
	
	@Autowired
	ApiReportService apiReportService ;
	private List moduleList;
	private String rsstatus;
	private String message;
	
	@RequestMapping(value = "/report/SetTaskStatus.do", method = RequestMethod.GET)
	public void SetTaskStatus(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int taskid = Integer.parseInt(request.getParameter("taskid"));
	    int status = Integer.parseInt(request.getParameter("status")); 
//	    int temp= apiTaskrService.SetTaskStatusByTaskId(taskid, status);
//	    if(temp==1){
//	    	rsstatus ="200";
//	    	message="ok";
//	    }else{
//	    	rsstatus ="10001";
//	    	message="faile";
//	    }
//	    String rs =ListFormatToString.ListFormatString(moduleList, rsstatus, message);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/Report/CreateReport.do", method = RequestMethod.POST)
	public void  CreateReport(ModelMap map,  HttpServletResponse response, HttpServletRequest request) throws IOException{
		int taskid = Integer.parseInt(request.getParameter("taskid"));
	    String rstime = request.getParameter("rstime"); 
	   int value = apiReportService.CreateReport(taskid, rstime);
	    if(value!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.StringFormatJsonString(Integer.toString(value), rsstatus, message, "reportid");
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/report/SaveReportDetail.do", method = RequestMethod.POST)
	public void SetReport(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int caseid = Integer.parseInt(request.getParameter("caseid"));
		int reportid = Integer.parseInt(request.getParameter("reportid"));
		int step = Integer.parseInt(request.getParameter("step"));
	    String rprocess = request.getParameter("rprocess"); 
	    String runnercase = request.getParameter("runnercase"); 
	    
	    rprocess=rprocess.replaceAll("'","''");
	    System.out.println(rprocess);
	   int value = apiReportService.CreateReportDetail(caseid,step, reportid, rprocess,runnercase);
	    if(value!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.StringFormatJsonString(Integer.toString(value), rsstatus, message, "reportid");
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}

	@RequestMapping(value = "/report/SetCaseRunnerResult.do", method = RequestMethod.POST)
	public void SetCaseRunnerResult(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int caseid = Integer.parseInt(request.getParameter("caseid"));
		int reportid = Integer.parseInt(request.getParameter("reportid"));
		int step = 0;
	    String result = request.getParameter("rs"); 
	   int value = apiReportService.SetCaseRunnerResult(caseid, step, reportid, result);
	    if(value!=0){
	    	rsstatus ="200";
	    	message="ok";
	    }else{
	    	rsstatus ="10001";
	    	message="faile";
	    }
	    String rs =ListFormatToString.StringFormatJsonString(Integer.toString(value), rsstatus, message, "reportid");
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/Report/SetReportEndTime.do", method = RequestMethod.POST)
	public void  SetReportEndTime(ModelMap map,  HttpServletResponse response, HttpServletRequest request) throws IOException{
		int Reportid = Integer.parseInt(request.getParameter("Reportid"));
	    String retime = request.getParameter("retime"); 
	   int temp = apiReportService.SetReportEndTime(Reportid, retime);
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
	
	
	
	
		@RequestMapping(value = "/report/SetCaseRunnerCase.do", method = RequestMethod.POST)
		public void  SetReportEngdTime(ModelMap map,  HttpServletResponse response, HttpServletRequest request) throws IOException{
			int Reportid = Integer.parseInt(request.getParameter("Reportid"));
			int caseid = Integer.parseInt(request.getParameter("caseid"));
		    String caseinfo = request.getParameter("caseinfo"); 
		    
		  
//		   int temp = apiReportService.SetReportEndTime(Reportid, retime);
		    
		    int temp=0 ;
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
	
}
