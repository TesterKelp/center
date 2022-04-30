package com.testsystem.api.eg;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.UserService;
import com.testsystem.api.service.ApiReportService;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.U;

@Controller
@RequestMapping("/api/wr")
public class JsonToUi {

	@Autowired
	ApiReportService apiReportService ;
	
	@Autowired
	private UserService userService ;
	
	private List moduleList;
	private String rsstatus;
	private String message;
	
	
	@RequestMapping(value ="/user/getUserList.do", method = RequestMethod.GET)
	public void AddC(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		Map  mp =new HashMap();
		int userid = U.GetUserId(request);
		mp.put("userid", userid);
		System.out.println(userid);
		moduleList =  userService.GetUserInfo(userid);
		mp.put("user", moduleList);
		ObjectMapper objectMapper = new ObjectMapper();
		String json = objectMapper.writeValueAsString(mp); //orderList为List<Order>
		System.out.println("json"+json);
		response.getWriter().write(json);
		response.getWriter().flush();
	}
	
	
	
}
