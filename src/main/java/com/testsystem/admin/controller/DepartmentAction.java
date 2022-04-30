package com.testsystem.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.DepartmentService;
import com.testsystem.admin.vo.Department;
@Controller
public class DepartmentAction {
	
	@Autowired
	private DepartmentService departmentService;
	private List moduleList;
	private Department department = new Department();
	String msg ="" ;
	
	@RequestMapping(value ="/module/admin/saveDepartment.do", method = RequestMethod.POST)
	public void SaveDepartment(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
//		String DepartmentPid = request.getParameter("DepartmentPid");
		String DepartmentName = request.getParameter("DepartmentName");
		
		int DepartmentPid = Integer.parseInt(request.getParameter("DepartmentPid"));
		
		department.setPid(DepartmentPid);
		department.setName(DepartmentName);
		department.setLevel("no");
		department.setDeptorder(1);
		departmentService.SaveDepartment(department);
		msg="save sucessfully !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	

}
