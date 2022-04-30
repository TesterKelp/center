package com.testsystem.eg;



import org.testng.annotations.Test;

import net.sf.json.JSONObject;

public class R {

	
	@Test
	public  void  sdf(){
		
//		https://www.oschina.net/question/2668616_2198901?sort=default&p=1
		JSONObject jsonObject=JSONObject.fromObject("{\"title\": \"新增的任务的表单信息\", \"type\": \"object\", \"properties\": {\"finishTime\": {\"type\": \"number\", \"title\": \"任务结束时间例如：1450708950086\"}, \"contactEmail\": {\"type\": \"string\", \"title\": \"联系人邮箱\"}, \"sexType\": {\"type\": \"string\", \"title\": \"招聘性别要求,FEMALE:女，MALE：男，UNKWON：男女不限\"}, \"enrollEndTime\": {\"type\": \"number\", \"title\": \"报名截止时间例如：1450708950086\"}, \"description\": {\"type\": \"string\", \"title\": \"备注\"}, \"weekday\": {\"type\": \"string\", \"title\": \"工作日期\"}, \"title\": {\"type\": \"string\", \"title\": \"任务标题\"}, \"startTime\": {\"type\": \"number\", \"title\": \"任务开始时间,例如：1450708950086\"}, \"contactTelephone\": {\"type\": \"string\", \"title\": \"联系人电话\"}, \"timeDescription\": {\"type\": \"string\", \"title\": \"工作时间描述\"}, \"paymentType\": {\"type\": \"string\", \"title\": \"支付类型 0：线上支付，1：线下支付\"}, \"addressList\": {\"items\": {\"properties\": {\"latitude\": {\"type\": \"string\", \"title\": \"纬度\"}, \"cityName\": {\"type\": \"string\", \"title\": \"城市名称\"}, \"areaName\": {\"type\": \"string\", \"title\": \"区域名称\"}, \"longitude\": {\"type\": \"string\", \"title\": \"经度\"}, \"address\": {\"type\": \"string\", \"title\": \"t工作地点\"}}, \"type\": \"object\", \"description\": \"任务地址\"}, \"type\": \"array\", \"title\": \"地址列表\"}, \"balanceUnit\": {\"type\": \"string\", \"title\": \"兼职金额单位；例如：元/小时，元/天等\"}, \"contactName\": {\"type\": \"string\", \"title\": \"联系人姓名\"}, \"content\": {\"type\": \"string\", \"title\": \"工作内容\"}, \"balance\": {\"type\": \"number\", \"title\": \"兼职金额\"}, \"headcount\": {\"type\": \"integer\", \"title\": \"招聘人数\"}, \"typeDesc\": {\"type\": \"string\", \"title\": \"任务类型描述: 只有在任务类型为其他时有效\"}, \"type\": {\"type\": \"string\", \"title\": \"任务类型；例如：传单派发，服务员等\"}, \"balanceType\": {\"type\": \"integer\", \"title\": \"结算类型；例如：完工结，日结等\"}}}");
		 System.out.println(jsonObject);
		
		JsonUtil.getAllKey(jsonObject);

	}
	
	
	
	
	
	
	
	
}
