package com.testsystem.name.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.name.tools.ShengXiao;

@Controller
public class AgeController {

	
	
	
	@RequestMapping(value ="/name/Age.do", method = RequestMethod.GET)
	public void FamilyYear(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int year = Integer.parseInt(request.getParameter("year"));

		String age = ShengXiao.getAge(year);

		 Calendar cal = Calendar.getInstance();
	        int day = cal.get(Calendar.DATE);
	        int month = cal.get(Calendar.MONTH) + 1;
	        int yearr = cal.get(Calendar.YEAR);
	        int dow = cal.get(Calendar.DAY_OF_WEEK);
	        int dom = cal.get(Calendar.DAY_OF_MONTH);
	        int doy = cal.get(Calendar.DAY_OF_YEAR);

		response.setContentType("text/plain;charset=UTF-8");
		//如果这里不输出json信息，前端form提交回调的success方法就不会执行
		try {
		response.getWriter().write("您出生年份为："+year+",到今年"+yearr+"您已经"+age+"岁。");
		} catch (IOException e) {
		e.printStackTrace();
		}
	}	
	
	
	
	@RequestMapping(value ="/name/Age2.do", method = RequestMethod.GET)
	public void FamislyYear(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int year = Integer.parseInt(request.getParameter("year"));
		int MM = Integer.parseInt(request.getParameter("MM"));
		int DD = Integer.parseInt(request.getParameter("DD"));
		String age = ShengXiao.getAge(year);
        int  a =0 ;
//		小A于2017年5月20日出生，那么2019年5月20日这一天则为小A一周岁的最后一天，小A的两周岁从2019年5月21日这一天开始计算。

		 Calendar cal = Calendar.getInstance();
	        int day = cal.get(Calendar.DATE);
	        int month = cal.get(Calendar.MONTH) + 1;
	        int yearr = cal.get(Calendar.YEAR);
	        int dow = cal.get(Calendar.DAY_OF_WEEK);
	        int dom = cal.get(Calendar.DAY_OF_MONTH);
	        int doy = cal.get(Calendar.DAY_OF_YEAR);

	    	if(MM==month && DD<=day) {}
	    	    a=Integer.parseInt(age)-1 ;
	    	if(MM==month && DD>day) {
	    		a=Integer.parseInt(age)-2 ;
	    	}
	    	if(MM<month) {
	    		a=Integer.parseInt(age)-1 ;
	    	}
	    	if(MM>month) {
	    		a=Integer.parseInt(age)-2 ;
	    	}
	        

	        
		response.setContentType("text/plain;charset=UTF-8");
		//如果这里不输出json信息，前端form提交回调的success方法就不会执行
		try {
		response.getWriter().write("您出生年份为："+year+"年"+MM+"月"+DD+"日,到"+yearr+"年"+month+"月"+day+"日，您已经"+age+"岁。周岁为："+a );
		} catch (IOException e) {
		e.printStackTrace();
		}
	}
	
	
	
}
