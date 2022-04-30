package com.testsystem.mobile.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.helper.JsonAndString;
import com.testsystem.mobile.service.MobileProjectService;

import net.sf.json.JSONObject;

public class MobileProjectSelect extends TagSupport{

	
	String pro ="" ;
	private  List projectList;
	private static final long serialVersionUID = 1L;
	public MobileProjectSelect() {   
 
	    }   
	public int doStartTag() throws JspException {   
  
	        return SKIP_BODY;     
	    }   
	
	    public int doEndTag() throws JspException {   
  
	        JspWriter out=pageContext.getOut();   
	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
	        MobileProjectService mobileProjectService = (MobileProjectService) ctx.getBean("mobileProjectServiceImpl");
	        projectList =mobileProjectService.GetStProjectSelect();
			for (int i = 0; i <JsonAndString.ListToJsonArray(projectList).size(); i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(projectList).get(i);
				pro = pro + "<option value='"+ob.getString("projectid")+"'>"+ob.getString("projectname")+"</option>" ;
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
