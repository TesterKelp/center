package com.testsystem.quanxian.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.helper.JsonAndString;
import com.testsystem.quanxian.exception.CustomException;
import com.testsystem.quanxian.service.SysService;
import com.testsystem.quanxian.vo.ActiveUser;
import javax.servlet.http.HttpSession;
@Controller
public class LoginAction {

	@Autowired
	private SysService sysService;
	//�û���½�ύ����
	/*@RequestMapping("/login")
	public String login(HttpSession session,String usercode,String password,String randomcode)throws Exception{
		//У����֤��
		//��session��ȡ��ȷ����֤��
		String validateCode = (String)session.getAttribute("validateCode");
		if(!randomcode.equals(validateCode)){
			//�׳��쳣����֤�����
			throw new CustomException("��֤�� ���� ��");
		}
		//�û������֤
		ActiveUser activeUser = sysService.authenticat(usercode, password);
		//��¼session
		session.setAttribute("activeUser", activeUser);
		//�ض�����Ʒ��ѯҳ��
		return "redirect:/first";
	}
	//�û��˳�
	@RequestMapping("/logout")
	public String logout(HttpSession session)throws Exception{
		//sessionʧЧ
		session.invalidate();
		//�ض�����Ʒ��ѯҳ��
		return "redirect:/items/queryItems";
	}*/
	@RequestMapping("/login")
	public  String login(HttpServletRequest request)throws Exception{
		//����¼ʧ�ܴ�request�л�ȡ��֤�쳣��Ϣ��shrioLoginFailure����shiro�쳣���ȫ�޶���
		String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
		//���shrio���ص��쳣·���жϣ��׳�ָ���쳣��Ϣ
		if (exceptionClassName!=null){
			if(UnknownAccountException.class.getName().equals(exceptionClassName)){
				//�׳��쳣
				throw new CustomException("�˻�������");
			}else if(IncorrectCredentialsException.class.getName().equals(exceptionClassName)){
				throw new CustomException("�û���/�������");
			}else if("randomCodeError".equals(exceptionClassName)){
				throw new CustomException("��֤�����");
			} else {
				throw new Exception("δ֪����");
			}
		}
		return "login";
	}
	
	
	
	@RequestMapping(value ="/login.do", method = RequestMethod.POST)
	public String LoginByNamePasss(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws Exception{
		
		String  usercode =request.getParameter("j_username");
		String  password =request.getParameter("j_password");
		System.out.println(usercode+password +"111111");
				ActiveUser activeUser = sysService.authenticat(usercode, password);
				HttpSession session = request.getSession();
				session.setAttribute("activeUser", activeUser);
				session.getAttribute("activeUser");
				System.out.println("�û���"+activeUser.getUsername());
				return "index";
	
	}
	
	


	

	
	
	
	
}
