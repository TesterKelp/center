package com.testsystem.wift.controller;

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
import com.testsystem.utils.Constants;
import com.testsystem.wift.service.IfCaseService;
import com.testsystem.wift.service.InProjectService;
import com.testsystem.wift.service.InterfaceService;
import com.testsystem.wift.service.ModuleService;
import com.testsystem.wift.vo.CaseBody;
import com.testsystem.wift.vo.CaseIndex;
import com.testsystem.wift.vo.CaseIndex1;
import com.testsystem.wift.vo.CaseIndex2;
import com.testsystem.wift.vo.CaseRequest;
import com.testsystem.wift.vo.CaseRequestHeader;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/wift")
public class WiftCaseAction {
	
	@Autowired
	private IfCaseService ifCaseService ;
	
	  @Autowired
	  private InterfaceService faceService;

	  @Autowired
	  private InProjectService inprojectService;
	
	  @Autowired
	  private ModuleService moduleService;
	  
	  
	  private List moduleList;
	  private List bodyList;
	  private List caseIndexList;
	  private List caseRequestList;
	  private List caseRequestHeaderList;
	  private CaseIndex caseIndex = new CaseIndex();
	  private CaseRequest caseRequest = new CaseRequest();
	  private CaseRequestHeader caseRequestHeader = new CaseRequestHeader();
	
	
	
	@RequestMapping(value ="/Wift_CaseManage.do", method = RequestMethod.GET)
	public String GetTask(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		System.out.println( Constants.WIFTDIR );
		return  Constants.WIFTDIR+"Wift_CaseManage";
	}
	@RequestMapping(value ="/Wift_CaseCreate.do", method = RequestMethod.GET)
	public String GetTqqqask(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		System.out.println( Constants.WIFTDIR );
		return  Constants.WIFTDIR+"Wift_CaseCreate";
	}
	
	
	@RequestMapping(value ="/IfCaseList.do", method = RequestMethod.GET)
	public void  GetArticle(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		moduleList = ifCaseService.GetIfCaseAll();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/Wift_CaseDetail.do", method = RequestMethod.GET)
	public String InterfaceCaseDetail(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		int caseid =   Integer.parseInt(request.getParameter("caseid")) ;
		moduleList =ifCaseService.GetCaseIndexByCaseId(caseid);
		bodyList =  ifCaseService.GetCaseBodyByCaseId(caseid);
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
		map.put("interfacename", ob.getString("interfacename"));
		map.put("projectname", ob.getString("projectname"));
		map.put("modulename", ob.getString("modulename"));
		map.put("interface_case_name", ob.getString("interface_case_name"));
		map.put("interface_case_desc", ob.getString("interface_case_desc"));
		map.put("interface_type", ob.getString("interface_type"));
		map.put("interface_header", ob.getString("interface_header"));
		map.put("directories", ob.getString("directories"));
		map.put("bodyList", bodyList);
	
		return  Constants.WIFTDIR+"Wift_CaseDetail";
	}
	
	
	@RequestMapping(value ="/SaveIfCase.do", method = RequestMethod.POST)
	public void SaveIfCase(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		System.out.println("111111111111111");
	    CaseIndex1 caseindex = new CaseIndex1();
	    CaseBody casebody = new CaseBody();
	    System.out.println(request.getParameter("casename"));
	    caseindex.setCasename(request.getParameter("casename"));
	    caseindex.setCasedesc(request.getParameter("casedesc"));
	    caseindex.setDirectories(request.getParameter("directories"));

	    int projectid = Integer.parseInt(request.getParameter("projectid"));
	    int moduleid = Integer.parseInt(request.getParameter("moduleid"));
	    String input = request.getParameter("header");
	    input = input.replaceAll("&", "&amp;");
	    input = input.replaceAll("<", "&lt;");
	    input = input.replaceAll(">", "&gt;");
	    input = input.replaceAll(" ", "&nbsp;");
	    input = input.replaceAll("'", "&#39;");
	    input = input.replaceAll("\"", "&quot;");
	    input = input.replaceAll("\n", "<br>");

	    caseindex.setHeader(input);
	    caseindex.setType(request.getParameter("type"));
	    caseindex.setInterfaceid(Integer.parseInt(request.getParameter("Interfaceid")));
	    caseindex.setProjectid(projectid);
	    caseindex.setModuleid(moduleid);
	    caseindex.setUserid(UserUtil.getCurrentUserinfo().getUserid());
	    int caseid = this.ifCaseService.SaveCaseIndex(caseindex);
	    System.out.println("caseid:" + caseid);
	    String[] str = request.getParameterValues("els");
	    String[] st = request.getParameterValues("elv");
	    for (int i = 0; i < str.length; ++i) {
	      System.out.print(str[i]);
	      System.out.println(st[i]);
	      System.out.println("54645546=======" + i);
	      casebody.setCaseid(caseid);
	      casebody.setDataname(str[i]);
	      casebody.setDatavalue(st[i]);
	      this.ifCaseService.SaveCaseBody(casebody);
	    }
	    System.out.println(request.getParameterValues("els"));
	    response.getWriter().write("ok");
	    response.getWriter().flush();
	}
	
	
	
	  @RequestMapping(value={"/DelInterfaceTestCaseById.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
	  public void DelInterfaceTestCaseById(ModelMap map, HttpServletResponse response, HttpServletRequest request)
	    throws IOException
	  {
	    int caseid = Integer.parseInt(request.getParameter("caseid"));
	    System.out.println("==" + caseid);
	    this.ifCaseService.DelInterfaceTestCaseById(caseid);
	    String rs = "delete success .";
	    response.getWriter().write(rs);
	    response.getWriter().flush();
	  }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
