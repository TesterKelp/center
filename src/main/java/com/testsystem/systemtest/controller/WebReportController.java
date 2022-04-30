package com.testsystem.systemtest.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringEscapeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.helper.JsonAndString;
import com.testsystem.systemtest.service.WebCaseService;
import com.testsystem.systemtest.service.WebReportService;
import com.testsystem.systemtest.vo.Report;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/systemtest")
public class WebReportController {

	@Autowired
	private WebReportService webReportService ;
	
	@Autowired
	private WebCaseService webCaseService ;
	
	private List moduleList ;
	private List  indexList ;
	private List  bodyList ;
	private List  runnerCaseList ;
	
	@RequestMapping(value ="/Web_ReportManage.do", method = RequestMethod.GET)
	public String ReportManage(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String testtype =request.getParameter("testtype");
//		moduleList=webReportService.GetReportAll();
		moduleList=webReportService.GetReportByTestType(testtype);
		map.put("rlst",moduleList);
		map.put("testtype",testtype);
		return "/module/systemtest/Web_ReportManage";
	}

	
	

	
	@RequestMapping(value ="/Web_ReportManageJson.do", method = RequestMethod.GET)
	public void ReportMa22nage(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String testtype =request.getParameter("testtype");
		moduleList=webReportService.GetReportByTestType(testtype);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	
	
	@RequestMapping(value ="/Web_ReportCaseRunnerDetail.do", method = RequestMethod.GET)
	public String ReportM1anage(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
//		int  caseid=68;

		int reportid =Integer.parseInt(request.getParameter("reportid"));
		int caseid =Integer.parseInt(request.getParameter("caseid"));
//		System.out.println(reportid+"--------------"+rd);
		
//		indexList=	webCaseService.GetCaseIndex(caseid);	
		bodyList =webCaseService.GetCaseBody(caseid);
//		List runnerinfo =webReportService.GetCaseRunnerInfo(caseid, reportid);
//		System.out.println("dddddddddddd"+runnerinfo.toString());
//		JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(runnerinfo).get(0);
//		System.out.println("bodyList:"+bodyList);
//		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(indexList).get(0);
//		map.put("casename",ob.getString("casename"));
//		map.put("casedesc",ob.getString("casedesc"));
//		System.out.println("fffffffffffff"+oc.getString("actualrs"));
//		map.put("caseinfo",oc.getString("caseinfo"));
//		map.put("actualrs",StringEscapeUtils.unescapeJavaScript(oc.getString("actualrs")));
//		map.put("result",oc.getString("result"));
//		map.put("caseid",oc.getString("caseid"));
		
		
	Report report =	webReportService.GetRunnerReportInfo(caseid, reportid) ;
		System.out.println(report.toString());
	map.put("caseinfo",report.getCaseinfo());
	map.put("actualrs",report.getActualrs());
	map.put("result",report.getResult());
	map.put("caseid",report.getCaseid());

		map.put("bodyList",bodyList);
		return "/module/systemtest/Web_ReportCaseRunnerDetail";
	}
	
	
	@RequestMapping(value ="/Web_ReportDetail.do", method = RequestMethod.GET)
	public String ReportDetail(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int reportid =Integer.parseInt(request.getParameter("reportid"));
		moduleList=webReportService.GetReportDetailByReportId(reportid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		runnerCaseList =webReportService.GetReportRunnerCaseByReportId(reportid);
		map.put("taskname",ob.getString("taskname"));
		map.put("scn",ob.getString("scn"));
		map.put("fcn",ob.getString("fcn"));
		map.put("allcn",ob.getString("allcn"));
		map.put("skcn",ob.getString("skcn"));
		
		map.put("rstime",ob.getString("rstime"));
		map.put("retime",ob.getString("retime"));
		map.put("caselist", runnerCaseList);
		map.put("reportid",reportid);
	
		return "/module/systemtest/Web_ReportDetail";
	}
	
	
	
}
