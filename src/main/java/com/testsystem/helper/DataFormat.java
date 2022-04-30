package com.testsystem.helper;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DataFormat {

	public static String  DataTime(){
		SimpleDateFormat sdf = null;
		String dateTime = "";
		 sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		dateTime = sdf.format(new Date());	
		return dateTime;	
	}

}
