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

import com.testsystem.defect.service.BitsService;
import com.testsystem.defect.service.DefectProjectService;
import com.testsystem.defect.service.DefectReportService;
import com.testsystem.defect.service.OperationService;
import com.testsystem.defect.vo.Report;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
public class ReportAction {
  @Autowired
  private DefectReportService  defectReportService ;
	@Autowired
	private OperationService operationService;
	@Autowired
	private DefectProjectService defectProjectService ;
	@Autowired
	private  BitsService  bitsService ;
	
  private List moduleList;
  private List reportList;
  private List projectlist ;
  
  
  
  
  
  public String  GetReportCondition(int  reportid){
	
	  
	  
	  return null;

  }
  
  
	@RequestMapping(value = "/module/defect/addReport.do", method = RequestMethod.POST)
	public void addReport(ModelMap map, Report report ,HttpServletResponse response, HttpServletRequest request) throws IOException {
	int reportid =	defectReportService.AddReport(report);
//		获取reportid  设置reportid   导入到表中
	defectReportService.SetReportDefaultReportId(reportid);
	defectReportService.InitReportDetail();
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
  
	@RequestMapping(value = "/module/defect/SetSearch.do", method = RequestMethod.POST)
	public void SetSearch(ModelMap map, Report report ,HttpServletResponse response, HttpServletRequest request) throws IOException {

	defectReportService.EditReport(report);
	
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
  
  
  
  
	
	@RequestMapping(value = "/module/defect/CreateDefectStatistics.do", method = RequestMethod.GET)
	public void Actionx(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		String condition="";

		String  zz;
		int source =Integer.parseInt(request.getParameter("source"));
		int reportid =Integer.parseInt(request.getParameter("reportid"));
	
		if (source > 20) {
		zz=	operationService.GetOperationFiledNameByOperationId(source);
		moduleList = defectReportService.GetCustomDefectStatistics(condition, zz);
		} else {

			if (source == 1) {
				condition=defectReportService.GetReportCondition(reportid);
				condition="where"+condition;
				moduleList = defectReportService.GetCreatDefectStatistics(condition);
			}
			if (source == 3) {
				condition=defectReportService.GetReportCondition(reportid);
				condition="where"+condition;
				moduleList = defectReportService.GetSeverityDefectStatistics(condition);
			}
			if (source == 5) {
				condition=defectReportService.GetReportCondition(reportid);
				condition="where"+condition;
				moduleList = defectReportService.GetPriorityDefectStatistics(condition);
			}
			if (source == 7) {
				condition=defectReportService.GetReportCondition(reportid);
				condition="where"+condition;
				moduleList = defectReportService.GetPstatusDefectStatistics(condition);
			}
			if (source == 9) {
				condition=defectReportService.GetReportCondition(reportid);
				condition="where"+condition;
				moduleList = defectReportService.GetAssignedDefectStatistics(condition);
			}

		}
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+jsonstr);
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/defect/ReportList.do", method = RequestMethod.GET)
	public void Actionfgfx(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		String condition="";
		moduleList=defectReportService.GetReportAll();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+jsonstr);
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/StageReportList.do", method = RequestMethod.GET)
	public void StageActionfgfx(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		String condition="";
		moduleList=defectReportService.GetReportListByStage() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+jsonstr);
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/defect/DeReport.do", method = RequestMethod.GET)
	public String GetArticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int reportid = Integer.parseInt(request.getParameter("reportid"));
		moduleList=defectReportService.GetBackReportDetailByReportId(reportid);
		reportList =defectReportService.GetReportByReportId(reportid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(reportList).get(0);
		map.put("reportname", ob.getString("reportname"));
		map.put("reportid", ob.getString("reportid"));
		map.put("isshow", ob.getString("isshow"));
		map.put("qw", ob.getString("projectid"));
		
		String bstime =ob.getString("bstime") ;
		String betime =ob.getString("betime") ;
		String  initdata="0";
		if(bstime==initdata){
			System.out.println("aaaaassssssssssssssssssssssssss");
			bstime="设置开始时间";
		}
		if(betime==initdata){
			betime="设置结束时间";
		}
		map.put("bstime",bstime );
		map.put("betime",betime);
		map.put("moduleList",moduleList);
		projectlist =defectProjectService.GetDefectProjectListAll() ;
		map.put("plst", projectlist);
		return "/module/defect/ReportSetting";
	}
	
	
	@RequestMapping(value ="/module/defect/Report.do", method = RequestMethod.GET)
	public String GetAleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int reportid = Integer.parseInt(request.getParameter("reportid"));
		moduleList=defectReportService.GetStageReportDetailByReportId(reportid);
		reportList =defectReportService.GetReportByReportId(reportid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(reportList).get(0);
		int projectid =Integer.parseInt(ob.getString("projectid"));
		String bstime =ob.getString("bstime") ;
		String betime =ob.getString("betime") ;
		map.put("bstime",bstime );
		map.put("betime",betime);
		String  projectname="未设置项目";
		if(!(projectid==0)){
			projectname=	bitsService.GetProjectNameByProjectId(projectid);
		}
		map.put("projectname", projectname);
		map.put("reportname", ob.getString("reportname"));
		map.put("reportid", ob.getString("reportid"));
		map.put("isshow", ob.getString("isshow"));
		map.put("moduleList",moduleList);
		return "/module/defect/ReportStageDetail";
	}
	
	
	
	
	@RequestMapping(value = "/module/defect/ReportPic.do", method = RequestMethod.GET)
	public void Aonfgfx(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int  picid = 0 ;
		moduleList=defectReportService.GetBackReportDetailByPicId(picid);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+jsonstr);
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/module/defect/SetPicInfo.do", method = RequestMethod.POST)
	public void Afgfx(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		
		int picid = Integer.parseInt(request.getParameter("picid"));
		String filed=request.getParameter("filed");
		String value=request.getParameter("value");
		System.out.println("111111111"+filed+"123131231313"+value);
		defectReportService.SetPicInfo(picid, filed, value);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/defect/SetOnOff.do", method = RequestMethod.POST)
	public void Afgfssx(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		
		int picid = Integer.parseInt(request.getParameter("picid"));
		int  show=Integer.parseInt(request.getParameter("show"));

		defectReportService.SetOnOff(picid, show);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/defect/SetReportShow.do", method = RequestMethod.GET)
	public void Actiofgfx(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int reportid = Integer.parseInt(request.getParameter("reportid"));
		int show= Integer.parseInt(request.getParameter("show"));
		defectReportService.SetReportShow(reportid, show);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/SetReportName.do", method = RequestMethod.POST)
	public void SetReportName(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int reportid = Integer.parseInt(request.getParameter("reportid"));
		String reportname= request.getParameter("reportname");
		defectReportService.SetReportName(reportname, reportid);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	@RequestMapping(value = "/module/defect/DelReport.do", method = RequestMethod.POST)
	public void DelReport(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int reportid = Integer.parseInt(request.getParameter("reportid"));
		defectReportService.DelReport(reportid);
		defectReportService.DelReportDetail(reportid);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
}
