package com.testsystem.name.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.helper.JsonAndString;
import com.testsystem.name.service.DivinationService;
import com.testsystem.site.service.SiteService;

@Controller
public class DivinationController {

	@Autowired
	private DivinationService divinationService ;
	
	@Autowired
	private SiteService siteService ;
	
	
	@RequestMapping(value ="/name/suanming/index.do", method = RequestMethod.GET)
	public String FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	

		int n = siteService.GetSite().getHtml();
		String  suffix="html";
		String  hhtml="";
		if(n==1){
			suffix="html";
			hhtml="1" ;
		}else{
			suffix="do";
			hhtml="0" ;
		}
		map.put("hhtml", hhtml);
		map.put("suffix", suffix);
		return "/template/name/suanming/indexsuanming";
	}
	
	@RequestMapping(value ="/name/suanming/indexchenggu.do", method = RequestMethod.GET)
	public String FindNameBsdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	

		return "/template/name/suanming/indexChenggu";
	}
	
	
		@RequestMapping(value = "/name/suanming/chenggu.do", method = RequestMethod.GET)
	public void SetCaseRunnileNumber(ModelMap map, HttpServletResponse response,HttpServletRequest request)
			throws IOException {
	   String y =request.getParameter("y");
	   String m =request.getParameter("m");	
	   String d =request.getParameter("d");
	   String h =request.getParameter("h");
	   String mi =request.getParameter("mi");
	   
	   
	double  aa  =  divinationService.GetWeigth("year", y) ;
	double  bb  =    divinationService.GetWeigth("month", m) ;
	double  cc  =    divinationService.GetWeigth("day", d) ;
	double  dd  =    divinationService.GetWeigth("time", h) ;
	   
	   int r =  (int) ((aa+bb+cc+dd ) *10) ;
	   System.out.println("骨头重=="+r);
	  List t  =  divinationService.GetWeigth(r+"");
	 
	  String  jsonstr =  JsonAndString.ListToJsonToString(t);	
		String  result=""+r;
		//{\"numb\":\""+numbe+"\",\"title\":\""+numer.getTitle()+"\",\"jx\":\""+numer.getJx()+"\",\"content\":\""+numer.getContent()+"\"}";
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(jsonstr);
		response.getWriter().flush();	
	}
	
	
	
	
	
	
	
	
	
}
