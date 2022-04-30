package com.testsystem.name.tools;

import java.util.Calendar;

public class ShengXiao {

	
	
	static Calendar calendar = Calendar.getInstance();
	
	public static   String getYear(Integer year){
		if(year<1900){
			return "未知";
		}
		Integer start=1900;
		String [] years=new String[]{
				"鼠","牛","虎","兔",
				"龙","蛇","马","羊",
				"猴","鸡","狗","猪"
				};
		return years[(year-start)%years.length];
	}
	
	public static  String getAge(Integer year){
		int TodaytYear = calendar.get(Calendar.YEAR);
		return (TodaytYear-year+1)+""; 

	}
	
	 
	
	
}
