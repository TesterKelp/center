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

import com.testsystem.helper.JsonAndString;
import com.testsystem.mobile.service.MobileReportService;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/mobile")
public class MobileReportController {

	@Autowired
	private MobileReportService mobileReportService ;
	private List moduleList ;
	
	@RequestMapping(value ="/Mobile_ReportManage.do", method = RequestMethod.GET)
	public String ReportManage(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		moduleList=mobileReportService.GetReportAll();

		map.put("rlst",moduleList);
		return "/module/mobile/Mobile_ReportManage";
	}

	
	
	@RequestMapping(value ="/Web_ReportDetail.do", method = RequestMethod.GET)
	public String ReportDetail(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int reportid =Integer.parseInt(request.getParameter("reportid"));
		moduleList=mobileReportService.GetReportDetailByReportId(reportid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		
		map.put("taskname",ob.getString("taskname"));
		map.put("scn",ob.getString("scn"));
		map.put("fcn",ob.getString("fcn"));
		map.put("rstime",ob.getString("rstime"));
		map.put("retime",ob.getString("retime"));
		return "/module/mobile/Mobile_ReportDetail";
	}
	
	
	
}
