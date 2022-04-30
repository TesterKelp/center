package com.testsystem.defect.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.defect.service.CaseService;
import com.testsystem.defect.service.OperationService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

public class CaseTags extends TagSupport {

	String caseid ;
	
	private List moduleList ;
	private List pcase;;
	String  coo="";



	public String getCaseid() {
		return caseid;
	}
	public void setCaseid(String caseid) {
		this.caseid = caseid;
	}
	public CaseTags() {   
        System.out.println("displayaddtags 构造函数");   
    }   
public int doStartTag() throws JspException {   
        System.out.println("doStartTag函数");   
        return SKIP_BODY;  //不实现标签的体，即空体标签。   
    }   


public int doEndTag() throws JspException {   
	String pro ="" ;
    System.out.println("doEndTag函数");   
    JspWriter out=pageContext.getOut();   
    ApplicationContext ct = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
    CaseService caseService = (CaseService) ct.getBean("caseServiceImpl");
    ApplicationContext cct = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
    OperationService operationService = (OperationService) cct.getBean("operationServiceImpl");
    
	moduleList = operationService.GetShowOperationBySubjectType(5);
	
	pcase = caseService.GetCaseIndexByCaseId(Integer.parseInt(caseid));
	System.out.println(JsonAndString.ListToJsonToString(pcase));
	JSONObject bu = (JSONObject) JsonAndString.ListToJsonArray(pcase).get(0);
	for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
		 String fieldname =ob.getString("fieldname");
		coo=coo+"<td width=\"40px\"> &nbsp;&nbsp  </td><td><strong>"+ob.getString("chinaname")+": </strong>"+bu.getString(fieldname)+"</td>" ;
		}
	
    try { 
    out.println(coo);
    coo="" ;
    }catch (IOException e) {   
        e.printStackTrace();   
    }     
    return EVAL_PAGE;  
}  











}
