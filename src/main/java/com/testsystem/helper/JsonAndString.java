package com.testsystem.helper;

import java.util.List;

import net.sf.json.JSONArray;

public class JsonAndString {

	
	public static String ListToJsonToString(List list){
	
		net.sf.json.JSONArray jsonArray = net.sf.json.JSONArray.fromObject(list);
		String stringjson =jsonArray.toString();
		return stringjson ;	
	}
	
	
	public static JSONArray ListToJsonArray(List list){
		
		net.sf.json.JSONArray jsonArray = net.sf.json.JSONArray.fromObject(list);
		
		return jsonArray ;	
	}
	
	
}
