package com.testsystem.eg.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.helper.JsonAndString;

@Controller
public class HeaderController {
	
	
	
	
	
	@RequestMapping(value ="/eg/RequestHeader.do", method = RequestMethod.GET)
	public void AllArticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		   Enumeration<String> headerNames = request.getHeaderNames();
		           while (headerNames.hasMoreElements()) {
		               String name = headerNames.nextElement();
		               //根据名称获取请求头的值
		               String value = request.getHeader(name);
		               System.out.println(name+"---"+value);
		           }
//		           https://www.cnblogs.com/unknows/p/8724942.html
	String  s=	request.getHeader("Accept");
	String  ss=	request.getHeader("Authorization");	
		response.getWriter().write("{\"Accept\":\""+s+"\",\"Authorization\":\""+ss+"\"}");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/eg/ResponseHeader.do", method = RequestMethod.GET)
	public void AllArticsle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		   Enumeration<String> headerNames = request.getHeaderNames();
		           while (headerNames.hasMoreElements()) {
		               String name = headerNames.nextElement();
		               //根据名称获取请求头的值
		               String value = request.getHeader(name);
		               System.out.println(name+"---"+value);
		           }
    response.addHeader("test", "test");          
	response.addHeader("Accept", "88888888888");  
	response.getWriter().write("{\"cept\":\"cccc\",\"Authorization\":\"eeeeee\"}");
		response.getWriter().flush();
	}
	

	
	
	
	@RequestMapping(value ="/eg/Header.do", method = RequestMethod.GET)
	public void AllArticsdle(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		
		String ids =request.getParameter("ids");
		String keys =request.getParameter("keys");
		System.out.println("ids===="+ids +"keys==="+keys);
		   Enumeration<String> headerNames = request.getHeaderNames();
		           while (headerNames.hasMoreElements()) {
		               String name = headerNames.nextElement();
		               //根据名称获取请求头的值
		               String value = request.getHeader(name);
		               System.out.println(name+"---"+value);
		           }
    response.addHeader("test", "test");          
	response.addHeader("Accept", "88888888888");  
	response.getWriter().write("{\"cept\":\"ccccccccccc\",\"Auth\":\"eeeeeeeeeee\"}");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	

}
