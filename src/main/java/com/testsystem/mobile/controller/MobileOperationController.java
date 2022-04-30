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

import com.testsystem.mobile.service.MobileOperationService;

@Controller
@RequestMapping("/mobile")
public class MobileOperationController {
	
	@Autowired
	private MobileOperationService mobileOperationService ;
	private List moduleList ;
	@RequestMapping(value ="/Mobile_OperationManage.do", method = RequestMethod.GET)
	public String ArticleSearch(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		moduleList =mobileOperationService.GetAllOperation();
		map.put("operationList",moduleList);
		return "/module/mobile/Mobile_OperationManage";
	}

}
