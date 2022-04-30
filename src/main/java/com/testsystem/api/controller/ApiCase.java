package com.testsystem.api.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.api.common.ListFormatToString;
import com.testsystem.api.service.ApiCaseService;

@Controller
@RequestMapping("/api")
public class ApiCase {
	
	@Autowired
	ApiCaseService apiCaseService ;
	private List moduleList;
	private String rsstatus;
	private String message;
	
	
//	interface  case
	
	
//	GetWiftCaseIndex
	

	@RequestMapping(value = "/task/GetInterfaceCase.do", method = RequestMethod.GET)
	public void GetWiftCaseIndex(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int caseid = Integer.parseInt(request.getParameter("caseid"));
	    moduleList= apiCaseService.GetInterfaceCase(caseid);
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
	

	@RequestMapping(value = "/wr/task/GetInterfaceRequest.do", method = RequestMethod.GET)
	public void GetWiftCaseBody(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int caseid = Integer.parseInt(request.getParameter("caseid"));
		moduleList =apiCaseService.GetInterfaceRequest(caseid);
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
	
	
	
	
	
	@RequestMapping(value = "/wr/task/GetInterfaceRequestHeader.do", method = RequestMethod.GET)
	public void GetCaseInfoByCaseId(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
	    int caseid =Integer.parseInt(request.getParameter("caseid"));
	    moduleList =apiCaseService.GetInterfaceRequestHeader(caseid);
	    ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(moduleList); //orderList为List<Order>
		System.out.println("json"+json);
		response.getWriter().write(json);
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/wr/task/GetInterfaceResponseAssert.do", method = RequestMethod.GET)
	public void GetCdaseInfodByCaseId(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
	    int caseid =Integer.parseInt(request.getParameter("caseid"));
	    moduleList =apiCaseService.GetInterfaceResponseAssert(caseid);
	    ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(moduleList); //orderList为List<Order>
		System.out.println("json"+json);
		response.getWriter().write(json);
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/wr/task/GetInterfaceResponseHeaderAssert.do", method = RequestMethod.GET)
	public void GetCdaseInfoByCaseId(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
	    int caseid =Integer.parseInt(request.getParameter("caseid"));
	    moduleList =apiCaseService.GetInterfaceResponseHeaderAssert(caseid);
	    ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(moduleList); //orderList为List<Order>
		System.out.println("json"+json);
		response.getWriter().write(json);
		response.getWriter().flush();
	}
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	

}
