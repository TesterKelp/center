package com.testsystem.defect.util;

import javax.servlet.jsp.JspWriter;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.service.UserService;
import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.service.CycleService;
import com.testsystem.defect.vo.Cycle;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.UserInfo;

public class CycleOperation   {

	
	public static void AddCycle(String operation,int bugid){
		
		Cycle cycle = null;
		String ntime = DataFormat.DataTime();
		cycle.setNtime(ntime);
		cycle.setUserid(UserUtil.getCurrentUser().getUserid());
		cycle.setBugid(bugid);
		cycle.setOperation(operation);
		

	}
}
