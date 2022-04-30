package com.testsystem.usercenter.controller;

import java.io.IOException;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.UserService;
import com.testsystem.admin.service.impl.GroupServiceImpl;
import com.testsystem.admin.utils.EndecryptUtils;
import com.testsystem.admin.vo.User;
import com.testsystem.article.service.BlogSettingService;
import com.testsystem.article.vo.BlogSetting;
import com.testsystem.defect.service.BitsService;
import com.testsystem.helper.JsonAndString;
import com.testsystem.navigation.service.NavService;
import com.testsystem.navigation.vo.Udate;
import com.testsystem.usercenter.service.RegisterService;

@Controller
public class RegisterAction {
	@Autowired
	private UserService userService ;
	@Autowired
	private RegisterService registerService ;
	@Autowired
	private GroupServiceImpl groupService;
	@Autowired
	private BlogSettingService  blogSettingService ;
	@Autowired
	private  BitsService  bitsService ;
	
	@Autowired 
	private NavService navService ;
	
	private List  moduleList ;
	
	String msg ="";
//	User user =new User();
	BlogSetting blogSetting=new BlogSetting();
	@RequestMapping(value ="/module/usercenter/Register.do", method = RequestMethod.POST)
	public void UserLogin(ModelMap map,  User user ,HttpServletResponse response,HttpServletRequest request) throws IOException{
		String username = request.getParameter("username");
		User u = userService.getUserByName(username) ;
	if(	u==null){
		
		String password= request.getParameter("password");
		String useravatar= "/pic/face/"+request.getParameter("useravatar");
		user.setUseravatar(useravatar); 
		user.setEnabled(1);
		user.setNormal(1);
		Format format = new SimpleDateFormat("yyyy-MM-dd");
		user.setRegtime(format.format(new Date()));
		password= EndecryptUtils.md5Password(username, password);
			user.setUsername(username);
			user.setPassword(password);
		registerService.RegisterUser(user);
		int userid = userService.getUserIdByUserName(username);
		groupService.addUserToGroup(14, userid);
		blogSetting.setUserid(userid);
		blogSetting.setIntroduce("介绍");
		blogSetting.setNotice("通知");
		blogSetting.setTemplate("t1");
		blogSetting.setBlogtime(format.format(new Date()));
		blogSettingService.SaveBlogSetting(blogSetting);
		msg="ok";
		
		Udate udate =new Udate();
		
		udate.setUserid(userid);
		udate.setPicmodel(0);
		udate.setFileon(0);
		udate.setHei(300);
		udate.setWid(500);
		navService.AddUdate(udate);
		
		
	}else{
		msg="have";
		System.out.println("msg:"+msg);
	}
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	

	@RequestMapping(value ="/module/admin/BackRegister.do", method = RequestMethod.POST)
	public void BackAddUser(ModelMap map, User user ,HttpServletResponse response,HttpServletRequest request) throws IOException{
		
		String username = request.getParameter("username");
		User u = userService.getUserByName(username) ;
	if(	u==null){
		String password= request.getParameter("password");
		String useravatar= "/pic/face/"+request.getParameter("useravatar");
		user.setUseravatar(useravatar);
		user.setEnabled(1);
		user.setNormal(1);
		Format format = new SimpleDateFormat("yyyy-MM-dd");
		user.setRegtime(format.format(new Date()));
		password= EndecryptUtils.md5Password(username, password);
		user.setUsername(username);
		user.setPassword(password);
		
		
		registerService.RegisterUser(user);
		int userid = userService.getUserIdByUserName(username);
		groupService.addUserToGroup(14, userid);
		blogSetting.setUserid(userid);
		blogSetting.setIntroduce("���������ҽ���");
		blogSetting.setNotice("�����ù��棡");
		blogSetting.setTemplate("t4");
		blogSetting.setBlogtime(format.format(new Date()));
		blogSettingService.SaveBlogSetting(blogSetting);

	int  projectid =bitsService.GetMaxProjectId();
	int  libid  =bitsService.GetMaxLibId();
	bitsService.AddInitUserData(userid, projectid, libid);
		msg="ok" ;
	}
	response.getWriter().write(msg);
	response.getWriter().flush();
	}
	

	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
}
