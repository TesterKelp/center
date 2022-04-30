package com.testsystem.mift.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.mift.service.MitfTaskService;
@Controller
@RequestMapping("/mift")
public class MitfTaskAction {
	@Autowired
	private MitfTaskService mitfTaskService ;
	private List taskList ;
	@RequestMapping(value ="/module/interface/InterfaceTaskManage.do", method = RequestMethod.GET)
	public String GetTask(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		taskList=mitfTaskService.GetAllTask();
		map.put("taskList", taskList);
		return "module/interface/InterfaceTaskManage";
	}
	
	@RequestMapping(value ="/module/interface/InterfaceTaskDetail.do", method = RequestMethod.GET)
	public String GetTaskDetail(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		int taskid =Integer.parseInt(request.getParameter("taskid"));
		String taskname =new String(request.getParameter("taskname").getBytes("ISO8859_1"), "UTF8");
		System.out.println("taskname"+taskname);
		taskList=mitfTaskService.GetCaseByTaskId(taskid);
		map.put("taskList", taskList);
		map.put("taskname", taskname);
		return "module/interface/InterfaceTaskDetail";
	}
	
}
