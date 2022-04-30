package com.testsystem.systemtest.controller;

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
import com.testsystem.systemtest.service.WebCaseService;
import com.testsystem.systemtest.service.WebConfigureService;
import com.testsystem.systemtest.service.WebTaskService;
import com.testsystem.systemtest.service.WebWidgetService;
import com.testsystem.systemtest.vo.WebBody;
import com.testsystem.systemtest.vo.WebCase;
import com.testsystem.systemtest.vo.WebTask;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/systemtest")
public class WebCaseController {
	
	@Autowired
	private WebCaseService webCaseService ;
	@Autowired
	private WebConfigureService webConfigureService ;
	@Autowired
	private WebTaskService webTaskService;
	@Autowired
	private WebWidgetService webWidgetService ;
	private List caseList ;
	private  List caseBody ;
	private  List caseIndex ;
	private  List cglst ;
	String msg  ;
	WebBody webBody = new WebBody();
	@RequestMapping(value ="/Web_CaseManage.do", method = RequestMethod.GET)
	public String CaseManage(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		caseList =webCaseService.GetStCaseByStatus(3) ;
		//System.out.println("teach"+caseList);
		map.put("caseList", caseList);
		return "/module/systemtest/Web_CaseManage";
	}
	
	@RequestMapping(value ="/Web_CaseAdd.do", method = RequestMethod.GET)
	public String CaseAdd(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		caseList =webCaseService.GetStCaseByStatus(3) ;
		//System.out.println("teach"+caseList);
		map.put("caseList", caseList);
		return "/module/systemtest/Web_CaseAdd";
	}
	
	
	
	
	@RequestMapping(value ="/S_CaseDetail.do", method = RequestMethod.GET)
	public String CaseDetail(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int caseid  = Integer.parseInt(request.getParameter("caseid"));
		caseIndex=webCaseService.GetCaseIndex(caseid);
		caseBody = webCaseService.GetCaseBody(caseid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(caseIndex).get(0);
		map.put("caseid", ob.getString("caseid"));
		map.put("casename", ob.getString("casename"));
		map.put("casedesc", ob.getString("casedesc"));
		map.put("moduleid", ob.getString("moduleid"));
		map.put("projectid", ob.getString("projectid"));
		map.put("caseBody", caseBody);
		return "/module/systemtest/Web_CaseDetail";
	}
	
	@RequestMapping(value ="/Web_CaseDetail_Data.do", method = RequestMethod.GET)
	public String CaseDeddtail(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int caseid  = Integer.parseInt(request.getParameter("caseid"));
		caseIndex=webCaseService.GetCaseIndex(caseid);
		caseBody = webCaseService.GetCaseBody(caseid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(caseIndex).get(0);
		map.put("caseid", ob.getString("caseid"));
		map.put("casename", ob.getString("casename"));
		map.put("casedesc", ob.getString("casedesc"));
		map.put("moduleid", ob.getString("moduleid"));
		map.put("projectid", ob.getString("projectid"));
		map.put("caseBody", caseBody);
		return "/module/systemtest/Web_Case_Detail_Data";
	}
	
	
	@RequestMapping(value = "/AddStCase.do", method = RequestMethod.POST)
	public void AddStCase(ModelMap map, WebCase webCase, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		webCase.setUserid(UserUtil.getCurrentUser().getUserid());
		webCase.setStatus(0);
		int caseid = webCaseService.AddStCasea(webCase);
		String operationvalue[] = request.getParameterValues("operationvalue");
		String widgetidall[] = request.getParameterValues("widgetidall");
		String checkpointall[] = request.getParameterValues("checkpointall");
		String pdataall[] = request.getParameterValues("pdataall");
		System.out.println(operationvalue.length);

		for (int i = 0; i < operationvalue.length; i++) {
			

			webBody.setCaseid(caseid);
			webBody.setStepsort(i + 1);
			webBody.setWidgetid(Integer.parseInt(widgetidall[i]));
			webBody.setOperation(operationvalue[i]);
			webBody.setPadat(pdataall[i].replace("'","''"));
			webBody.setCheckpoint(checkpointall[i]);
			System.out.println(operationvalue[i] + "==" + widgetidall[i] + "==" + checkpointall[i] + "==" + pdataall[i]);
			if(operationvalue[i].equals("CaseEnd")){
				break ;
			}else{
				webCaseService.AddStbody(webBody);
			}
			
			
		}
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/UpdateStCase.do", method = RequestMethod.POST)
	public void UpdateStCase(ModelMap map, WebCase webCase, HttpServletResponse response, HttpServletRequest request)
			throws IOException {

		webCaseService.UpdateStCaseIndex(webCase);
		webCaseService.DelStCaseBodyByCaseId(webCase.getCaseid());
		String operationvalue[] = request.getParameterValues("operationvalue");
		String widgetidall[] = request.getParameterValues("widgetidall");
		String checkpointall[] = request.getParameterValues("checkpointall");
		String pdataall[] = request.getParameterValues("pdataall");
		for (int i = 0; i < operationvalue.length; i++) {
			webBody.setCaseid(webCase.getCaseid());
			webBody.setStepsort(i + 1);
			webBody.setWidgetid(Integer.parseInt(widgetidall[i]));
			webBody.setOperation(operationvalue[i]);
			webBody.setPadat(pdataall[i].replace("'","''"));
			webBody.setCheckpoint(checkpointall[i]);
			System.out.println(operationvalue[i] + "==" + widgetidall[i] + "==" + checkpointall[i] + "==" + pdataall[i]);
			if(operationvalue[i].equals("CaseEnd")){
				break ;
			}else{
				webCaseService.AddStbody(webBody);
			}
		
	
	}
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/DelStCase.do", method = RequestMethod.POST)
	public void DelStCase(ModelMap map, WebCase webCase, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
			int  caseid =Integer.parseInt(request.getParameter("caseid"));
			webCaseService.DelStCaseIndexByCaseId(caseid);
			webCaseService.DelStCaseBodyByCaseId(caseid);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	@RequestMapping(value = "/RunnerCase.do", method = RequestMethod.POST)
	public void RunnerCase(ModelMap map, WebTask webTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int caseid = Integer.parseInt(request.getParameter("caseid"));
		cglst = webConfigureService.GetConfigureByUserId(UserUtil.getCurrentUser().getUserid());
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(cglst).get(0);
		if(!webCaseService.IsHaveTaskByCaseTaskAndMaxcsoloo(ob.getString("maxcsolo"), 3))	
		{
			webTask.setClicentaddress(ob.getString("maxcsolo"));
			webTask.setUserid(UserUtil.getCurrentUser().getUserid());
			webTask.setCreatetime(DataFormat.DataTime());
			webTask.setStatus(0);
			webTask.setTasktype(2);
			webTask.setTaskname(DataFormat.DataTime() + "--" + caseid + "--");
		int taskid = webTaskService.AddStTaskReturnId(webTask);
		webTaskService.AddCaseToTask(caseid, taskid);
		msg="ok";		
		}else{
			msg="用例任务中已经存在！";
		}

		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	
	
	@RequestMapping(value = "/SetStCaseIsSuccessfully.do", method = RequestMethod.POST)
	public void SetCaseIsSuccessfully(ModelMap map, WebCase webCase, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
			int  caseid =Integer.parseInt(request.getParameter("caseid"));
			webCaseService.SetCaseIsSuccessfully(caseid, 1);
			cglst = 	webCaseService.GetCaseBody(caseid);
			for (int i = 0; i <JsonAndString.ListToJsonArray(cglst).size(); i++){
				JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(cglst).get(i);
			int	widgetid  =	Integer.parseInt(oc.getString("widgetid"));
			webWidgetService.SetWidgetIsSuccessfully(widgetid, 1);
	}
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
