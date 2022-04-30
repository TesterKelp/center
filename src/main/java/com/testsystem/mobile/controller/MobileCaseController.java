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

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;
import com.testsystem.mobile.service.MobileCaseService;
import com.testsystem.mobile.service.MobileConfigureService;
import com.testsystem.mobile.service.MobileTaskService;
import com.testsystem.mobile.service.MobileWidgetService;
import com.testsystem.mobile.vo.MobileBody;
import com.testsystem.mobile.vo.MobileCase;
import com.testsystem.mobile.vo.MobileTask;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/mobile")
public class MobileCaseController {
	
	@Autowired
	private MobileCaseService mobileCaseService ;
	@Autowired
	private MobileConfigureService mobileConfigureService ;
	@Autowired
	private MobileTaskService mobileTaskService;
	@Autowired
	private MobileWidgetService mobileWidgetService ;
	private List caseList ;
	private  List caseBody ;
	private  List caseIndex ;
	private  List cglst ;
	String msg  ;
	MobileBody mobileBody = new MobileBody();
	@RequestMapping(value ="/Mobile_CaseManage.do", method = RequestMethod.GET)
	public String CaseManage(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		caseList =mobileCaseService.GetStCaseByStatus(3) ;
		//System.out.println("teach"+caseList);
		map.put("caseList", caseList);
		return "/module/mobile/Mobile_CaseManage";
	}
	
	@RequestMapping(value ="/Mobile_CaseAdd.do", method = RequestMethod.GET)
	public String CaseAdd(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		caseList =mobileCaseService.GetStCaseByStatus(3) ;
		//System.out.println("teach"+caseList);
		map.put("caseList", caseList);
		return "/module/mobile/Mobile_CaseAdd";
	}
	
	
	
	
	@RequestMapping(value ="/Mobile_CaseDetail.do", method = RequestMethod.GET)
	public String CaseDetail(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int caseid  = Integer.parseInt(request.getParameter("caseid"));
		
		caseIndex=mobileCaseService.GetCaseIndex(caseid);
		caseBody = mobileCaseService.GetCaseBody(caseid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(caseIndex).get(0);
		map.put("caseid", ob.getString("caseid"));
		map.put("casename", ob.getString("casename"));
		map.put("casedesc", ob.getString("casedesc"));
		map.put("moduleid", ob.getString("moduleid"));
		map.put("projectid", ob.getString("projectid"));
		map.put("caseBody", caseBody);
		return "/module/mobile/Mobile_CaseDetail";
	}
	
	
	
	
	@RequestMapping(value = "/AddStCase.do", method = RequestMethod.POST)
	public void AddStCase(ModelMap map, MobileCase mobileCase, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		mobileCase.setUserid(UserUtil.getCurrentUser().getUserid());
		mobileCase.setStatus(0);
//		 stCaseService.AddStCase(stCase);
		int caseid = mobileCaseService.AddStCasea(mobileCase);
		//System.out.println("dddddddddddddd" + caseid);
		String operationvalue[] = request.getParameterValues("operationvalue");
		String widgetidall[] = request.getParameterValues("widgetidall");
		String checkpointall[] = request.getParameterValues("checkpointall");
		String pdataall[] = request.getParameterValues("pdataall");
		System.out.println(operationvalue.length);

		for (int i = 0; i < operationvalue.length; i++) {
			

			mobileBody.setCaseid(caseid);
			mobileBody.setStepsort(i + 1);
			mobileBody.setWidgetid(Integer.parseInt(widgetidall[i]));
			mobileBody.setOperation(operationvalue[i]);
			mobileBody.setPadat(pdataall[i].replace("'","''"));
			mobileBody.setCheckpoint(checkpointall[i]);
			System.out.println(operationvalue[i] + "==" + widgetidall[i] + "==" + checkpointall[i] + "==" + pdataall[i]);
			if(operationvalue[i].equals("CaseEnd")){
				break ;
			}else{
				mobileCaseService.AddStbody(mobileBody);
			}
			
			
		}
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/UpdateStCase.do", method = RequestMethod.POST)
	public void UpdateStCase(ModelMap map, MobileCase mobileCase, HttpServletResponse response, HttpServletRequest request)
			throws IOException {

		mobileCaseService.UpdateStCaseIndex(mobileCase);
		mobileCaseService.DelStCaseBodyByCaseId(mobileCase.getCaseid());
		String operationvalue[] = request.getParameterValues("operationvalue");
		String widgetidall[] = request.getParameterValues("widgetidall");
		String checkpointall[] = request.getParameterValues("checkpointall");
		String pdataall[] = request.getParameterValues("pdataall");
		for (int i = 0; i < operationvalue.length; i++) {
			mobileBody.setCaseid(mobileCase.getCaseid());
			mobileBody.setStepsort(i + 1);
			mobileBody.setWidgetid(Integer.parseInt(widgetidall[i]));
			mobileBody.setOperation(operationvalue[i]);
			mobileBody.setPadat(pdataall[i].replace("'","''"));
			mobileBody.setCheckpoint(checkpointall[i]);
			System.out.println(operationvalue[i] + "==" + widgetidall[i] + "==" + checkpointall[i] + "==" + pdataall[i]);
			if(operationvalue[i].equals("CaseEnd")){
				break ;
			}else{
				mobileCaseService.AddStbody(mobileBody);
			}
		
	
	}
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/DelStCase.do", method = RequestMethod.POST)
	public void DelStCase(ModelMap map, MobileCase mobileCase, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
			int  caseid =Integer.parseInt(request.getParameter("caseid"));
			mobileCaseService.DelStCaseIndexByCaseId(caseid);
			mobileCaseService.DelStCaseBodyByCaseId(caseid);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	@RequestMapping(value = "/RunnerCase.do", method = RequestMethod.POST)
	public void RunnerCase(ModelMap map, MobileTask mobileTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int caseid = Integer.parseInt(request.getParameter("caseid"));
		cglst =mobileConfigureService.GetConfigureByUserId(UserUtil.getCurrentUser().getUserid());
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(cglst).get(0);
		if(!mobileCaseService.IsHaveTaskByCaseTaskAndMaxcsoloo(ob.getString("maxcsolo"), 3))	
		{
			mobileTask.setClicentaddress(ob.getString("maxcsolo"));
			mobileTask.setUserid(UserUtil.getCurrentUser().getUserid());
			mobileTask.setCreatetime(DataFormat.DataTime());
			mobileTask.setStatus(0);
			mobileTask.setTasktype(2);
			mobileTask.setTaskname(DataFormat.DataTime() + "--" + caseid + "--");
		int taskid = mobileTaskService.AddStTaskReturnId(mobileTask);
		mobileTaskService.AddCaseToTask(caseid, taskid);
		msg="ok";
		
		
		
		}else{
			msg="用例任务中已经存在！";
		}

		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	
	
	@RequestMapping(value = "/SetStCaseIsSuccessfully.do", method = RequestMethod.POST)
	public void SetCaseIsSuccessfully(ModelMap map, MobileCase mobileCase, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
			int  caseid =Integer.parseInt(request.getParameter("caseid"));
			mobileCaseService.SetCaseIsSuccessfully(caseid, 1);
			cglst = mobileCaseService.GetCaseBody(caseid);
			
			for (int i = 0; i <JsonAndString.ListToJsonArray(cglst).size(); i++){
				JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(cglst).get(i);
			int	widgetid  =	Integer.parseInt(oc.getString("widgetid"));
			mobileWidgetService.SetWidgetIsSuccessfully(widgetid, 1);
//			set 
	}
			
			
			
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
