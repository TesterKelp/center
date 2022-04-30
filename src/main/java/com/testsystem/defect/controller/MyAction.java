package com.testsystem.defect.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ser.BasicSerializerFactory.UtilDateSerializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.service.DefectService;
import com.testsystem.defect.service.TaskService;
@Controller
public class MyAction {
	@Autowired 
	private  DefectService defectService ;
	@Autowired 
	private  TaskService taskService ;
	
	private List defectList ;
	private List taskList ;
	
	@RequestMapping(value ="/module/defect/My.do", method = RequestMethod.GET)
	public String DefectMy(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int  userid =UserUtil.getCurrentUserinfo().getUserid();
		defectList=defectService.MyAssignedMeDefect(userid);
		taskList    = taskService.GetMyTask();
		map.put("defectList",defectList);
		map.put("taskList",taskList);
		return "/module/defect/MyInfo";
	}
	

}
