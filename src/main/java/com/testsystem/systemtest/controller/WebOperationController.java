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

import com.testsystem.systemtest.service.WebOperationService;

@Controller
@RequestMapping("/systemtest")
public class WebOperationController {
	
	@Autowired
	private WebOperationService webOperationService ;
	private List moduleList ;
	@RequestMapping(value ="/Web_OperationManage.do", method = RequestMethod.GET)
	public String ArticleSearch(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		
		moduleList =webOperationService.GetAllOperation();
		map.put("operationList",moduleList);
		
		return "/module/systemtest/Web_OperationManage";
	}

}
