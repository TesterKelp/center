package com.testsystem.eg;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class GetJSONValueUtils {

//    public final static Log LOG = LogFactory.getLog(GetJSONValueUtils.class);

    
//    public static Set getJsonKeySet(Set jsonKeySet, String jsonStr, String parentKey) throws Exception{          
//      JSONObject jsonObject = JSON.parseObject(jsonStr);
//      Set keySet = jsonObject.keySet();
//      Iterator keys = keySet.iterator();
//      while(keys.hasNext()){
//         
//         String key = (String) keys.next();
//         Object jsonValueObj = jsonObject.get(key);
//         int flag = IsJsonArrayOrJsonObject(jsonValueObj);
//         
//         if(flag == 1){//JSONObject，此key对应的value为JSONObject对象
//            jsonKeySet.add(key);
//            JSONObject nextLayerJsonObject = (JSONObject) jsonValueObj;
//            getJsonKeySet(jsonKeySet, nextLayerJsonObject.toJSONString(), key);
//         }else if(flag == 2){//JSONArray，此key对应的value为JSON数组对象
//            jsonKeySet.add(key);
//            JSONArray nextLayerJsonArray = (JSONArray) jsonValueObj;
//            for(int i=0; i<nextLayerJsonArray.size();i++){
//               JSONObject nextLayerJsonObject = (JSONObject) nextLayerJsonArray.get(i);
//               getJsonKeySet(jsonKeySet, nextLayerJsonObject.toJSONString(), key);
//            }
//         }else{//此key对应的值为普通对象
//            jsonKeySet.add(key);
//         }
//      }
//      return jsonKeySet;
//    }
    
    public static void main(String[] args) {
      Set jsonKeySet = new HashSet();
//      String jsonStr = "{\"a\":\"1\", \"B\":\"2\", \"c\":{\"D\":\"4\", \"e\":\"5\", \"f\":{\"G\":\"6\"}},\"h\":[{\"J\":{\"s\":\"222\"},\"k\":\"77\"},{\"n\":\"55\"}]}";
    
     String  c="{\"title\": \"新增的任务的表单信息\", \"type\": \"object\", \"properties\": {\"finishTime\": {\"type\": \"number\", \"title\": \"任务结束时间例如：1450708950086\"}, \"contactEmail\": {\"type\": \"string\", \"title\": \"联系人邮箱\"}, \"sexType\": {\"type\": \"string\", \"title\": \"招聘性别要求,FEMALE:女，MALE：男，UNKWON：男女不限\"}, \"enrollEndTime\": {\"type\": \"number\", \"title\": \"报名截止时间例如：1450708950086\"}, \"description\": {\"type\": \"string\", \"title\": \"备注\"}, \"weekday\": {\"type\": \"string\", \"title\": \"工作日期\"}, \"title\": {\"type\": \"string\", \"title\": \"任务标题\"}, \"startTime\": {\"type\": \"number\", \"title\": \"任务开始时间,例如：1450708950086\"}, \"contactTelephone\": {\"type\": \"string\", \"title\": \"联系人电话\"}, \"timeDescription\": {\"type\": \"string\", \"title\": \"工作时间描述\"}, \"paymentType\": {\"type\": \"string\", \"title\": \"支付类型 0：线上支付，1：线下支付\"}, \"addressList\": {\"items\": {\"properties\": {\"latitude\": {\"type\": \"string\", \"title\": \"纬度\"}, \"cityName\": {\"type\": \"string\", \"title\": \"城市名称\"}, \"areaName\": {\"type\": \"string\", \"title\": \"区域名称\"}, \"longitude\": {\"type\": \"string\", \"title\": \"经度\"}, \"address\": {\"type\": \"string\", \"title\": \"t工作地点\"}}, \"type\": \"object\", \"description\": \"任务地址\"}, \"type\": \"array\", \"title\": \"地址列表\"}, \"balanceUnit\": {\"type\": \"string\", \"title\": \"兼职金额单位；例如：元/小时，元/天等\"}, \"contactName\": {\"type\": \"string\", \"title\": \"联系人姓名\"}, \"content\": {\"type\": \"string\", \"title\": \"工作内容\"}, \"balance\": {\"type\": \"number\", \"title\": \"兼职金额\"}, \"headcount\": {\"type\": \"integer\", \"title\": \"招聘人数\"}, \"typeDesc\": {\"type\": \"string\", \"title\": \"任务类型描述: 只有在任务类型为其他时有效\"}, \"type\": {\"type\": \"string\", \"title\": \"任务类型；例如：传单派发，服务员等\"}, \"balanceType\": {\"type\": \"integer\", \"title\": \"结算类型；例如：完工结，日结等\"}}}";
     String  a="{\"addressList\":{\"title\":\"地址列表\",\"items\":{\"description\":\"任务地址\",\"properties\":{\"areaName\":{\"title\":\"区域名称\",\"type\":\"string\"},\"address\":{\"title\":\"t工作地点\",\"type\":\"string\"},\"cityName\":{\"title\":\"城市名称\",\"type\":\"string\"},\"longitude\":{\"title\":\"经度\",\"type\":\"string\"},\"latitude\":{\"title\":\"纬度\",\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"},\"contactEmail\":{\"title\":\"联系人邮箱\",\"type\":\"string\"},\"paymentType\":{\"title\":\"支付类型 0：线上支付，1：线下支付\",\"type\":\"string\"},\"typeDesc\":{\"title\":\"任务类型描述: 只有在任务类型为其他时有效\",\"type\":\"string\"},\"type\":{\"title\":\"任务类型；例如：传单派发，服务员等\",\"type\":\"string\"},\"sexType\":{\"title\":\"招聘性别要求,FEMALE:女，MALE：男，UNKWON：男女不限\",\"type\":\"string\"},\"enrollEndTime\":{\"title\":\"报名截止时间例如：1450708950086\",\"type\":\"number\"},\"content\":{\"title\":\"工作内容\",\"type\":\"string\"},\"startTime\":{\"title\":\"任务开始时间,例如：1450708950086\",\"type\":\"number\"},\"balance\":{\"title\":\"兼职金额\",\"type\":\"number\"},\"title\":{\"title\":\"任务标题\",\"type\":\"string\"},\"weekday\":{\"title\":\"工作日期\",\"type\":\"string\"},\"contactName\":{\"title\":\"联系人姓名\",\"type\":\"string\"},\"balanceUnit\":{\"title\":\"兼职金额单位；例如：元/小时，元/天等\",\"type\":\"string\"},\"description\":{\"title\":\"备注\",\"type\":\"string\"},\"headcount\":{\"title\":\"招聘人数\",\"type\":\"integer\"},\"finishTime\":{\"title\":\"任务结束时间例如：1450708950086\",\"type\":\"number\"},\"balanceType\":{\"title\":\"结算类型；例如：完工结，日结等\",\"type\":\"integer\"},\"contactTelephone\":{\"title\":\"联系人电话\",\"type\":\"string\"},\"timeDescription\":{\"title\":\"工作时间描述\",\"type\":\"string\"}}";
     String  b="{\"title\":\"地址列表\",\"items\":{\"description\":\"任务地址\",\"properties\":{\"areaName\":{\"title\":\"区域名称\",\"type\":\"string\"},\"address\":{\"title\":\"t工作地点\",\"type\":\"string\"},\"cityName\":{\"title\":\"城市名称\",\"type\":\"string\"},\"longitude\":{\"title\":\"经度\",\"type\":\"string\"},\"latitude\":{\"title\":\"纬度\",\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"}";
     
     System.out.println(c);
     
     JSONObject jsonObject = JSON.parseObject(c);
      Set keySet = jsonObject.keySet();
      Iterator keys = keySet.iterator();
      while(keys.hasNext()){
    	  String key = (String) keys.next();
          Object jsonValueObj = jsonObject.get(key);
          System.out.println("key"+key +"--------"+jsonValueObj.toString());
      }
      
