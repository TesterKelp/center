package com.testsystem.usercenter.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.U;
import com.testsystem.usercenter.service.DataProService;

@Controller
public class DataPro {

	
	@Autowired
	private  DataProService dataProService ;
	
	
	@RequestMapping(value ="/data/datapro.do", method = RequestMethod.POST)
	public void Aad(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
 
		String str =request.getParameter("y");

		names(str);
		
		
		

		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	public void  names(String str){
		str = str.replaceAll("\r|\n", "");
		System.out.println(str);	
		str =str.replace("。", "、");
		str =str.replace(".", "、");
		str =str.replace(" ", "");
		System.out.println(str);
		String[] s=str.split("、");
		System.out.println(s.length);
		System.out.println(s);
		for(int i=0;i<s.length;i++){
			if(s[i]==null||s[i].equals("")){
			}else{
				System.out.println(s[i].trim());
				String name =s[i] ;
			
				String 	sql="	insert into life_boyandgirl ( xb,sname  ) "
						+"SELECT '3', '"+name+"' from DUAL WHERE NOT EXISTS(select sname  from  life_boyandgirl  where sname ='"+name+"')"  ;
System.out.println(sql);
				dataProService.addSQl(sql);
			}
		}
	}
	
	
	
	
	
	
	
	
	
}
