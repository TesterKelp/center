package com.testsystem.admin.utils;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;

import com.testsystem.admin.vo.SysInfo;
import com.testsystem.admin.vo.User;

public class SysInfoUtil {

	/**
	 * 获取当前用户session
	 * @return session
	 */
	public static Session getSession(){
		Session session =SecurityUtils.getSubject().getSession();
		return session;
	}
	
	/**
	 * 获取当前用户httpsession
	 * @return httpsession
	 */
	public static Session getHttpSession(){
		Session session =SecurityUtils.getSubject().getSession();
		return session;
	}
	
//	public static String getSysInfo(String name){
//		Session session =SecurityUtils.getSubject().getSession();
//		if(null!=session){
//			return (String) session.getAttribute(name);
//		}else{
//			return null;
//		}
//	}


	public static SysInfo getSysInfo(){
		Session session =SecurityUtils.getSubject().getSession();
		if(null!=session){
			return (SysInfo) session.getAttribute("sysinfo");
		}else{
			return null;
		}
		
		
		
		
	}
	
	
	
	
	
	
	
	
}
