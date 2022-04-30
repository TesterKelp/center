package com.testsystem.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.CompanyService;
import com.testsystem.admin.service.EmailService;
import com.testsystem.admin.service.UserService;
import com.testsystem.admin.vo.Email;
import com.testsystem.helper.JsonAndString;
import com.testsystem.utils.EmailSend;
@Controller
public class EmailAction {
	@Autowired
	private EmailService emailService ;
	@Autowired
	private UserService userService ;
	private List moduleList ;
	@RequestMapping(value ="/module/admin/getEmailInfo.do", method = RequestMethod.GET)
	public void getEmailInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList =  emailService.GetEmailInfo();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}

	
	/**
	 * @param map
	 * @param response
	 * @param request
	 * @throws IOException
	 * 
	 */
	@RequestMapping(value ="/module/admin/SaveEmailInfo.do", method = RequestMethod.GET)
	public void saveEmailInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList =  emailService.GetEmailInfo();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
//	@RequestMapping(value ="/module/admin/SendEmail.do", method = RequestMethod.GET)
//	public void sendEmail(ModelMap map, HttpServletResponse response,
//			HttpServletRequest request) throws IOException, AddressException, MessagingException{
//		System.out.println("1111111111111111111111111111" );
//		EmailSend.send_email();
//		String  jsonstr =  "ok";	
//		System.out.println("jsonstr"+jsonstr );
//		response.getWriter().write(jsonstr);
//		response.getWriter().flush();
//	}
	
	@RequestMapping(value ="/module/admin/SendEmail.do", method = RequestMethod.GET)
	public void sendEmailTest(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException, AddressException, MessagingException{
		Email  email =emailService.GetEmailImfo();
		System.out.println("email:"+email.getFromname() );
	   String to =	userService.getUserEmail(2);
		EmailSend.send_email(to, "Ö÷11221Ìâ", "emmail neir", email);
		//EmailSend.send_email();
		String  jsonstr =  "ok";	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}

}
