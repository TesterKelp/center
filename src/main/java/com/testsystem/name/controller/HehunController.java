package com.testsystem.name.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.helper.JsonAndString;
import com.testsystem.name.bz.hehun.Luozhuanghehun;
import com.testsystem.name.bz.hehun.luozhuanglvhehun;
import com.testsystem.name.bz.hehun.Luozhuanghehun.basicstring;
import com.testsystem.name.bz.hehun.Luozhuanghehun.sex;
import com.testsystem.name.service.HeHunService;
import com.testsystem.site.service.SiteService;
@Controller
public class HehunController {
	
	
	@Autowired
	private HeHunService heHunService ;
	
	
	@Autowired
	private SiteService siteService ;
	
	
	@RequestMapping(value ="/name/hehun/index.do", method = RequestMethod.GET)
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
		return "/template/name/hehun/indexhehun";
	}
	
	
	
	
	
	@RequestMapping(value ="/name/hehun/{name}/index.do", method = RequestMethod.GET)
	public String FindNameBdshengxiaolikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request,@PathVariable String name ) throws IOException{	
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
		
		
		return "/template/name/hehun/indexhehun_"+name;
	}
	
	@RequestMapping(value ="/name/hehun/hehun_shengxiao_js.do", method = RequestMethod.GET)
	public void FindNameBdshengxi2aolikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		   String t1 =request.getParameter("y");
		   String t2 =request.getParameter("m");	
		System.out.println(t2+"-----------"+t1);
		List lst=   heHunService.GetTaToTa(t1, t2) ;
		 String  jsonstr =  JsonAndString.ListToJsonToString(lst);   
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().write(jsonstr);
			response.getWriter().flush();	
	}
	
	
	
	@RequestMapping(value ="/name/hehun/hehun_lvcai_js.do", method = RequestMethod.GET)
	public void FindNameBdshengxid2aolikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		   String man =request.getParameter("man");
		   String woman =request.getParameter("woman");	

		   luozhuanglvhehun my = new luozhuanglvhehun();
	        String result = my.hehun(man, woman);
	        System.out.println("----"+man+"---"+"woman"+"---"+result);
	        List lst=   heHunService.GetLvCai(result) ;
			 String  jsonstr =  JsonAndString.ListToJsonToString(lst);   
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().write(jsonstr);
			response.getWriter().flush();	
	}
	
	
	
	
	@RequestMapping(value ="/name/hehun/hehun_benminggua_js.do", method = RequestMethod.GET)
	public void FindNameBdshssengxid2aolikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		   String man =request.getParameter("man");
		   String woman =request.getParameter("woman");	
		   
	       Luozhuanghehun my = new Luozhuanghehun();
//	        String result=my.hehun("1956", "1856");
	        String result=my.hehun(man, woman);
	        
//	        System.out.println(my.getnumber("1956",sex.man));
	     int   manage =   my.getnumber(man,sex.man) ;
	        
//	        System.out.println(my.basicsnumber(my.getnumber("1956",sex.man),sex.man));
	      basicstring   mann  =     my.basicsnumber(my.getnumber(man,sex.man),sex.man) ;
	     
	      int   womanage =   my.getnumber(woman,sex.man) ;
	      basicstring   womann  =     my.basicsnumber(my.getnumber(woman,sex.woman),sex.woman) ;
	         
//	        System.out.println(my.getnumber("1856",sex.woman));
//	        System.out.println(my.basicsnumber(my.getnumber("1856",sex.woman),sex.woman));
	        
	        String s= mann+"命男配"+womann+"命女";
	        System.out.println(s);
	        List lst=    heHunService.GetBenMingGua(s);
	        System.out.println(result);
			 String  jsonstr =  JsonAndString.ListToJsonToString(lst);   
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().write(jsonstr);
			response.getWriter().flush();	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
