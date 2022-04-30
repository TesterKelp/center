package com.testsystem.eg;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


import javax.naming.spi.DirStateFactory.Result;


import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 * 复杂JSON解析工具类
 * @author jzhu
 * 参考  https://blog.csdn.net/zhuzj12345/article/details/70806542
 */
public class JsonTools {
//@JsonSerialize(include=JsonSerialize.Inclusion.NON_NULL) 类头部注解，空不生成json节点
private static String jsonStr = "{\"api\":\"2.1\",\"message\":[\"产品\",\"tokken\"],\"request\":{\"ptype\":\"JK\",\"tokken\":\"A#daDSFkiwi239sdls#dsd\"},\"response\":{\"status\":{\"statusCode\":\"500\",\"statusMessage\":[\"产品类型错误\",\"tokken失效\"]},\"page\":{\"pageSize\":\"100\",\"pageIndex\":\"1\"},\"data\":{\"ptitle\":\"all product lists\",\"sDate\":\"2014-12-01\",\"eDate\":\"2016-12-01\",\"productList\":[{\"pid\":\"RA001\",\"pname\":\"产品1\"},{\"pid\":\"RA002\",\"pname\":\"产品2\"}]}},\"args\":[{\"tit\":\"RA001\",\"val\":\"产品1\"},{\"tit\":\"RA002\",\"val\":\"产品2\"}]}";
private static ObjectMapper mapper = new ObjectMapper();
private static final Logger logger = LoggerFactory.getLogger(JsonTools.class);

//private static Map<Object,Object> result = new HashMap<Object,Object>();

public static void main(String[] args) throws Exception {
System.out.println(jsonStr);
JsonValidator jv = new JsonValidator();
if(jv.validate(jsonStr)){

//测试通过json获取Object对象
//Object obj = getObjectByJson(jsonStr,"response.data.ptitle",TypeEnum.string); //层级递归String
//System.out.println("API:"+obj.toString());

//Object obj = getObjectByJson(jsonStr,"response.page",TypeEnum.map);  //层级递归Map
//System.out.println("API:"+obj.toString()+((Map)obj).get("pageSize"));

//Object obj = getObjectByJson(jsonStr,"response.status.statusMessage",TypeEnum.arrayList); //层级递归ArrayList
//System.out.println("API:"+obj.toString()+((List)obj).get(0));

//Object obj = getObjectByJson(jsonStr,"response.data.productList",TypeEnum.arrayMap);   //层级递归ArrayMap 
//System.out.println("API:"+obj.toString()+((List<Map>)obj).get(1).get("pid"));


//测试Objectz转json
/*
Map mapPars = new HashMap();
mapPars.put("agentCode", "SH0001");
mapPars.put("date", "2014-01-10");
mapPars.put("url", "http://www.map.com/maps.jsp?tag=2");

Map mapArgs = new HashMap();
mapArgs.put("query", mapPars);


Map maps = new HashMap();
maps.put("request", mapArgs);
maps.put("date", "2014-10-10");

System.out.println(getObjectByJson(maps));
*/

//测试json层级递归显示效果
//Map maps = mapper.readValue(jsonStr, Map.class);
//     viewJsonTree(maps);
}else{
System.out.println("JSON数据格式错误，请核查。");
}
}


/** 复杂嵌套Map转Json  */
public static String getObjectByJson(Object obj){
String str = "";
try {
str = mapper.writeValueAsString(obj);
} catch (Exception e) {
logger.error(e.getMessage());
}
return str;
}

/** 复杂嵌套Json层级展示  */
public static Map<Object,Object> viewJsonTree(Object m,Map<Object,Object> result){
if(null != m){
try {
Map mp = null;
List ls = null;
if(m instanceof Map || m instanceof LinkedHashMap){
mp = (LinkedHashMap)m;
for(Iterator ite = mp.entrySet().iterator(); ite.hasNext();){
Map.Entry e = (Map.Entry) ite.next();


if(e.getValue() instanceof String){
result.put(e.getKey(), e.getValue());
System.out.println("[String]"+e.getKey()+" | " + e.getValue());
}else if(e.getValue() instanceof LinkedHashMap){
System.out.println("{Map}"+ e.getKey()+" | "+e.getValue());
viewJsonTree((LinkedHashMap)e.getValue(),result);
}else if(e.getValue() instanceof ArrayList){
System.out.println("[Array]"+ e.getKey()+" | "+e.getValue());
viewJsonTree((ArrayList)e.getValue(),result);
}
}
}
if(m instanceof List || m instanceof ArrayList){
ls = (ArrayList)m;
for(int i=0;i<ls.size();i++){
if(ls.get(i) instanceof LinkedHashMap){
viewJsonTree((LinkedHashMap)ls.get(i),result);
}else if(ls.get(i) instanceof ArrayList){
viewJsonTree((ArrayList)ls.get(i),result);
}
}
}
System.out.println();
} catch (Exception e) {
logger.error(e.getMessage());
}
}
return result;
}


private int i = 0;
/** 复杂嵌套Json获取Object数据  */
public Object getObjectByJson(String jsonStr,String argsPath,TypeEnum argsType){
if(argsPath == null || argsPath.equals("") || argsType == null){
System.out.println("over...");
return null;
}

Object obj = null;
try {
Map maps = mapper.readValue(jsonStr, Map.class);
//多层获取
if(argsPath.indexOf(".") >= 0){
//类型自适应
obj = getObject(maps,argsPath,argsType);
}else{ //第一层获取
if(argsType == TypeEnum.string){
obj = maps.get(argsPath).toString();
}else if(argsType == TypeEnum.map){
obj = (Map)maps.get(argsPath);
}else if(argsType == TypeEnum.arrayList){
obj = (List)maps.get(argsPath);
}else if(argsType == TypeEnum.arrayMap){
obj = (List<Map>)maps.get(argsPath);
}
}
} catch (Exception e) {
logger.error(e.getMessage());
}
return obj;
}
//递归获取object
private Object getObject(Object m,String key,TypeEnum type){
if(m == null){
System.out.println("over...");
return null;
}
Object o = null; //用于返回的对象

Map mp = null;
List ls = null;
try {
//{}对象层级递归遍历解析
if(m instanceof Map || m instanceof LinkedHashMap){
mp = (LinkedHashMap)m;
for(Iterator ite = mp.entrySet().iterator(); ite.hasNext();){ 
Map.Entry e = (Map.Entry) ite.next(); 

if(i<key.split("\\.").length && e.getKey().equals(key.split("\\.")[i])){
System.out.println("["+key.split("\\.").length+"]["+key+"]["+(i+1)+"][OK]["+key.split("\\.")[i]+"]"); //Val [" + e.toString()+"]
i++;
if(e.getValue() instanceof String){
//递归最后一次
if(i== key.split("\\.").length){
o = e.getValue();
return o;
}
}else if(e.getValue() instanceof LinkedHashMap){
//递归最后一次
if(i== key.split("\\.").length){
if(type == TypeEnum.map){
o = (LinkedHashMap)e.getValue();
return o;
}
}else{
o = getObject((LinkedHashMap)e.getValue(),key,type);
}
return o;
}else if(e.getValue() instanceof ArrayList){
//递归最后一次
if(i== key.split("\\.").length){
if(type == TypeEnum.arrayList){
o = (ArrayList)e.getValue();
return o;
}
if(type == TypeEnum.arrayMap){
o = (ArrayList<Map>)e.getValue();
return o;
}
}else{
o = getObject((ArrayList)e.getValue(),key,type);
}
return o;
}
}else{
System.out.println("["+key.split("\\.").length+"]["+key+"]["+(i+1)+"][NO]["+e.getKey()+"]");
}
} 
}
//[]数组层级递归遍历解析
if(m instanceof List || m instanceof ArrayList){
ls = (ArrayList)m;
for(int i=0;i<ls.size();i++){
if(ls.get(i) instanceof LinkedHashMap){
//递归最后一次
if(i== key.split("\\.").length){
if(type == TypeEnum.map){
o = (LinkedHashMap)ls.get(i);
return o;
}
}else{
o = getObject((LinkedHashMap)ls.get(i),key,type);
}
return o;
}else if(ls.get(i) instanceof ArrayList){
//递归最后一次
if(i== key.split("\\.").length){
if(type == TypeEnum.arrayList){
o = (ArrayList)ls.get(i);
return o;
}
if(type == TypeEnum.arrayMap){
o = (ArrayList<Map>)ls.get(i);
return o;
}
}else{
o = getObject((ArrayList)ls.get(i),key,type);
}
return o;
}
}
}
System.out.println();
} catch (Exception e) {
logger.error(e.getMessage());
}
return o;
}

/*
* Json数据解析返回数据类型枚举
*/
public enum TypeEnum{
/** 单纯的键值对，通过key获取valus */
string,
/** 通过key获取到Map对象 */
map,
/** 通过key获取到ArrayList数组 */
arrayList,
/** 通过key获取到ArrayMap数组对象 */
arrayMap;}
}

