package com.testsystem.eg;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
 
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
 
/**
 * Json工具类
 * 钰丰 2018/2/5
 * 
 * 参考  https://blog.csdn.net/xianzhixianzhixian/article/details/79400594
 */
public class JsonUtil {
 
    public static List<String> list=new LinkedList<String>();
 
    /**
     * 递归读取所有的key，某些限制可以自己除去，核心部分
     * @param jsonObject
     */
    public static void getAllKey(JSONObject jsonObject){
        Iterator<String> keys=jsonObject.keys();
        while(keys.hasNext()){
            String key=keys.next();
            System.out.println(key  +"==="+jsonObject.get(key).toString());
            
            if(isJsonObject(jsonObject.get(key).toString())){
                if(!key.equals("properties") && !isArrayOrObject(jsonObject.get(key).toString())) {
//                    System.out.println(key);
//                    System.out.println(jsonObject.get(key).toString());
                }
//                System.out.println(key  +"==="+jsonObject.get(key).toString());
                JSONObject innerObject=JSONObject.fromObject(jsonObject.get(key));
                getAllKey(innerObject);
            }
        }
    }
 
    /**
     * 从未知的JsonArray中获取LinkedList
     * @return
     */
    public static LinkedList<LinkedList<String>> getLinkedListFromJsonArray(String jsonArrayStr){
 
        LinkedList<LinkedList<String>> linkedList=null;
        if(jsonArrayStr!=null && jsonArrayStr.length()>0){
            JSONArray jsonArray=JSONArray.fromObject(jsonArrayStr);
            linkedList=new LinkedList<LinkedList<String>>();
            for(int i=0;i<jsonArray.size();i++){
                JSONArray array=JSONArray.fromObject(jsonArray.get(i));
                LinkedList<String> internalList=new LinkedList<String>();
                for(int j=0;j<array.size();j++){
                    internalList.add(array.get(j).toString());
                }
                linkedList.add(internalList);
            }
        }
        return linkedList;
    }
 
    /**
     * 判断某个Json字符串是否为一个标准的Json字符串
     * @param jsonString
     * @return
     */
    public static Boolean isJsonObject(String jsonString){
        try{
            JSONObject.fromObject(jsonString);
            return true;
        }catch (Exception e){
            return false;
        }
    }
 
    /**
     * 判断某个Json字符串是否为一个Json数组
     * @param jsonObject
     * @return
     */
    public static Boolean isArrayOrObject(String jsonObject){
        String type=JSONObject.fromObject(jsonObject).get("type").toString();
        if(type.equals("object") || type.equals("array")){
            return true;
        }else{
            return false;
        }
    }
}
 



/*
给getAllKey使用的数据
{"title": "新增的任务的表单信息", "type": "object", "properties": {"finishTime": {"type": "number", "title": "任务结束时间例如：1450708950086"}, "contactEmail": {"type": "string", "title": "联系人邮箱"}, "sexType": {"type": "string", "title": "招聘性别要求,FEMALE:女，MALE：男，UNKWON：男女不限"}, "enrollEndTime": {"type": "number", "title": "报名截止时间例如：1450708950086"}, "description": {"type": "string", "title": "备注"}, "weekday": {"type": "string", "title": "工作日期"}, "title": {"type": "string", "title": "任务标题"}, "startTime": {"type": "number", "title": "任务开始时间,例如：1450708950086"}, "contactTelephone": {"type": "string", "title": "联系人电话"}, "timeDescription": {"type": "string", "title": "工作时间描述"}, "paymentType": {"type": "string", "title": "支付类型 0：线上支付，1：线下支付"}, "addressList": {"items": {"properties": {"latitude": {"type": "string", "title": "纬度"}, "cityName": {"type": "string", "title": "城市名称"}, "areaName": {"type": "string", "title": "区域名称"}, "longitude": {"type": "string", "title": "经度"}, "address": {"type": "string", "title": "t工作地点"}}, "type": "object", "description": "任务地址"}, "type": "array", "title": "地址列表"}, "balanceUnit": {"type": "string", "title": "兼职金额单位；例如：元/小时，元/天等"}, "contactName": {"type": "string", "title": "联系人姓名"}, "content": {"type": "string", "title": "工作内容"}, "balance": {"type": "number", "title": "兼职金额"}, "headcount": {"type": "integer", "title": "招聘人数"}, "typeDesc": {"type": "string", "title": "任务类型描述: 只有在任务类型为其他时有效"}, "type": {"type": "string", "title": "任务类型；例如：传单派发，服务员等"}, "balanceType": {"type": "integer", "title": "结算类型；例如：完工结，日结等"}}}
{"type": "object", "properties": {"arg0": {"type": "string", "description": "", "title": ""}, "arg1": {"title": "", "type": "integer", "description": "", "format": "int32"}, "arg2": {"title": "", "type": "integer", "description": "", "format": "int64"}}}
{"type": "object", "properties": {"arg0": {"type": "string", "description": "", "title": ""}, "arg1": {"title": "", "type": "integer", "description": "", "format": "int32"}, "arg2": {"title": "", "type": "integer", "description": "", "format": "int64"}}}
{"items": {"type": "string"}, "type": "array"}
{"type": "object", "properties": {}}
*/ 

