package com.testsystem.wift.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

@Controller
@RequestMapping("/wift")
public class WiftJsonController {

	
	
	
	
	
	  @RequestMapping(value={"/Wift_default_load_json.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public void DelI2nterfaceByInterfaceId(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    String rs=request.getParameter("rs");
	    System.out.println("key========"+rs);
	    String  b="{\"title\":\"地址列表\",\"items\":{\"description\":\"任务地址\",\"properties\":{\"areaName\":{\"title\":\"区域名称\",\"type\":\"string\"},\"address\":{\"title\":\"t工作地点\",\"type\":\"string\"},\"cityName\":{\"title\":\"城市名称\",\"type\":\"string\"},\"longitude\":{\"title\":\"经度\",\"type\":\"string\"},\"latitude\":{\"title\":\"纬度\",\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"}";
	     String word = null ;
	    String  temp="";
	    String  html="";
	    
  if (rs.indexOf("@") == 0){
		rs = rs.substring(1, rs.length());
		// Object jsonValueObj = rs ;
		int fg = IsJsonArrayOrJsonObject(rs);
		System.out.println("fg=2 is JSONArray,now fg=" + fg);
		System.out.println("rs=======" + rs);
		JSONArray jsonArray = JSONArray.parseArray(rs);
		if (null != jsonArray) {
			jsonArray.set(0, "----------" + jsonArray.get(0));
			for (Iterator iterator = jsonArray.iterator(); iterator.hasNext();) {
				// System.out.println("sssssss====" + iterator.next());
				Object abc = iterator.next();
				int flag = IsJsonArrayOrJsonObject(abc);
				if (flag == 1) { // JSONObject，此key对应的value为JSONObject对象
					String vr = abc.toString();
					vr = vr.replaceAll("\"", "\\\"");
					System.out.println("value--------" + vr);
					html = html + "<option value='-" + vr + "'>" + vr + "</option>";
				} else if (flag == 2) {// JSONArray，此key对应的value为JSON数组对象
					String vr = abc.toString();
					System.out.println("value --------" + vr);
					html = html + "<option value='@" + vr + "'>" + vr + "</option>";
				} else {
					String vr = abc.toString();
					System.out.println("value--------" + vr);
					html = html + "<option value='" + vr + "'>" + vr + "</option>";
				}

			}
		}
	    	
	    }else if(rs.indexOf("-") == 0){
	    rs = rs.substring(1, rs.length());
	    html=  "<option value='0'>请选择参数</option>";
	    JSONObject jsonObject = JSON.parseObject(rs);
	      Set keySet = jsonObject.keySet();
	      Iterator keys = keySet.iterator();
	      while(keys.hasNext()){
	    	  String key = (String) keys.next();
	          Object jsonValueObj = jsonObject.get(key);
	          int flag = IsJsonArrayOrJsonObject(jsonValueObj);
	          if(flag == 1){ //JSONObject，此key对应的value为JSONObject对象
	        	  String  vr =jsonValueObj.toString() ;
	        	  vr = vr.replaceAll("\"", "\\\""); 
	        	  System.out.println("key="+key +"--------"+vr);
	        	  html= html+ "<option value='-"+vr+"'>"+key+"</option>"; 
	          }else if(flag == 2){//JSONArray，此key对应的value为JSON数组对象
	        	  String  vr =jsonValueObj.toString() ;
		          System.out.println("key"+key +"--------"+vr);
		        	  html= html+ "<option value='@"+vr+"'>"+key+"</option>"; 
	          }else{
	        	  String  vr =jsonValueObj.toString() ;
		          System.out.println("key"+key +"--------"+vr);
		        	  html= html+ "<option value='"+vr+"'>"+key+"</option>"; 
	          }
	      }
	      
	      
	    }else{
	    	html = html + "<option value='0'>终极节点</option>";
	    }   
	    response.getWriter().write(html);
	    response.getWriter().flush();
	  } 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	  @RequestMapping(value={"/Wift_Json.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public void DelInterfaceByInterfaceId(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    String rs="";
	    String  e="{name:\"1234567\",ooo:{first:\"123456\",second:\"jjjjjj\"},auth:\"1234567\",obj:{first:\"123456\",second:\"jjjjjj\"},title:\"谢谢\",obh:{first:\"123456\",second:\"jjjjjj\"},arr:['中国','韩国','美国','4','5','6','9'],da:[{\"da1\":\"da11\"},{\"da2\":\"da22\"},'55']}" ;
	    String  d="{name:\"1234567\",ooo:{first:\"123456\",second:\"jjjjjj\"},auth:\"1234567\",obj:{first:\"123456\",second:\"jjjjjj\"},title:\"谢谢\",obh:{first:\"123456\",second:\"jjjjjj\"},arr:['中国','韩国','美国','4','5','6','9']}" ;
	    String  c="{\"title\": \"新增的任务的表单信息\", \"type\": \"object\", \"properties\": {\"finishTime\": {\"type\": \"number\", \"title\": \"任务结束时间例如：1450708950086\"}, \"contactEmail\": {\"type\": \"string\", \"title\": \"联系人邮箱\"}, \"sexType\": {\"type\": \"string\", \"title\": \"招聘性别要求,FEMALE:女，MALE：男，UNKWON：男女不限\"}, \"enrollEndTime\": {\"type\": \"number\", \"title\": \"报名截止时间例如：1450708950086\"}, \"description\": {\"type\": \"string\", \"title\": \"备注\"}, \"weekday\": {\"type\": \"string\", \"title\": \"工作日期\"}, \"title\": {\"type\": \"string\", \"title\": \"任务标题\"}, \"startTime\": {\"type\": \"number\", \"title\": \"任务开始时间,例如：1450708950086\"}, \"contactTelephone\": {\"type\": \"string\", \"title\": \"联系人电话\"}, \"timeDescription\": {\"type\": \"string\", \"title\": \"工作时间描述\"}, \"paymentType\": {\"type\": \"string\", \"title\": \"支付类型 0：线上支付，1：线下支付\"}, \"addressList\": {\"items\": {\"properties\": {\"latitude\": {\"type\": \"string\", \"title\": \"纬度\"}, \"cityName\": {\"type\": \"string\", \"title\": \"城市名称\"}, \"areaName\": {\"type\": \"string\", \"title\": \"区域名称\"}, \"longitude\": {\"type\": \"string\", \"title\": \"经度\"}, \"address\": {\"type\": \"string\", \"title\": \"t工作地点\"}}, \"type\": \"object\", \"description\": \"任务地址\"}, \"type\": \"array\", \"title\": \"地址列表\"}, \"balanceUnit\": {\"type\": \"string\", \"title\": \"兼职金额单位；例如：元/小时，元/天等\"}, \"contactName\": {\"type\": \"string\", \"title\": \"联系人姓名\"}, \"content\": {\"type\": \"string\", \"title\": \"工作内容\"}, \"balance\": {\"type\": \"number\", \"title\": \"兼职金额\"}, \"headcount\": {\"type\": \"integer\", \"title\": \"招聘人数\"}, \"typeDesc\": {\"type\": \"string\", \"title\": \"任务类型描述: 只有在任务类型为其他时有效\"}, \"type\": {\"type\": \"string\", \"title\": \"任务类型；例如：传单派发，服务员等\"}, \"balanceType\": {\"type\": \"integer\", \"title\": \"结算类型；例如：完工结，日结等\"}}}";
	    String  a="{\"addressList\":{\"title\":\"地址列表\",\"items\":{\"description\":\"任务地址\",\"properties\":{\"areaName\":{\"title\":\"区域名称\",\"type\":\"string\"},\"address\":{\"title\":\"t工作地点\",\"type\":\"string\"},\"cityName\":{\"title\":\"城市名称\",\"type\":\"string\"},\"longitude\":{\"title\":\"经度\",\"type\":\"string\"},\"latitude\":{\"title\":\"纬度\",\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"},\"contactEmail\":{\"title\":\"联系人邮箱\",\"type\":\"string\"},\"paymentType\":{\"title\":\"支付类型 0：线上支付，1：线下支付\",\"type\":\"string\"},\"typeDesc\":{\"title\":\"任务类型描述: 只有在任务类型为其他时有效\",\"type\":\"string\"},\"type\":{\"title\":\"任务类型；例如：传单派发，服务员等\",\"type\":\"string\"},\"sexType\":{\"title\":\"招聘性别要求,FEMALE:女，MALE：男，UNKWON：男女不限\",\"type\":\"string\"},\"enrollEndTime\":{\"title\":\"报名截止时间例如：1450708950086\",\"type\":\"number\"},\"content\":{\"title\":\"工作内容\",\"type\":\"string\"},\"startTime\":{\"title\":\"任务开始时间,例如：1450708950086\",\"type\":\"number\"},\"balance\":{\"title\":\"兼职金额\",\"type\":\"number\"},\"title\":{\"title\":\"任务标题\",\"type\":\"string\"},\"weekday\":{\"title\":\"工作日期\",\"type\":\"string\"},\"contactName\":{\"title\":\"联系人姓名\",\"type\":\"string\"},\"balanceUnit\":{\"title\":\"兼职金额单位；例如：元/小时，元/天等\",\"type\":\"string\"},\"description\":{\"title\":\"备注\",\"type\":\"string\"},\"headcount\":{\"title\":\"招聘人数\",\"type\":\"integer\"},\"finishTime\":{\"title\":\"任务结束时间例如：1450708950086\",\"type\":\"number\"},\"balanceType\":{\"title\":\"结算类型；例如：完工结，日结等\",\"type\":\"integer\"},\"contactTelephone\":{\"title\":\"联系人电话\",\"type\":\"string\"},\"timeDescription\":{\"title\":\"工作时间描述\",\"type\":\"string\"}}";
	    String  b="{\"title\":\"地址列表\",\"items\":{\"description\":\"任务地址\",\"properties\":{\"areaName\":{\"title\":\"区域名称\",\"type\":\"string\"},\"address\":{\"title\":\"t工作地点\",\"type\":\"string\"},\"cityName\":{\"title\":\"城市名称\",\"type\":\"string\"},\"longitude\":{\"title\":\"经度\",\"type\":\"string\"},\"latitude\":{\"title\":\"纬度\",\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"}";
	     String word = null ;
	    String  temp="";
	    String  html=  "";
	        JSONObject jsonObject = JSON.parseObject(e);
		      Set keySet = jsonObject.keySet();
		      Iterator keys = keySet.iterator();
		      while(keys.hasNext()){
		    	  String key = (String) keys.next();
		          Object jsonValueObj = jsonObject.get(key);
		          int flag = IsJsonArrayOrJsonObject(jsonValueObj);
		          if(flag == 1){ //JSONObject，此key对应的value为JSONObject对象
		        	  String  vr =jsonValueObj.toString() ;
		        	  vr = vr.replaceAll("\"", "\\\""); 
		        	  System.out.println("key="+key +"--------"+vr);
		        	  html= html+ "<option value='-"+vr+"'>"+key+"</option>"; 
		          }else if(flag == 2){//JSONArray，此key对应的value为JSON数组对象
		        	  String  vr =jsonValueObj.toString() ;
			          System.out.println("key"+key +"--------"+vr);
			        	  html= html+ "<option value='@"+vr+"'>"+key+"</option>"; 
		          }else{
		        	  String  vr =jsonValueObj.toString() ;
			          System.out.println("key"+key +"--------"+vr);
			        	  html= html+ "<option value='"+vr+"'>"+key+"</option>"; 
		          }
		      }
	    response.getWriter().write(html);
	    response.getWriter().flush();
	  } 
	
	
	
	  @RequestMapping(value={"/Wift_Json_load.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public void DelInterfaceByIdnterfaceId(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    String rs=request.getParameter("Name");
	    String  jsonStr="{\"title\": \"新增的任务的表单信息\", \"type\": \"object\", \"properties\": {\"finishTime\": {\"type\": \"number\", \"title\": \"任务结束时间例如：1450708950086\"}, \"contactEmail\": {\"type\": \"string\", \"title\": \"联系人邮箱\"}, \"sexType\": {\"type\": \"string\", \"title\": \"招聘性别要求,FEMALE:女，MALE：男，UNKWON：男女不限\"}, \"enrollEndTime\": {\"type\": \"number\", \"title\": \"报名截止时间例如：1450708950086\"}, \"description\": {\"type\": \"string\", \"title\": \"备注\"}, \"weekday\": {\"type\": \"string\", \"title\": \"工作日期\"}, \"title\": {\"type\": \"string\", \"title\": \"任务标题\"}, \"startTime\": {\"type\": \"number\", \"title\": \"任务开始时间,例如：1450708950086\"}, \"contactTelephone\": {\"type\": \"string\", \"title\": \"联系人电话\"}, \"timeDescription\": {\"type\": \"string\", \"title\": \"工作时间描述\"}, \"paymentType\": {\"type\": \"string\", \"title\": \"支付类型 0：线上支付，1：线下支付\"}, \"addressList\": {\"items\": {\"properties\": {\"latitude\": {\"type\": \"string\", \"title\": \"纬度\"}, \"cityName\": {\"type\": \"string\", \"title\": \"城市名称\"}, \"areaName\": {\"type\": \"string\", \"title\": \"区域名称\"}, \"longitude\": {\"type\": \"string\", \"title\": \"经度\"}, \"address\": {\"type\": \"string\", \"title\": \"t工作地点\"}}, \"type\": \"object\", \"description\": \"任务地址\"}, \"type\": \"array\", \"title\": \"地址列表\"}, \"balanceUnit\": {\"type\": \"string\", \"title\": \"兼职金额单位；例如：元/小时，元/天等\"}, \"contactName\": {\"type\": \"string\", \"title\": \"联系人姓名\"}, \"content\": {\"type\": \"string\", \"title\": \"工作内容\"}, \"balance\": {\"type\": \"number\", \"title\": \"兼职金额\"}, \"headcount\": {\"type\": \"integer\", \"title\": \"招聘人数\"}, \"typeDesc\": {\"type\": \"string\", \"title\": \"任务类型描述: 只有在任务类型为其他时有效\"}, \"type\": {\"type\": \"string\", \"title\": \"任务类型；例如：传单派发，服务员等\"}, \"balanceType\": {\"type\": \"integer\", \"title\": \"结算类型；例如：完工结，日结等\"}}}";
	    String  a="{\"addressList\":{\"title\":\"地址列表\",\"items\":{\"description\":\"任务地址\",\"properties\":{\"areaName\":{\"title\":\"区域名称\",\"type\":\"string\"},\"address\":{\"title\":\"t工作地点\",\"type\":\"string\"},\"cityName\":{\"title\":\"城市名称\",\"type\":\"string\"},\"longitude\":{\"title\":\"经度\",\"type\":\"string\"},\"latitude\":{\"title\":\"纬度\",\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"},\"contactEmail\":{\"title\":\"联系人邮箱\",\"type\":\"string\"},\"paymentType\":{\"title\":\"支付类型 0：线上支付，1：线下支付\",\"type\":\"string\"},\"typeDesc\":{\"title\":\"任务类型描述: 只有在任务类型为其他时有效\",\"type\":\"string\"},\"type\":{\"title\":\"任务类型；例如：传单派发，服务员等\",\"type\":\"string\"},\"sexType\":{\"title\":\"招聘性别要求,FEMALE:女，MALE：男，UNKWON：男女不限\",\"type\":\"string\"},\"enrollEndTime\":{\"title\":\"报名截止时间例如：1450708950086\",\"type\":\"number\"},\"content\":{\"title\":\"工作内容\",\"type\":\"string\"},\"startTime\":{\"title\":\"任务开始时间,例如：1450708950086\",\"type\":\"number\"},\"balance\":{\"title\":\"兼职金额\",\"type\":\"number\"},\"title\":{\"title\":\"任务标题\",\"type\":\"string\"},\"weekday\":{\"title\":\"工作日期\",\"type\":\"string\"},\"contactName\":{\"title\":\"联系人姓名\",\"type\":\"string\"},\"balanceUnit\":{\"title\":\"兼职金额单位；例如：元/小时，元/天等\",\"type\":\"string\"},\"description\":{\"title\":\"备注\",\"type\":\"string\"},\"headcount\":{\"title\":\"招聘人数\",\"type\":\"integer\"},\"finishTime\":{\"title\":\"任务结束时间例如：1450708950086\",\"type\":\"number\"},\"balanceType\":{\"title\":\"结算类型；例如：完工结，日结等\",\"type\":\"integer\"},\"contactTelephone\":{\"title\":\"联系人电话\",\"type\":\"string\"},\"timeDescription\":{\"title\":\"工作时间描述\",\"type\":\"string\"}}";
	    String  b="{\"title\":\"地址列表\",\"items\":{\"description\":\"任务地址\",\"properties\":{\"areaName\":{\"title\":\"区域名称\",\"type\":\"string\"},\"address\":{\"title\":\"t工作地点\",\"type\":\"string\"},\"cityName\":{\"title\":\"城市名称\",\"type\":\"string\"},\"longitude\":{\"title\":\"经度\",\"type\":\"string\"},\"latitude\":{\"title\":\"纬度\",\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"}";

	    String  html=  "";
	    
	    
		if (rs.indexOf("@") == 0) {
			rs = rs.substring(1, rs.length());
			// Object jsonValueObj = rs ;
			int fg = IsJsonArrayOrJsonObject(rs);
			System.out.println("fg=2 is JSONArray,now fg=" + fg);
			System.out.println("rs=======" + rs);
			JSONArray jsonArray = JSONArray.parseArray(rs);

			if (null != jsonArray) {
				jsonArray.set(0, "----------" + jsonArray.get(0));
				for (Iterator iterator = jsonArray.iterator(); iterator.hasNext();) {
					// System.out.println("sssssss====" + iterator.next());

					Object abc = iterator.next();
					int flag = IsJsonArrayOrJsonObject(abc);

					if (flag == 1) { // JSONObject，此key对应的value为JSONObject对象
						String vr = abc.toString();
						vr = vr.replaceAll("\"", "\\\"");
						System.out.println("value--------" + vr);
						html = html + "<option value='-" + vr + "'>" + vr + "</option>";

					} else if (flag == 2) {// JSONArray，此key对应的value为JSON数组对象

						String vr = abc.toString();
						System.out.println("value --------" + vr);
						html = html + "<option value='@" + vr + "'>" + vr + "</option>";

					} else {
						String vr = abc.toString();
						System.out.println("value--------" + vr);
						html = html + "<option value='" + vr + "'>" + vr + "</option>";
					}

				}
			}
		} else if (rs.indexOf("-") == 0) {

			rs = rs.substring(1, rs.length());
			JSONObject jsonObject = JSON.parseObject(rs);
			Set keySet = jsonObject.keySet();
			Iterator keys = keySet.iterator();
			while (keys.hasNext()) {
				String key = (String) keys.next();
				Object jsonValueObj = jsonObject.get(key);

				int flag = IsJsonArrayOrJsonObject(jsonValueObj);
				if (flag == 1) { // JSONObject，此key对应的value为JSONObject对象
					String vr = jsonValueObj.toString();
					vr = vr.replaceAll("\"", "\\\"");
					System.out.println("key=" + key + "--------" + vr);
					html = html + "<option value='-" + vr + "'>" + key + "</option>";

				} else if (flag == 2) {// JSONArray，此key对应的value为JSON数组对象

					String vr = jsonValueObj.toString();
					System.out.println("key" + key + "--------" + vr);
					html = html + "<option value='@" + vr + "'>" + key + "</option>";

				} else {
					String vr = jsonValueObj.toString();
					System.out.println("key" + key + "--------" + vr);
					html = html + "<option value='" + vr + "'>" + key + "</option>";
				}

			}

		} else {
			       html = html + "<option value='0'>终极节点</option>";
		}
	    response.getWriter().write(html);
	    response.getWriter().flush();
	  } 
	
	
	  
	  
	   public static int IsJsonArrayOrJsonObject(Object obj){
		      try{
		         JSONObject nextLayerJsonObject = (JSONObject) obj;
		         return 1;
		      }catch(Exception e){// 抛错 说明JSON字符根本就不是JSON对象
		         try{
		            JSONArray nextLayerJsonArray = (JSONArray) obj;
		            return 2;
		         }catch(Exception e2){// 抛错 说明JSON字符根本就不是JSON数组
		            return 0;
		         }
		      }
		    }
		    
	  
	  
	  
	  
	  
	  
	  
	  
	
}
