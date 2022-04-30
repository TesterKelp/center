package com.testsystem.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.testsystem.quanxian.vo.ActiveUser;

public class UserInfo {

	
	public static int GetUserId(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		ActiveUser activeUser = (ActiveUser) session.getAttribute("activeUser");
		System.out.println("ÓÃ»§Ãû£º"+activeUser.getUsername());
		System.out.println("Usercode£º"+activeUser.getUsercode());
		return Integer.parseInt(activeUser.getUserid());	
		
	}
	

}
