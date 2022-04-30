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
import com.testsystem.defect.service.CaseRunnerService;
import com.testsystem.defect.service.CaseService;
import com.testsystem.defect.service.DefectProjectService;
import com.testsystem.defect.vo.DefCase;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;
@Controller
public class CaseRunnerAction {
	@Autowired
	private  CaseService  caseService ;
	@Autowired
	private  CaseRunnerService   caseRunnerService ;
	@Autowired
	private  BitsService  bitsService ;
	@Autowired
	private DefectProjectService defectProjectService ;
	
	private List moduleList;
	private  List runnerrecord ;
	private List projectlist;
	private List 	 plst ;
	@RequestMapping(value ="/module/defect/CaseLib.do", method = RequestMethod.GET)
	public String DefectList(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid =UserUtil.getCurrentUserinfo().getUserid();
		int libid =caseRunnerService.GetLibId(userid);
		String  libname =	bitsService.GetLibNameByUserId(userid);
		int sc=caseRunnerService.GetSuccfulCaseNumber(libid);
		int fc=caseRunnerService.GetFailCaseNumber(libid);
		int cb=caseRunnerService.GetCaseNumber(libid);
		int  nr=cb-fc -sc ;
			map.put("libname", libname);
			map.put("cb", cb);
			map.put("sc", sc);
			map.put("fc", fc);
			map.put("nr", nr);
			return "/module/defect/CaseLib";
	}
	
	
	
	@RequestMapping(value ="/module/defect/CasePlanManage.do", method = RequestMethod.GET)
	public String DeftList(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
				System.out.println("qweewe");
				projectlist = defectProjectService.GetDefectProjectListAll();
				map.put("plst", projectlist);
				
				moduleList  =	caseRunnerService.GetCasePlanAll();
				map.put("rlst", moduleList);
				return "/module/defect/CasePlanManage";
	}
	
	
	@RequestMapping(value ="/module/defect/CreateRunnerPlan.do", method = RequestMethod.GET)
	public void CreateRunnerPlan(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		System.out.println("dsdfsdfasdfas");
		String  plan=request.getParameter("planname");
		
		int userid= UserUtil.getCurrentUserinfo().getUserid();
		caseRunnerService.CreateRunnerPlan(plan, userid);
		String  jsonstr =  "ok";	

		response.getWriter().write(jsonstr);
		response.getWriter().flush();		
	}
	
	@RequestMapping(value ="/module/defect/SetRunnerPlanDefault.do", method = RequestMethod.GET)
	public void SetRunnerPlanDefault(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		System.out.println("dsdfsdfasdfas");
		int  libid = Integer.parseInt(request.getParameter("libid")) ;
		int userid= UserUtil.getCurrentUserinfo().getUserid();
		caseRunnerService.SetRunnerPlanDefault(libid, userid);
		String  jsonstr =  "ok";	
		response.getWriter().write(jsonstr);
		response.getWriter().flush();		
	}
	
	
	
	
	
	
	
	@RequestMapping(value ="/module/defect/jsGetLibCase.do", method = RequestMethod.GET)
	public void CaseList(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int  libid =bitsService.GetqLibIdByUserId(UserUtil.getCurrentUserinfo().getUserid()) ;
//		moduleList=caseRunnerService.GetLibCase(libid);
		moduleList=caseRunnerService.GetLibCaseByUserid(UserUtil.getCurrentUserinfo().getUserid());
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr123"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();		
	}
	
	
	
	@RequestMapping(value ="/module/defect/CaseRunner.do", method = RequestMethod.GET)
	public String DefecCaseDetail(ModelMap map, DefCase defCase,HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int  libid =bitsService.GetqLibIdByUserId(UserUtil.getCurrentUserinfo().getUserid()) ;

		int  caseid = Integer.parseInt(request.getParameter("caseid")) ;
	 plst=caseService.GetCaseIndexByCaseId(caseid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(plst).get(0);
		moduleList =	caseService.GetCaseBodyByCaseId(caseid);
		map.put("caseid", ob.getString("caseid"));
		map.put("casename", ob.getString("casename"));
		map.put("casedesc", ob.getString("casedesc"));
		map.put("priority", ob.getString("priority"));
		moduleList =	caseService.GetCaseBodyByCaseId(caseid);
		runnerrecord= caseRunnerService.GetRunnerRecord(caseid, libid);
		map.put("bodyList", moduleList);
		map.put("runnerrecord", runnerrecord);
				System.out.println("qweewe");
				return "/module/defect/CaseRunner";
	}
	
	
	
	@RequestMapping(value ="/module/defect/SaveRunner.do", method = RequestMethod.POST)
	public void SaveRunner(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		System.out.println("dfdfdfdfdfdf");
		int  libid =bitsService.GetqLibIdByUserId(UserUtil.getCurrentUserinfo().getUserid()) ;
		int  caseid = Integer.parseInt(request.getParameter("caseid")) ;
		int  ruserid = UserUtil.getCurrentUserinfo().getUserid();
		String rtime =DataFormat.DataTime();
		String rsall[] = request.getParameterValues("rsall");
		System.out.println("rsall"+rsall.length);
        int  runnerid =caseRunnerService.SaveRunnerRecord(libid,caseid, ruserid, rtime, rsall);
		String stepall[] = request.getParameterValues("stepall");
		String resultall[] = request.getParameterValues("resultall");
		caseRunnerService.SaveRunnerRecordDetail(runnerid, rsall, stepall, resultall);
		String  jsonstr = "ok";
		response.getWriter().write(jsonstr);
		response.getWriter().flush();		
	}
	
	
	
	
	@RequestMapping(value ="/module/defect/CaseRunnerDetail.do", method = RequestMethod.GET)
	public String DefecqCaseDetail(ModelMap map, DefCase defCase,HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int  runnerid = Integer.parseInt(request.getParameter("runnerid")) ;
System.out.println(runnerid+"llllllllllllllllllllllllllllllllllllllllllllllllllllllllllll");
		moduleList =	caseRunnerService.GetRunnerRecordDetail(runnerid);
System.out.println(moduleList);
		map.put("dlst", moduleList);
				System.out.println("qweewe");
				return "/module/defect/CaseRunnerDetail";
	}
	
	
	
	
	@RequestMapping(value ="/module/defect/AddCaseToLib.do", method = RequestMethod.GET)
	public void AddCaseToLib(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
	
		int  libid = Integer.parseInt(request.getParameter("libid")) ;
		int  projectid = Integer.parseInt(request.getParameter("projectid")) ;
		
		System.out.println("计划id"+libid);
		System.out.println("导入项目id"+projectid);
		moduleList =	 caseService.GetCaseByProjectId(projectid) ;
		System.out.println("项目中用例数="+moduleList.size());
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			int caseid =Integer.parseInt(ob.getString("caseid"));
			caseRunnerService.AddCaseToLib(caseid, libid);
		}
		caseRunnerService.UpdateCaseNumber(libid);
		String  jsonstr =  "ok";	

		response.getWriter().write(jsonstr);
		response.getWriter().flush();		
	}
	
	
	
	
	
	
}
