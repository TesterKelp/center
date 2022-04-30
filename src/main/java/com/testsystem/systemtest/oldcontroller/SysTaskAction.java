package com.testsystem.systemtest.oldcontroller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SysTaskAction {

	
	@RequestMapping(value ="/module/systemtest/st_task.do", method = RequestMethod.GET)
	public String GetArticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	

		return "/module/systemtest/st_task";
	}
	
}
