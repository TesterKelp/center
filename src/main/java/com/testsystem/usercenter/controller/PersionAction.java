package com.testsystem.usercenter.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.U;
import com.testsystem.usercenter.service.PersionService;
import com.testsystem.usercenter.vo.Persion;
@Controller
public class PersionAction {
	@Autowired
	private PersionService persionService ;
	private List moduleList ;
	
	Persion  persion =new Persion();
	@RequestMapping(value ="/module/usercenter/getPersonInfo.do", method = RequestMethod.GET)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int userid  = U.GetUserId(request);
		if(userid==0){

		}else{
			moduleList =  persionService.GetPersionInfo(userid);
		}
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/module/usercenter/editPersonInfo.do", method = RequestMethod.POST)
	public void saveCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String username= request.getParameter("username");
		String useravatar= request.getParameter("avatar");
		String useremail= request.getParameter("email");
		String realname= request.getParameter("realname");
		String englishname= request.getParameter("englishname");
		String telephone= request.getParameter("telephone");
		String qq= request.getParameter("qq");
		int userid  = U.GetUserId(request);
		if(userid==0){
			
		}else{	
	        persion.setUserid(userid);
			persion.setUsername(username);
			persion.setUseravatar(useravatar);
			persion.setUseremail(useremail);
			persion.setRealname(realname);
			persion.setEnglishname(englishname);
			persion.setTelephone(telephone);
			persion.setQq(qq);
			persionService.EditPersionInfo(persion);
		}
		String msg="ok";
		response.getWriter().write("{\"msg\":\""+msg+"\"}");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
	
}
