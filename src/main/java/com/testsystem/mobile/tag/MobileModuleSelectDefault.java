package com.testsystem.mobile.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.helper.JsonAndString;
import com.testsystem.mobile.service.MobileModuleService;

import net.sf.json.JSONObject;

public class MobileModuleSelectDefault extends TagSupport {

	
	String pro ="" ;
	private  List mList;
	String moduleid ;
	private static final long serialVersionUID = 1L;
	String projectid ;
	
	
	
	
	public String getProjectid() {
		return projectid;
	}
	public void setProjectid(String projectid) {
		this.projectid = projectid;
	}
	public String getModuleid() {
		return moduleid;
	}
	public void setModuleid(String moduleid) {
		this.moduleid = moduleid;
	}
	public MobileModuleSelectDefault() {   

	    }   
	public int doStartTag() throws JspException {   

	        return SKIP_BODY;  
	    }   
	
	    public int doEndTag() throws JspException {     
	        JspWriter out=pageContext.getOut();   
	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
	        MobileModuleService mobileModuleService = (MobileModuleService) ctx.getBean("mobileModuleServiceImpl");
	        mList = mobileModuleService.GetStModuleSelect();
			for (int i = 0; i <JsonAndString.ListToJsonArray(mList).size(); i++){
				JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(mList).get(i);
				
				if(oc.getString("projectid").equals(projectid)){
				if((oc.getString("moduleid").equals(moduleid))){
					pro = pro + "<option   selected = 'selected'   value='"+oc.getString("moduleid")+"'>"+oc.getString("modulename")+"</option>" ;
				}else{
					pro = pro + "<option value='"+oc.getString("moduleid")+"'>"+oc.getString("modulename")+"</option>" ;
				};
				
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
