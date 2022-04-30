package com.testsystem.systemtest.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.testsystem.systemtest.vo.WebTask;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/systemtest")
public class WebTaskController {

	@Autowired
	private WebTaskService webTaskService;
	@Autowired
	private WebCaseService webCaseService;
	@Autowired
	private WebConfigureService configureService ;
	private List moduleList;

	@RequestMapping(value = "/AddTask.do", method = RequestMethod.POST)
	public void addTask(ModelMap map, WebTask webTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		webTask.setUserid(UserUtil.getCurrentUser().getUserid());
		webTask.setCreatetime(DataFormat.DataTime());
		webTask.setStatus(0);
		if(webTask.getRtime()==null||webTask.getRtime().equals("")){
			webTask.setTasktype(3);
			webTask.setRunnertime("NA");
		}else{
			String re_time = "";  
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
			webTask.setRunnertime(webTask.getRtime());
			Date d; 
			try {
				d = sdf.parse(webTask.getRtime());
				long l = d.getTime();  
				String str = String.valueOf(l);  
				re_time =str ;
				System.out.println(webTask.getRtime()+"===="+re_time);
//				re_time = str.substring(0, 10);  
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			webTask.setRtime(re_time);
			System.out.println("timetimedddddddddddddddddddddd:"+re_time);
			webTask.setTasktype(1);
			
		}
		
//		webTask.setTesttype(1);
		moduleList=configureService.GetConfigureByUserId(UserUtil.getCurrentUser().getUserid());
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		webTask.setServername(ob.getString("maxcsolo"));
		System.out.println("Testtype="+webTask.getTesttype());
		webTaskService.AddStTask(webTask);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}

	@RequestMapping(value = "/AginRunnerTask.do", method = RequestMethod.POST)
	public void AginTask(ModelMap map, WebTask webTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		webTaskService.AginRunnerTask(webTask.getTaskid());
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/SetCaseTaskEnd.do", method = RequestMethod.POST)
	public void CaseTaskEnd(ModelMap map, WebTask webTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		webTaskService.SetCaseTaskEnd(webTask.getTaskid());
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/Web_TaskManage.do", method = RequestMethod.GET)
	public String ArticleSearch(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String testtype =request.getParameter("testtype");
//		moduleList = webTaskService.GetStTaskAllList();
		moduleList=webTaskService.GetTaskByTestType(testtype);
		map.put("stTaskList", moduleList);
		return "/module/systemtest/Web_TaskManage";
	}

	
	@RequestMapping(value = "/S_CaseTaskManage.do", method = RequestMethod.GET)
	public String CaseTaskManage(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		moduleList = webTaskService.GetTaskByTaskType(2);
		map.put("stTaskList", moduleList);
		return "/S_CaseTaskManage";
	}
	
	
	
	@RequestMapping(value = "/S_TaskDetail.do", method = RequestMethod.GET)
	public String TaskDetail(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int taskid = Integer.parseInt(request.getParameter("taskid"));

		moduleList = webTaskService.GetCaseByTaskId(taskid);
		
		map.put("caseList", moduleList);
		map.put("taskid", taskid);
		return "/module/systemtest/Web_TaskDetail";
	}

	// 执锟叫硷拷录
	@RequestMapping(value = "/S_RunnerManage.do", method = RequestMethod.GET)
	public String TaskDetail1(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		moduleList = webTaskService.GetStTaskByStatus(1);
		map.put("taskRunnerList", moduleList);
		return "/S_RunnerManage";
	}

	// 锟斤拷锟斤拷目模锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷氲斤拷锟斤拷锟斤拷锟�

	@RequestMapping(value = "/AddCaseToTask.do", method = RequestMethod.POST)
	public void addCaseToTask(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {

		int projectid = Integer.parseInt(request.getParameter("projectid"));
		int moduleid = Integer.parseInt(request.getParameter("moduleid"));
		int taskid = Integer.parseInt(request.getParameter("taskid"));
		System.out.println("projectid" + projectid);
		System.out.println("moduleid" + moduleid);
		System.out.println("taskid" + taskid);
		if (moduleid == 0) {
			moduleList = webCaseService.GetStCaseByProjectId(projectid);
		} else {

			moduleList = webCaseService.GetStCaseByModuleId(moduleid);
		}
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			int caseid = Integer.parseInt(ob.getString("caseid"));
			System.out.println("caseid==" + caseid);
			webTaskService.AddCaseToTask(caseid, taskid);
		}
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}

	
	
	
	
	@RequestMapping(value = "/DelCaseFromTask.do", method = RequestMethod.POST)
	public void ddTask(ModelMap map, WebTask webTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int taskid = Integer.parseInt(request.getParameter("taskid"));
		String str[] =request.getParameterValues("els");
		for(int i=0; i < str.length;i++){ 
		      System.out.print("ceseid======================"+str[i]); 		
		      int caseid = Integer.parseInt(str[i]) ;
		      webTaskService.DelCaseFromTask(caseid, taskid);
		  }
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/UpdataTaskMac.do", method = RequestMethod.POST)
	public void UpdataTaskMac(ModelMap map, WebTask webTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int taskid = Integer.parseInt(request.getParameter("taskid"));
	    String clicentaddress = request.getParameter("clicentaddress");
	    webTaskService.UpdataTaskMac(taskid, clicentaddress);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
}
