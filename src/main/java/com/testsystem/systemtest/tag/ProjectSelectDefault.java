package com.testsystem.systemtest.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.helper.JsonAndString;
import com.testsystem.systemtest.service.WebProjectService;

import net.sf.json.JSONObject;

public class ProjectSelectDefault extends TagSupport{

	
	String pro ="" ;
	String  projectid ;
	
	
	private  List projectList;
	private static final long serialVersionUID = 1L;
	
	
	
	public String getProjectid() {
		return projectid;
	}
	public void setProjectid(String projectid) {
		this.projectid = projectid;
	}
	public ProjectSelectDefault() {   

	    }   
	public int doStartTag() throws JspException {   
 
	        return SKIP_BODY;     
	    }   
	
	    public int doEndTag() throws JspException {   
 
	        JspWriter out=pageContext.getOut();   
	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
	        WebProjectService webProjectService = (WebProjectService) ctx.getBean("webProjectServiceImpl");
	        projectList = webProjectService.GetStProjectSelect();
			for (int i = 0; i <JsonAndString.ListToJsonArray(projectList).size(); i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(projectList).get(i);
				if((ob.getString("projectid").equals(projectid))){
					pro = pro + "<option  selected = 'selected' value='"+ob.getString("projectid")+"'>"+ob.getString("projectname")+"</option>" ;
				}else{
					pro = pro + "<option value='"+ob.getString("projectid")+"'>"+ob.getString("projectname")+"</option>" ;
				}
				
				
	}

	        try { 
	        out.println(pro);
	        pro ="" ;
	        }catch (IOException e) {   
	            e.printStackTrace();   
	        }     
	        return EVAL_PAGE;  
	    }  
}
