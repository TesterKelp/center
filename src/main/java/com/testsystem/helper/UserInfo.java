package com.testsystem.helper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.testsystem.quanxian.vo.ActiveUser;

public class UserInfo {

	
	public static int GetUserId(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		ActiveUser activeUser = (ActiveUser) session.getAttribute("activeUser");
		System.out.println("�û�����"+activeUser.getUsername());
		System.out.println("Usercode��"+activeUser.getUsercode());
		return Integer.parseInt(activeUser.getUserid());	
		
	}
	

}
