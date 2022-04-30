package com.testsystem.name.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.backstage.service.ItemService;
import com.testsystem.name.tools.ShengXiao;

@Controller
public class ShengXiaoController {

	
	
	@Autowired
	private ItemService itemService ;
	
	

	@RequestMapping(value ="/name/shengxiao.do", method = RequestMethod.GET)
	public String FamilyMembers(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List lst = new ArrayList() ;
		for(int i =1876;i<2032;i++){
			lst.add(i);
		}
        map.put("lst", lst);
		return "module/name/ShengXiao";
	}
	
	
	
	@RequestMapping(value ="/name/shengxiao1.do", method = RequestMethod.GET)
	public String FamilyMemb1ers(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List lst = new ArrayList() ;
		for(int i =1876;i<2032;i++){
			lst.add(i);
		}
		
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		
        map.put("lst", lst);
		return "/template/name/shengxiao";
	}
	
	
	
	@RequestMapping(value ="/name/Year.do", method = RequestMethod.GET)
	public void FamilyYear(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int year = Integer.parseInt(request.getParameter("year"));
		String shengxiao = ShengXiao.getYear(year);
		String age = ShengXiao.getAge(year);
		
		response.setContentType("text/plain;charset=UTF-8");
		//如果这里不输出json信息，前端form提交回调的success方法就不会执行
		try {
		response.getWriter().write(year+"年出生,生肖:"+shengxiao+"  年龄:"+age);
		} catch (IOException e) {
		e.printStackTrace();
		}
	}	
}
