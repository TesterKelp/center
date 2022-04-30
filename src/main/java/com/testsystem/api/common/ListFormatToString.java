package com.testsystem.api.common;

import java.util.List;

import net.sf.json.JSONArray;

public class ListFormatToString {


	public static String ListFormatString(List list, String status, String message) {
		String rs;
		
		if (list == null) {
			rs = "{\"status\":\"" + status + "\",\"message\":\"" + message + "\",\"data\":\"\"}";
		} else {

			if (list.size() > 0) {
				net.sf.json.JSONArray jsonArray = net.sf.json.JSONArray.fromObject(list);
				String stringjson = jsonArray.toString();
				stringjson = stringjson.replace("\"", "\\\"");
				rs = "{\"status\":\"" + status + "\",\"message\":\"" + message + "\",\"data\":\"" + stringjson + "\"}";
			} else {

				rs = "{\"status\":\"" + status + "\",\"message\":\"" + message + "\",\"data\":\"\"}";
			}
		}
		return rs;
	}


	public static String StringFormatJsonString(String value, String status, String message,String filename) {

		String rs;
		if (value != null || value.equals("")) {
			rs = "{\"status\":\"" + status + "\",\"message\":\"" + message + "\",\"data\":\"[{\\\""+filename+"\\\":\\\""+value+"\\\"}]\"}";
		} else {
			rs = "{\"status\":\"" + status + "\",\"message\":\"" + message + "\",\"data\":\"\"}";
		}
		return rs;
	}

	
	
}
