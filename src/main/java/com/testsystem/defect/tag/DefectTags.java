package com.testsystem.defect.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.service.BitsService;
import com.testsystem.defect.service.DefectService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

public class DefectTags extends TagSupport {

	String bugid ;
	
	private List moduleList ;
	private List bug;
	String  coo="";

	public String getBugid() {
		return bugid;
	}
	public void setBugid(String bugid) {
		this.bugid = bugid;
	}
	public DefectTags() {   
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
    ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
    BitsService bitsService = (BitsService) ctx.getBean("bitsServiceImpl");
	int  projectid = 	bitsService.GetqProjectIdByUserId(UserUtil.getCurrentUserinfo().getUserid());
    ApplicationContext ct = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
    DefectService defectService = (DefectService) ct.getBean("defectServiceImpl");
	
	moduleList =defectService.GetShowOperationByDefaultProject(projectid);
	bug = defectService.GetDefectByBugId(Integer.parseInt(bugid));
	
	JSONObject bu = (JSONObject) JsonAndString.ListToJsonArray(bug).get(0);
	for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
		 String fieldname =ob.getString("fieldname");
		coo=coo+"<tr height='25px'><td>"+ob.getString("chinaname")+":</td><td>"+bu.getString(fieldname)+"</td></tr>" ;
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
