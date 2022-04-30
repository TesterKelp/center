package com.testsystem.wift.controller;

import java.io.IOException;
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

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.JsonAndString;
import com.testsystem.wift.service.IfCaseService;
import com.testsystem.wift.service.InProjectService;
import com.testsystem.wift.service.InterfaceService;
import com.testsystem.wift.service.ModuleService;
import com.testsystem.wift.vo.CaseAssertion;
import com.testsystem.wift.vo.CaseHeaderAssertion;
import com.testsystem.wift.vo.CaseIndex;
import com.testsystem.wift.vo.CaseRequest;
import com.testsystem.wift.vo.CaseRequestHeader;

import net.sf.json.JSONObject;

@Controller
@RequestMapping({"/wift"})
public class WiftCaseController {

	  @Autowired
	  private IfCaseService ifCaseService;
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
	  private List caseAssertionList ;
	  private List caseHeaderAssertionList ;
	  
	  private CaseIndex caseIndex = new CaseIndex();
	  private CaseRequest caseRequest = new CaseRequest();
	  private CaseRequestHeader caseRequestHeader = new CaseRequestHeader();
	  private CaseAssertion caseAssertion =new CaseAssertion();
	  private CaseHeaderAssertion caseHeaderAssertion =new CaseHeaderAssertion();
	
//	 根据接口id， 加载接口参数等信息到 接口用例创建页面    
	  @RequestMapping(value={"/Wift_CreateCaseLoadPage.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public String CreateCaseLoadPage(ModelMap map, HttpServletResponse response, HttpServletRequest request)
	    throws IOException
	  {
	    int interfaceid = Integer.parseInt(request.getParameter("interfaceid"));
	    System.out.println("interfaceid======" + interfaceid);
	    String  temp =faceService.GetJsonStr(interfaceid);
	    this.moduleList = this.faceService.GetInterfacDetailById(interfaceid);
	    JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(0);
//	    map.put("interfaceid", ob.getString("interfacename"));
	    map.put("projectname", ob.getString("projectname"));
	    map.put("modulename", ob.getString("modulename"));
	    map.put("interfacedesc", ob.getString("interfacedesc"));
	    map.put("username", ob.getString("username"));
	    map.put("requesttype", ob.getString("requesttype"));
	    map.put("directories", ob.getString("directories"));
	    map.put("environmentname", ob.getString("environmentname"));

	    List projectList = this.inprojectService.GetProjectList();
	    System.out.println("projectList==" + projectList);

	    int projectid = Integer.parseInt(ob.getString("projectid"));
	    System.out.println("projectid==" + projectid);
	    List moduleList = this.moduleService.GetModuleListByProjectId(projectid);
	    System.out.println("moduleList==" + moduleList);
	    int ModuleId = Integer.parseInt(ob.getString("moduleid"));
	    List interfaceList = this.faceService.GetFaceListByModuleId(ModuleId);
	    System.out.println("interfaceList==" + interfaceList);

	    List requestList = this.faceService.GetInterfaceRequestById(interfaceid);
	    List requestHeaderList = this.faceService.GetInterfaceRequestHeader(interfaceid);
	    map.put("projectList", projectList);
	    map.put("moduleList", moduleList);
	    map.put("interfaceList", interfaceList);

	    map.put("projectid", Integer.valueOf(projectid));
	    map.put("moduleid", Integer.valueOf(ModuleId));
	    map.put("interfaceid", Integer.valueOf(interfaceid));
	    map.put("jsonstr", temp);
	    
	    map.put("requestList", requestList);
	    map.put("requestHeaderList", requestHeaderList);
	    System.out.println("/module/wift/");
	    return "/module/wift/Wift_CreateCaseLoadPage";
	  }
	
	
	
	  
	  @RequestMapping(value={"/SaveJsonStr.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
	  public void SaveJsonStr(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
	  {
	    int id = Integer.parseInt(request.getParameter("id"));
	    String jsonstr = request.getParameter("jsonstr");
	    this.ifCaseService.SaveJson(id, jsonstr);

	    response.getWriter().write("ok");
	    response.getWriter().flush();
	  }

	  @RequestMapping(value={"/SaveInterfaceCase.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
	  public void SaveInterfaceCase(ModelMap map, HttpServletResponse response, HttpServletRequest request)
	    throws IOException
	  {
		  
		  System.out.println("this  is ding");
		  
	    int i;
	    String CaseName = request.getParameter("CaseName");
	    String CaseDesc = request.getParameter("CaseDesc");
	    int InterfaceId = Integer.parseInt(request.getParameter("InterfaceId"));
	    int ServerId = Integer.parseInt(request.getParameter("ServerId"));
	    boolean HasRequestParameter = true;
	    boolean HasRequestHeaderParameter = true;
	    String[] RequestParameterName = request.getParameterValues("RequestParameterName");
	    String[] RequestParameterValue = request.getParameterValues("RequestParameterValue");
	    String[] RequestHeaderParameterName = request.getParameterValues("RequestHeaderParameterName");
	    String[] RequestHeaderParameterValue = request.getParameterValues("RequestHeaderParameterValue");
	    
	    
	    String[] AssertionTypeParameter  = request.getParameterValues("AssertionTypeParameter");
	    String[] AssertionResultParameter =  request.getParameterValues("AssertionResultParameter");
	    String[] AssertionContentParameter =  request.getParameterValues("AssertionContentParameter");
	    String[] AssertionDescParameter =   request.getParameterValues("AssertionDescParameter");
	    
	    String[] AssertionHeaderTypeParameter  = request.getParameterValues("AssertionHeaderTypeParameter");
	    String[] AssertionHeaderResultParameter =  request.getParameterValues("AssertionHeaderResultParameter");
	    String[] AssertionHeaderContentParameter =  request.getParameterValues("AssertionHeaderContentParameter");
	    String[] AssertionHeaderDescParameter =   request.getParameterValues("AssertionHeaderDescParameter");
	    
	    
	    

	    if ((RequestParameterName == null) || (RequestParameterName[0] == null) || (RequestParameterName[0].equals(""))) {
	      HasRequestParameter = false;
	      System.out.println("HasRequestParameter =false ;");
	    }
	    if ((RequestHeaderParameterName == null) || (RequestHeaderParameterName[0] == null) || (RequestHeaderParameterName[0].equals(""))) {
	      HasRequestHeaderParameter = false;
	      System.out.println("HasRequestHeaderParameter =false ;");
	    }

	    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String  createtime = df.format(new Date()) ;
	    this.caseIndex.setInterface_case_name(CaseName);
	    this.caseIndex.setInterface_case_desc(CaseDesc);
	    this.caseIndex.setInterfaceid(InterfaceId);
	    this.caseIndex.setServerid(ServerId);
	    this.caseIndex.setUserid(UserUtil.getCurrentUserinfo().getUserid());
	    this.caseIndex.setCreatetime(createtime);
	    
	    
	    int CaseId = this.ifCaseService.CreateCaseIndex(this.caseIndex);
	    if (HasRequestParameter)
	      for (i = 0; i < RequestParameterName.length; ++i) {
	        this.caseRequest.setDataname(RequestParameterName[i]);
	        this.caseRequest.setDatavalue(RequestParameterValue[i]);
	        this.caseRequest.setDatasort(i + 1);
	        this.caseRequest.setInterface_case_id(CaseId);
	        this.ifCaseService.CreateCaseRequest(this.caseRequest);
	      }

	    if (HasRequestHeaderParameter)
	      for (i = 0; i < RequestHeaderParameterName.length; ++i) {
	        this.caseRequestHeader.setDataname(RequestHeaderParameterName[i]);
	        this.caseRequestHeader.setDatavalue(RequestHeaderParameterValue[i]);
	        this.caseRequestHeader.setDatasort(i + 1);
	        this.caseRequestHeader.setInterface_case_id(CaseId);
	        this.ifCaseService.CreateCaseRequestHeader(this.caseRequestHeader);
	      }

	    System.out.println("leng===="+AssertionTypeParameter.length);
	    for(i=0;i<AssertionTypeParameter.length-1;i++){
	    	this.caseAssertion.setInterface_case_id(CaseId);
	    	this.caseAssertion.setAssertion_content(AssertionContentParameter[i]);
	    	System.out.println("this data ======="+AssertionTypeParameter[i]);
	    	this.caseAssertion.setAssertion_type(Integer.parseInt(AssertionTypeParameter[i]));
	    	this.caseAssertion.setExpected_Result(AssertionResultParameter[i]);
	    	this.caseAssertion.setAssertion_Desc(AssertionDescParameter[i]);
	    	this.ifCaseService.CreateCaseAssertion(caseAssertion);
	    }
	    
	    
	    
	    for(i=0;i<AssertionHeaderTypeParameter.length-1;i++){
	    	this.caseHeaderAssertion.setInterface_case_id(CaseId);
	    	this.caseHeaderAssertion.setAssertion_content(AssertionHeaderContentParameter[i]);
	    	this.caseHeaderAssertion.setAssertion_type(Integer.parseInt(AssertionHeaderTypeParameter[i]));
	    	this.caseHeaderAssertion.setExpected_Result(AssertionHeaderResultParameter[i]);
	    	this.caseHeaderAssertion.setAssertion_Desc(AssertionHeaderDescParameter[i]);
	    	this.ifCaseService.CreateCaseAssertionHeader(caseHeaderAssertion);
	    }
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    response.getWriter().write("ok");
	    response.getWriter().flush();
	  }
	  
	  
	  
	  @RequestMapping(value={"/Wift_CaseStandardDetail.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public String InterfacedddCaseDetailById(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    int caseId = Integer.parseInt(request.getParameter("caseid"));

	    this.caseIndexList = this.ifCaseService.GetCaseIndex(caseId);
	    this.caseRequestList = this.ifCaseService.GetCaseRequest(caseId);
	    this.caseRequestHeaderList = this.ifCaseService.GetCaseRequestHeader(caseId);
	    this.caseAssertionList =  this.ifCaseService.GetCaseAssertionByCaseId(caseId);
	    this.caseHeaderAssertionList =this.ifCaseService.GetCaseHeaderAssertionByCaseId(caseId) ;
	    
	    
	    System.out.println("caseIndexList==" + this.caseIndexList);
	    JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.caseIndexList).get(0);
	    map.put("interfacename", ob.getString("interfacename"));
	    map.put("projectname", ob.getString("projectname"));
	    map.put("modulename", ob.getString("modulename"));
	    map.put("requesttype", ob.getString("requesttype"));
	    map.put("environmentname", ob.getString("environmentname"));
	    map.put("directories", ob.getString("directories"));
	    map.put("interfaceid", ob.getString("interfaceid"));
	    
	    map.put("username", ob.getString("username"));
	    

	    map.put("interface_case_name", ob.getString("interface_case_name"));
	    map.put("interface_case_desc", ob.getString("interface_case_desc"));

	    map.put("caseRequestList", this.caseRequestList);
	    map.put("caseRequestHeaderList", this.caseRequestHeaderList);
	    map.put("caseAssertionList", this.caseAssertionList);
	    map.put("caseHeaderAssertionList", this.caseHeaderAssertionList);
	    
	    
	    
	    
	    
	    
	    
	    return "/module/wift/Wift_CaseStandardDetail";
	  }
	  
	  
	  
	  
	  
	  @RequestMapping(value={"/Wift_CaseDetailById.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public String InterfaceCaseDetailById(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    int caseId = Integer.parseInt(request.getParameter("caseid"));

	    this.caseIndexList = this.ifCaseService.GetCaseIndex(caseId);
	    this.caseRequestList = this.ifCaseService.GetCaseRequest(caseId);
	    this.caseRequestHeaderList = this.ifCaseService.GetCaseRequestHeader(caseId);
	    System.out.println("caseIndexList==" + this.caseIndexList);
	    JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.caseIndexList).get(0);
	    map.put("interfacename", ob.getString("interfacename"));
	    map.put("projectname", ob.getString("projectname"));
	    map.put("modulename", ob.getString("modulename"));
	    map.put("requesttype", ob.getString("requesttype"));
	    map.put("environmentname", ob.getString("environmentname"));
	    map.put("directories", ob.getString("directories"));
	    map.put("interfaceid", ob.getString("interfaceid"));

	    map.put("interface_case_name", ob.getString("interface_case_name"));
	    map.put("interface_case_desc", ob.getString("interface_case_desc"));

	    map.put("caseRequestList", this.caseRequestList);
	    map.put("caseRequestHeaderList", this.caseRequestHeaderList);
	    return "/module/wift/Wift_CaseDetail";
	  }
	  
	  
	  
	  
	  
	  
	
	 
	  @RequestMapping(value ="/CaseStandardList.do", method = RequestMethod.GET)
		public void  GetArticle(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
			moduleList = ifCaseService.GetCaseStandardList();
			String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
			System.out.println("jsonstr"+jsonstr );
			response.getWriter().write(jsonstr);
			response.getWriter().flush();
		}
	
	
	  @RequestMapping(value={"/Wift_CaseStandardManage.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public String GetTask(ModelMap map, HttpServletResponse response, HttpServletRequest request)
	    throws IOException
	  {
	    System.out.println("Wift_CaseStandardManage");
	    return "/module/wift/Wift_CaseStandardManage";
	  }	
	
	
	
}
