package com.testsystem.helper;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import com.testsystem.admin.utils.UserUtil;

public class U {
	
	
	
	
	
	
	public static int GetUserId(HttpServletRequest request) {
			int userId = 0;
			Subject subject = SecurityUtils.getSubject();
			int islogin = 0;
			if ( subject.isAuthenticated()) {	
				System.out.println("已经登录");
				islogin = 1;
				userId = UserUtil.getCurrentUserinfo().getUserid();				
			} else if (subject.isRemembered()) {
				String value = Cookies.showCookies("userid", request);
				System.out.println("记住登录,userid=" + value);
				islogin = 1;
				userId = Integer.parseInt(value);
			} else {
				islogin = 0;
				System.out.println("没有登录,没有记住密码");
			}
	return userId;
	}
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	

}
