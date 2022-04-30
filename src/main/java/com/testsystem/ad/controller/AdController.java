package com.testsystem.ad.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.helper.JsonAndString;

@Controller
public class AdController {

	
	@RequestMapping(value ="/ad.do", method = RequestMethod.GET)
	public void AddC(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
	
        URL url;
        int responsecode;
        HttpURLConnection urlConnection;
        BufferedReader reader;
        String line = "";
        String c="";
        try{
            //生成一个URL对象，要获取源代码的网页地址为：http://www.sina.com.cn
            url=new URL("http://whois.pconline.com.cn/jsAlert.jsp");
            //打开URL
            urlConnection = (HttpURLConnection)url.openConnection();
            //获取服务器响应代码
            responsecode=urlConnection.getResponseCode();
            if(responsecode==200){
                //得到输入流，即获得了网页的内容
                reader=new BufferedReader(new InputStreamReader(urlConnection.getInputStream(),"GBK"));
                while((line=reader.readLine())!=null){
                	c += line ;
                    System.out.println(line);
                }
            }
            else{
                System.out.println("获取不到网页的源码，服务器响应代码为："+responsecode);
            }
        }
        catch(Exception e){
            System.out.println("获取不到网页的源码,出现异常："+e);
        }
        System.out.println("line"+line);
        System.out.println("li"+c);
        if(c.contains("北京")){
        	System.out.println("包含北京");
        }else if(c.contains("上海")){
        	
        }else if(c.contains("天津")){
        	
        }else if(c.contains("重庆")){
        	
        }else if(c.contains("四川")){
        	
        }else if(c.contains("湖北")){
        	
        }else if(c.contains("浙江")){
        	
        }else if(c.contains("安徽")){
        	
        }else if(c.contains("江西")){
        	
        }else if(c.contains("陕西")){
        	
        }else if(c.contains("黑龙江")){
        	
        }else if(c.contains("江苏")){
        	
        }else if(c.contains("福建")){
        	
        }else if(c.contains("辽宁")){
        	
        }else if(c.contains("湖南")){
        	
        }else if(c.contains("广东")){
        	
        }
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
	
	public String GetProvince(String c){
		if(c.contains("北京")){System.out.println("包含北京");}
		else if(c.contains("上海")){ }
		else if(c.contains("天津")){ }
		else if(c.contains("重庆")){	
        }else if(c.contains("四川")){	
        }else if(c.contains("湖北")){
        }else if(c.contains("浙江")){
        }else if(c.contains("安徽")){	
        }else if(c.contains("江西")){
        }else if(c.contains("陕西")){
        }else if(c.contains("黑龙江")){
        }else if(c.contains("江苏")){
        }else if(c.contains("湖南")){
        }else if(c.contains("广东")){
        }
		return c;	
	}

	
	
	
	
	
	
}
