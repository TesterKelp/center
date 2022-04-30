package com.testsystem.mobile.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.helper.JsonAndString;
import com.testsystem.mobile.service.MobilePageService;

import net.sf.json.JSONObject;

public class MobilePageSelectDefault extends TagSupport {

	
	String pro ="" ;
	private  List mList;
	String pageid ;
	private static final long serialVersionUID = 1L;
	String projectid ;
	
	
	
	
	public String getPageid() {
		return pageid;
	}
	public void setPageid(String pageid) {
		this.pageid = pageid;
	}
	public String getProjectid() {
		return projectid;
	}
	public void setProjectid(String projectid) {
		this.projectid = projectid;
	}
	
	public MobilePageSelectDefault() {   

	    }   
	public int doStartTag() throws JspException {   

	        return SKIP_BODY;  
	    }   
	
	    public int doEndTag() throws JspException {   

	        JspWriter out=pageContext.getOut();   
	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
	        MobilePageService mobilePageService = (MobilePageService) ctx.getBean("mobilePageServiceImpl");
	        mList = mobilePageService.GetPageList(Integer.parseInt(projectid));
			for (int i = 0; i <JsonAndString.ListToJsonArray(mList).size(); i++){
				JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(mList).get(i);
				
				if(oc.getString("projectid").equals(projectid)){
				if((oc.getString("pageid").equals(pageid))){
					pro = pro + "<option   selected = 'selected'   value='"+oc.getString("pageid")+"'>"+oc.getString("pagename")+"</option>" ;
				}else{
					pro = pro + "<option value='"+oc.getString("pageid")+"'>"+oc.getString("pagename")+"</option>" ;
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
