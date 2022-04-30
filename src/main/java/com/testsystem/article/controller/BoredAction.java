package com.testsystem.article.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.article.service.BoredService;

@Controller
@RequestMapping("/bored")
public class BoredAction {

	@Autowired
	private BoredService boredService ;
	
	
	@RequestMapping(value ="/boredindex.do", method = RequestMethod.GET)
	public String GetTrasks(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
	
	   List  t=	boredService.BoredListByShow();	
	   System.out.println(t);
		map.put("tt", t);
		return "/template/kwz/bored";
	}
	
	
	
	
	
}
