package com.testsystem.mobile.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.helper.JsonAndString;
import com.testsystem.mobile.service.MobileWidgetService;

import net.sf.json.JSONObject;

public class MobileWidgetSelectDefault  extends TagSupport {

	private  List projectList;
	private  List defaultWidgetList;
	String  widgetid ;
	private static final long serialVersionUID = 1L;
	
	
	public String getWidgetid() {
		return widgetid;
	}
	public void setWidgetid(String widgetid) {
		this.widgetid = widgetid;
	}
	public MobileWidgetSelectDefault() {   
 
	    }   
	public int doStartTag() throws JspException {   
	        return SKIP_BODY;  
	    }   
	
	    public int doEndTag() throws JspException {   
	    	String pro ="" ;  
	        JspWriter out=pageContext.getOut();   
	        
	        
	        
	    	HttpSession session = pageContext.getSession();  
	        ServletRequest request = pageContext.getRequest();
	        defaultWidgetList  =  (List) session.getAttribute("defaultWidgetList");
	        if (null == defaultWidgetList ||defaultWidgetList.size()==0) {
		        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
		        MobileWidgetService mobileWidgetService = (MobileWidgetService) ctx.getBean("mobileWidgetServiceImpl");
		        defaultWidgetList = mobileWidgetService.GetWidgetByStatus(1);
		        session.setAttribute("defaultWidgetList", defaultWidgetList);
		        
	        }
	        
			for (int i = 0; i <JsonAndString.ListToJsonArray(defaultWidgetList).size(); i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(defaultWidgetList).get(i);
				
				if(ob.getString("widgetid").equals(widgetid)){
					pro = pro + "<option   selected = 'selected'  value='"+ob.getString("widgetid")+"'>"+ob.getString("pagename")+"_"+ob.getString("widgetname")+"</option>" ;
				}else{
					pro = pro + "<option value='"+ob.getString("widgetid")+"'>"+ob.getString("pagename")+"_"+ob.getString("widgetname")+"</option>" ;
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
