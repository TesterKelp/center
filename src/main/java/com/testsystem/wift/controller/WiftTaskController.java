package com.testsystem.wift.controller;

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
import com.testsystem.mobile.service.MobileCaseService;
import com.testsystem.mobile.service.MobileConfigureService;
import com.testsystem.mobile.service.MobileTaskService;
import com.testsystem.mobile.vo.MobileTask;
import com.testsystem.utils.Constants;
import com.testsystem.wift.service.IfCaseService;
import com.testsystem.wift.service.IfTaskService;
import com.testsystem.wift.service.WiftTaskService;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/wift")
public class WiftTaskController {

	@Autowired
	private WiftTaskService wiftTaskService;
	@Autowired
	private MobileCaseService mobileCaseService;
	
	  @Autowired
	  private IfCaseService ifCaseService;
	
	@Autowired
	private MobileConfigureService  mobileConfigureService ;
	private List moduleList;
	
	@Autowired
	private IfTaskService ifTaskService ;
	private List taskList ;
	

	@RequestMapping(value = "/AddTask.do", method = RequestMethod.POST)
	public void addTask(ModelMap map, MobileTask mobileTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {

		mobileTask.setUserid(UserUtil.getCurrentUser().getUserid());
		mobileTask.setCreatetime(DataFormat.DataTime());
		mobileTask.setStatus(0);
		
		if(mobileTask.getRtime()==null||mobileTask.getRtime().equals("")){
			mobileTask.setTasktype(3);
			mobileTask.setRunnertime("NA");
		}else{
			String re_time = "";  
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
			mobileTask.setRunnertime(mobileTask.getRtime());
			Date d; 
			try {
				d = sdf.parse(mobileTask.getRtime());
				long l = d.getTime();  
				String str = String.valueOf(l);  
				re_time =str ;
				System.out.println(mobileTask.getRtime()+"===="+re_time);
//				re_time = str.substring(0, 10);  
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			mobileTask.setRtime(re_time);
			System.out.println("timetimedddddddddddddddddddddd:"+re_time);
			mobileTask.setTasktype(1);
			
		}
		
		moduleList= mobileConfigureService.GetConfigureByUserId(UserUtil.getCurrentUser().getUserid());
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		mobileTask.setServername(ob.getString("maxcsolo"));
//		wiftTaskService.AddStTask(mobileTask);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}

	@RequestMapping(value = "/AginRunnerTask.do", method = RequestMethod.POST)
	public void AginTask(ModelMap map, MobileTask mobileTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		wiftTaskService.AginRunnerTask(mobileTask.getTaskid());
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/SetCaseTaskEnd.do", method = RequestMethod.POST)
	public void CaseTaskEnd(ModelMap map, MobileTask mobileTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		wiftTaskService.SetCaseTaskEnd(mobileTask.getTaskid());
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	                          
	@RequestMapping(value = "/Wift_TaskManage.do", method = RequestMethod.GET)
	public String ArticleSearch(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		moduleList = wiftTaskService.GetStTaskAllList();
		map.put("stTaskList", moduleList);
		return  Constants.WIFTDIR+"Wift_TaskManage";
	}

	
	@RequestMapping(value = "/S_CaseTaskManage.do", method = RequestMethod.GET)
	public String CaseTaskManage(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		moduleList = wiftTaskService.GetTaskByTaskType(2);
		map.put("stTaskList", moduleList);
		return  Constants.WIFTDIR+"S_CaseTaskManage";
	}
	
	
	
	@RequestMapping(value = "/Wift_TaskDetail.do", method = RequestMethod.GET)
	public String TaskDetail(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int taskid = Integer.parseInt(request.getParameter("taskid"));
		moduleList = wiftTaskService.GetCaseByTaskId(taskid);
		map.put("caseList", moduleList);
		map.put("taskid", taskid);
		return  Constants.WIFTDIR+"Wift_TaskDetail";
	}

	// 执锟叫硷拷录
	@RequestMapping(value = "/S_RunnerManage.do", method = RequestMethod.GET)
	public String TaskDetail1(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		moduleList = wiftTaskService.GetStTaskByStatus(1);
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
		int interfaceid = Integer.parseInt(request.getParameter("interfaceid"));
		
		System.out.println("interfaceid" + interfaceid);
		System.out.println("projectid" + projectid);
		System.out.println("moduleid" + moduleid);
		System.out.println("taskid" + taskid);
		
		if(projectid==0){// 没有选择任何项目
	
		}else if (moduleid == 0) { // 没有选择模块  只选择了项目  把项目中的用例都加入到任务中去
			moduleList = ifCaseService.GetCaseByProjectId(projectid);
		} else if(interfaceid==0) {  // 没有选择接口  把模块中的用例都加入到任务中去
			moduleList = ifCaseService.GetCaseByModuleId(moduleid);
		}else{ // 选择了项目  选择了模块  选择了接口  把数据该接口的用例都导入进去
			moduleList = ifCaseService.GetCaseByInterfaceId(interfaceid);
		}
		System.out.println("list=="+moduleList.toString());
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			int caseid = Integer.parseInt(ob.getString("interface_case_id"));
			System.out.println("caseid==" + caseid);
			wiftTaskService.AddCaseToTask(caseid, taskid);
		}
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}

	
	
	
	
	@RequestMapping(value = "/DelCaseFromTask.do", method = RequestMethod.POST)
	public void ddTask(ModelMap map, MobileTask mobileTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		
		int taskid = Integer.parseInt(request.getParameter("taskid"));
		String str[] =request.getParameterValues("els");
		for(int i=0; i < str.length;i++){ 
		      System.out.print("ceseid======================"+str[i]); 		
		      int caseid = Integer.parseInt(str[i]) ;
		      wiftTaskService.DelCaseFromTask(caseid, taskid);
		  }
		
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/UpdataTaskMac.do", method = RequestMethod.POST)
	public void UpdataTaskMac(ModelMap map, MobileTask mobileTask, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		
		int taskid = Integer.parseInt(request.getParameter("taskid"));
	    String clicentaddress = request.getParameter("clicentaddress");
	    
	    wiftTaskService.UpdataTaskMac(taskid, clicentaddress);
		
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/module/interface/InterfaceTaskManage.do", method = RequestMethod.GET)
	public String GetTask(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		taskList=ifTaskService.GetAllTask();
		map.put("taskList", taskList);
		return  Constants.WIFTDIR+"InterfaceTaskManage";
	}
	
	@RequestMapping(value ="/module/interface/InterfaceTaskDetail.do", method = RequestMethod.GET)
	public String GetTaskDetail(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		int taskid =Integer.parseInt(request.getParameter("taskid"));
		String taskname =new String(request.getParameter("taskname").getBytes("ISO8859_1"), "UTF8");
		System.out.println("taskname"+taskname);
		taskList=ifTaskService.GetCaseByTaskId(taskid);
		map.put("taskList", taskList);
		map.put("taskname", taskname);
		return  Constants.WIFTDIR+"InterfaceTaskDetail";
	}
	
	
	
	
	
	
	
}