//      try {
//         getJsonKeySet(jsonKeySet, jsonStr, "");
//      } catch (Exception e) {
//         // TODO Auto-generated catch block
//         e.printStackTrace();
//      }
//      for(String k : jsonKeySet){
//         System.out.println(k);
//      }
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
    
    
//       //这个静态方法获取的Set返回值，可以作为参数传向下一个函数
//    public static Set getJsonKeySet(String jsonStr) throws Exception{
//      Set jsonKeySet = new HashSet();
//      com.alibaba.fastjson.JSONObject jsonObject = JSON.parseObject(jsonStr);
//      Set keySet = jsonObject.keySet();
//      for(String ks : keySet){
//         jsonKeySet.add(ks);
//         if("config".equalsIgnoreCase(ks)){
//            JSONObject configJsonObject = (JSONObject) jsonObject.get(ks);
//            Set configKeySet = configJsonObject.keySet();
//            for(String cfgks : configKeySet){
//               jsonKeySet.add(cfgks);
//               if("taskitempara".equalsIgnoreCase(cfgks)){
//                  JSONObject itemparaJsonObject = (JSONObject) configJsonObject.get(cfgks);
//                  Set itemparaKeySet = itemparaJsonObject.keySet();
//                  for(String itemks : itemparaKeySet){
//                     jsonKeySet.add(itemks);
//                  }
//               }
//            }
//         }
//      }
//      return jsonKeySet;
//    }
    
    
//    public static String getJsonValueByKeyIgnoreCase(Set jsonkeySet, String key, JSONObject currentJsonObject) throws Exception{
//      String jsonValue = "";
//      for(String jsonkey : jsonkeySet){
//         if(key.equalsIgnoreCase(jsonkey)){
//            jsonValue = currentJsonObject.getString(jsonkey);
//            break;
//         }
//      }
//      return jsonValue;
//    }
    
    
//    public static String getJsonOriginalKey(Set jsonkeySet, String key) throws Exception{
//      String originalKey = "";
//      for(String jsonkey : jsonkeySet){
//         if(key.equalsIgnoreCase(jsonkey)){
//            originalKey = jsonkey;
//            break;
//         }
//      }
//      if("".equals(originalKey)){
//         originalKey = key;
//      }
//      return originalKey;
//    }
    
}
