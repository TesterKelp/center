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

import com.testsystem.defect.service.MenuService;
import com.testsystem.defect.vo.Menu;
import com.testsystem.helper.JsonAndString;

@Controller
public class MenuAction {

	@Autowired 
	private  MenuService  menuService ;
	private List  moduleList;
	String msg ;
	
	@RequestMapping(value = "/module/defect/getMenuList.do", method = RequestMethod.GET)
	public void MenuList(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		moduleList = menuService.GetDefectAndShareMenu();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/defect/delMenu.do", method = RequestMethod.GET)
	public void DelMenu(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int menuid = Integer.parseInt(request.getParameter("menuid"));
		menuService.DelMenu(menuid);
		msg="del is ok !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/addMenu.do", method = RequestMethod.POST)
	public void AddMenu(ModelMap map,  Menu menu ,HttpServletResponse response, HttpServletRequest request) throws IOException {
		menuService.AddMenu(menu);
		msg="add is ok !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value = "/module/defect/updataMenu.do", method = RequestMethod.POST)
	public void UpMenu(ModelMap map ,HttpServletResponse response, HttpServletRequest request) throws IOException {
		String filename =request.getParameter("file");
		String value=request.getParameter("value");
		int menuid=Integer.parseInt(request.getParameter("menuid"));
		menuService.UpdataMenuFiled(filename, value,menuid);
		msg="updata is ok !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/setMenuShow.do", method = RequestMethod.POST)
	public void setMenuShow(ModelMap map,  Menu menu ,HttpServletResponse response, HttpServletRequest request) throws IOException {
		menuService.SetMenuShow(menu.getMenuid(), menu.getIsshow());
		msg="set  is ok !";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	
	
	
	
}
