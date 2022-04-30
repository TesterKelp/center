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

import com.testsystem.defect.service.DeptService;
import com.testsystem.helper.JsonAndString;

@Controller
public class DeptAction {

	@Autowired 
	private  DeptService deptService ;
	
	private List deptList;
	
	@RequestMapping(value = "/module/admin/deptlist.do", method = RequestMethod.GET)
	public void Actionajax(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		deptList =deptService.GetDeptList();
		String aa =JsonAndString.ListToJsonToString(deptList);
		System.out.println("aa:"+aa);
		String jsonstr = "";
//		response.getWriter().write("{\"msg\":\"sucessful\"}");
		response.getWriter().write(aa);
		response.getWriter().flush();
		
	}
	
	@RequestMapping(value = "/module/admin/dlist.do", method = RequestMethod.POST)
	public void Actionx(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {

		
		deptList =deptService.GetDeptList();
		String aa =JsonAndString.ListToJsonToString(deptList);
		
		System.out.println("aa:"+aa);
		String jsonstr = "";
//		response.getWriter().write("{\"msg\":\"sucessful\"}");
		
		response.getWriter().write(aa);
		response.getWriter().flush();
		
	}
	
//	http://blog.csdn.net/ppt0501/article/details/11108541
//	http://bbs.csdn.net/topics/390287572
//	http://www.oschina.net/question/2376057_2133480
//	http://www.ztree.me/v3/demo.php#_101
	
	
	
}
