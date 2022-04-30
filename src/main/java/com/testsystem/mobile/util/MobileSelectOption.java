package com.testsystem.mobile.util ;

import java.util.List;

import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

public class MobileSelectOption {
	
	public static String Option(List moduleList, String val, String text) {

		String pro = null;

		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			pro = pro + "<option value='" + ob.getString(val) + "'>" + ob.getString(text)
					+ "</option>";
		}

		return pro;

	}

}
