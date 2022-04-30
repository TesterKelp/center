package com.testsystem.name.test;

import org.testng.annotations.Test;

public class Testd {
	
	
	@Test
	public void Testdd() {

		for (int j = 1920; j < 1922; j++) {
			int n = j;
			String shengxiao = getYear(n);
			System.out.println("属" + shengxiao + "," + n + "年出生年龄字典");
			int age = 1;
			for (int i = j; i < n + 100; i++) {
				System.out.println("属" + shengxiao + n + "出生年" + i + "年多少岁 " 
			+ "属" + shengxiao + n + "出生年" + i + "年多大  "+ age + "岁");
				age++;
			}
		}

	}
	
	
	public String getYear(Integer year){
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

	
	
	

}
