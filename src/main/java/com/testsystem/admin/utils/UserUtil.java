package com.testsystem.admin.utils;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;

import com.testsystem.admin.vo.User;
import com.testsystem.admin.vo.Userinfo;

public class UserUtil {
	
	
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
	
	/**
	 * 获取当前用户对象
	 * @return user
	 */
	public static User getCurrentUser(){
		Session session =SecurityUtils.getSubject().getSession();
		if(null!=session){
			return (User) session.getAttribute("user");
		}else{
			return null;
		}
		
		
		
		
	}
	
	/**
	 * 获取当前用户对象信息
	 * @return user
	 */
	public static Userinfo getCurrentUserinfo(){
		Session session =SecurityUtils.getSubject().getSession();
		if(null!=session){
			return (Userinfo) session.getAttribute("userinfo");
		}else{
			return null;
		}
		
	}
	
	public static Userinfo getCurrentUserinfotest(HttpServletResponse response,
			HttpServletRequest request){
		Session session =SecurityUtils.getSubject().getSession();
		if(null!=session){
			return (Userinfo) session.getAttribute("userinfo");
		}else{
//			return null;
			try {
				request.getRequestDispatcher("/login.jsp").forward(request,  
				        response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
		
	}
	
	
	
	
	
	
	
	
	
	
	public static Userinfo getCurrentUserinfo(HttpServletResponse response){
		Session session =SecurityUtils.getSubject().getSession();
		if(null!=session){
			return (Userinfo) session.getAttribute("userinfo");
		}else{
			 System.out.println("no login");
			 try {

				response.sendRedirect("http://192.168.1.105:8080/defectsystem/module/usercenter/login.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return null;
		
	}
	
	
}
