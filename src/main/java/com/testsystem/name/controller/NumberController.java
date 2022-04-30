package com.testsystem.name.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.name.service.NumberService;
import com.testsystem.name.vo.Divin;
import com.testsystem.name.vo.Numb ;
import com.testsystem.site.service.SiteService;

@Controller
public class NumberController {

	@Autowired
	private NumberService numberService ;
	
	@Autowired
	private SiteService siteService ;
	
	@RequestMapping(value ="/name/number/{te}/index.do", method = RequestMethod.GET)
	public String FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request,@PathVariable String te) throws IOException{	

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
		
		return "/template/name/number/indexNumber_"+te;
	}
	
	@RequestMapping(value ="/name/number/index.do", method = RequestMethod.GET)
	public String FindNameBdddylikame(ModelMap map, HttpServletResponse response,
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
		
		
		
		return "/template/name/number/indexNumber";
	}
	
	@RequestMapping(value ="/name/number/luck.do", method = RequestMethod.GET)
	public String FindNameBdddsylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String  numbe =request.getParameter("number");
		String str = "love12next34csde54434java";	
		str =numbe ;
	    str = str.trim();
	    String str2 = "";
	    if (str != null && !"".equals(str)) {
	        for (int i = 0; i < str.length(); i ++) {
	            if (str.charAt(i) >= 48 && str.charAt(i) <= 57) {
	                str2 += str.charAt(i);
	            }
	        }
	    }
	    System.out.println("字符串中提取的数字为： " + str2);
	    //这个方法的缺点：只能把数字全部提取出来，不能分别提取
		String r = "";
		if(str2.length()>4){
			r = str2.substring(str2.length()-4);
		}else{
			r=str2 ;
		}
		int rint =Integer.parseInt(r);
		 System.out.println("rint=="+rint);
	    int temp = rint / 80 ;
	    System.out.println("temp=="+temp);
	    float m =   (float) rint / 80  ;
	    System.out.println("m=="+m);
	    float nu = ( m - temp ) * 80  ;
	    System.out.println("number=="+nu);
	    DecimalFormat df=new DecimalFormat("0");
	    String num =df.format(nu) ;
	    System.out.println("number=="+num);
	    Numb number = numberService.GetNumberByNum(num);
	    map.put("number", number); 
		return "/template/name/Wan";
	}
	
	
	@RequestMapping(value = "/name/number/luckly.do", method = RequestMethod.GET)
	public void SetCaseRunnileNumber(ModelMap map, HttpServletResponse response,HttpServletRequest request)
			throws IOException {
	
		String  numbe =request.getParameter("number");
		String str = "love12next34csde54434java";	
		str =numbe ;
	    str = str.trim();
	    String str2 = "";
	    if (str != null && !"".equals(str)) {
	        for (int i = 0; i < str.length(); i ++) {
	            if (str.charAt(i) >= 48 && str.charAt(i) <= 57) {
	                str2 += str.charAt(i);
	            }
	        }
	    }
	    System.out.println("字符串中提取的数字为： " + str2);
	    //这个方法的缺点：只能把数字全部提取出来，不能分别提取
		String r = "";
		if(str2.length()>4){
			r = str2.substring(str2.length()-4);
		}else{
			r=str2 ;
		}
		int rint =Integer.parseInt(r);
		 System.out.println("rint=="+rint);
	    int temp = rint / 80 ;
	    System.out.println("temp=="+temp);
	    float m =   (float) rint / 80  ;
	    System.out.println("m=="+m);
	    float nu = ( m - temp ) * 80  ;
	    System.out.println("number=="+nu);
	    DecimalFormat df=new DecimalFormat("0");
	    String num =df.format(nu) ;
	    System.out.println("number=="+num); 
	    Numb numer = numberService.GetNumberByNum(num);
		String  result="{\"numb\":\""+numbe+"\",\"title\":\""+numer.getTitle()+"\",\"jx\":\""+numer.getJx()+"\",\"content\":\""+numer.getContent()+"\"}";
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(result+"");
		response.getWriter().flush();	
	}
	
	
	
	
	
	
	
}
