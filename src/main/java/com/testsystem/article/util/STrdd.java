package com.testsystem.article.util;

import java.util.HashMap;
import java.util.Map;

public class STrdd {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String str="<a href='/blog/153.do'>身在江湖</a>分享者：<a href='/blog/153.do'>身在江湖</a><Br><a href='/blog/153.do'>身在江湖博客 </a><Br><a href='/jianghu/portal.do'>来呀乐一乐</a>_<a href='/jianghu//index.do'></a>_<a href='/jianghu//qiwenguaishi/index.do'>奇闻怪事</a>";
		

		String ty= blogPage(str);
		
		 System.out.println(ty)	 ;
		Map<String ,String> mp =new HashMap<String ,String>();
		mp = blogDate(str) ;
		str = ty.replace(".do", ".html");
		 System.out.println(str)	 ;
	    System.out.println(blogPage(mp ,str))	 ;
		
		
		
		
	}

	
	
	
	
	//将页面中的相对路径替换成绝对路径，以确保页面资源正常访问
	private static String blogPage(String page){
		Map<String ,String> mp =new HashMap<String ,String>();
		String k="@@@@@";
		int n=0;
		while(true){
			
			if(page.indexOf("blog/")<0){
				break ;
			}else{
				int a =page.indexOf("blog/");
				String temp =page.substring(a, page.length()) ;
				int b =page.indexOf(".do");
				String te= page.substring(a, b+3);
				String t=k+n ;
				mp.put(te, t);
				page =page.replaceFirst(te, t);	
				n++ ;
			}
		}
		return page;	
	}
	
	private static Map<String ,String> blogDate(String page){
		Map<String ,String> mp =new HashMap<String ,String>();
		String k="@@@@@";
		int n=0;
		while(true){
			
			if(page.indexOf("blog/")<0){
				break ;
			}else{
				int a =page.indexOf("blog/");
				String temp =page.substring(a, page.length()) ;
				int b =page.indexOf(".do");
				String te= page.substring(a, b+3);
				String t=k+n ;
				mp.put(t, te);
				page =page.replaceFirst(te, t);	
				n++ ;
			}
		}
		return mp;	
	}


	
	
	
	private static String blogPage(Map<String ,String> m ,String str){
		for(Map.Entry<String, String> entry : m.entrySet()){
		    String mapKey = entry.getKey();
		    String mapValue = entry.getValue();
		    str =str.replace(mapKey, mapValue);	
		  //  System.out.println(mapKey+":"+mapValue);
		}	
		return str;	
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
