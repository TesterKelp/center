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

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.JsonAndString;
import com.testsystem.mobile.service.MobileConfigureService;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/mobile")
public class MobileConfigureController {
	
	@Autowired
	private MobileConfigureService mobileConfigureService ;
	private List cglst ;
	@RequestMapping(value ="/MyConfigure.do", method = RequestMethod.GET)
	public String ArticleSearch(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		
//		System.out.println("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww");
//		System.getProperty("java.class.path");
//		System.out.println("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww");
		cglst =mobileConfigureService.GetConfigureByUserId(UserUtil.getCurrentUser().getUserid());
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(cglst).get(0);
		map.put("realname", UserUtil.getCurrentUser().getRealname());
		map.put("email", UserUtil.getCurrentUserinfo().getUseremail());
		map.put("maxcsolo", ob.getString("maxcsolo"));
		map.put("macid", ob.getString("macid"));
		return "/S_ConfigureManage";
	}

	
	@RequestMapping(value ="/UpdataMacSolo.do", method = RequestMethod.POST)
	public void Module(ModelMap map,HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		int macid =  Integer.parseInt(request.getParameter("macid"));
		String maxcsolo =request.getParameter("maxcsolo");
		mobileConfigureService.UpdataMacSolo(macid, maxcsolo);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
}
