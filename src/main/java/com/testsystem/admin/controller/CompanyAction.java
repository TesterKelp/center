package com.testsystem.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.CompanyService;
import com.testsystem.admin.vo.Company;
import com.testsystem.helper.JsonAndString;

@Controller
public class CompanyAction {

	@Autowired
	private CompanyService companyService ;
	private List moduleList ;
	 Company company = new Company();
	@RequestMapping(value ="/module/admin/getCompanyInfo.do", method = RequestMethod.GET)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList =  companyService.GetCompanyInfo();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}

	@RequestMapping(value ="/module/admin/saveCompanyInfo.do", method = RequestMethod.POST)
	public void saveCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String companyname =request.getParameter("companyname");
		System.out.println("companyname"+companyname );
		company.setCompanyname(companyname);
		String telephone =request.getParameter("telephone");
		company.setTelephone(telephone);
		
		String fox =request.getParameter("fox");
		company.setFox(fox);
		
		String address =request.getParameter("address");
		company.setAddress(address);
		
		String pz =request.getParameter("pz");
		company.setPz(pz);
		
		String webaddress =request.getParameter("webaddress");
		company.setWebaddress(webaddress);
		
		String inwebaddress =request.getParameter("inwebaddress");
		company.setInwebaddress(inwebaddress);
		
		companyService.saveCompanyInfo(company);
		response.getWriter().write("{\"msg\":\"sucessful\"}");
//		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}

	
	
	
	
}
