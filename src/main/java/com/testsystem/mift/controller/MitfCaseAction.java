package com.testsystem.mift.controller;

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
import com.testsystem.mift.service.MitfCaseService;
import com.testsystem.mift.vo.MitfBody;
import com.testsystem.mift.vo.MitfIndex;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/mift")
public class MitfCaseAction {
	
	@Autowired
	private MitfCaseService mitfCaseService ;
	private List moduleList ;
	private List bodyList ;
	@RequestMapping(value ="/IfCaseList.do", method = RequestMethod.GET)
	public void  GetArticle(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		moduleList = mitfCaseService.GetIfCaseAll();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/Mift_CaseManage.do", method = RequestMethod.GET)
	public String MiftCaseList(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		return "/module/mift/Mift_CaseManage";
	}
	@RequestMapping(value ="/Mift_CaseCreate.do", method = RequestMethod.GET)
	public String MiftCaseCreate(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		return "/module/mift/Mift_CaseCreate";
	}
	
	
	
	@RequestMapping(value ="/Mift_CaseDetail.do", method = RequestMethod.GET)
	public String InterfaceCaseDetail(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		int caseid =   Integer.parseInt(request.getParameter("caseid")) ;
		moduleList =mitfCaseService.GetCaseIndexByCaseId(caseid);
		bodyList =  mitfCaseService.GetCaseBodyByCaseId(caseid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		map.put("interfacename", ob.getString("interfacename"));
		map.put("projectname", ob.getString("projectname"));
		map.put("modulename", ob.getString("modulename"));
		map.put("interface_case_name", ob.getString("interface_case_name"));
		map.put("interface_case_desc", ob.getString("interface_case_desc"));
		map.put("interface_type", ob.getString("interface_type"));
		map.put("interface_header", ob.getString("interface_header"));
		map.put("bodyList", bodyList);
		return "/module/mift/Mift_CaseDetail";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/SaveIfCase.do", method = RequestMethod.POST)
	public void SaveIfCase(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		System.out.println("111111111111111");
		MitfIndex mitfIndex =new MitfIndex();
		MitfBody  mitfBody =new MitfBody();
		System.out.println(request.getParameter("casename"));
		mitfIndex.setCasename(request.getParameter("casename"));
		mitfIndex.setCasedesc(request.getParameter("casedesc"));
		
		
		String input = request.getParameter("header");
				
	    input = input.replaceAll("&", "&amp;");
        input = input.replaceAll("<", "&lt;");
        input = input.replaceAll(">", "&gt;");
        input = input.replaceAll(" ", "&nbsp;");
        input = input.replaceAll("'", "&#39;");
        input = input.replaceAll("\"", "&quot;");
        input = input.replaceAll("\n", "<br>");
		
		
        mitfIndex.setHeader(input);
        mitfIndex.setType(request.getParameter("type"));
        mitfIndex.setInterfaceid(Integer.parseInt(request.getParameter("Interfaceid")));
        mitfIndex.setUserid(UserUtil.getCurrentUserinfo().getUserid());
	     int caseid =	mitfCaseService.SaveCaseIndex(mitfIndex) ;
		System.out.println("caseid:"+caseid);
		String str[] =request.getParameterValues("els");
		String st[] =request.getParameterValues("elv");
		for(int i=0; i < str.length;i++){ 
		      System.out.print(str[i]); 
		      System.out.println(st[i]);
		      System.out.println("54645546======="+i);
		      mitfBody .setCaseid(caseid);
		      mitfBody .setDataname(str[i]);
		      mitfBody .setDatavalue(st[i]);
		      mitfCaseService.SaveCaseBody(mitfBody );   
		  }
		System.out.println(request.getParameterValues("els"));
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
