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

public class MobileWidgetSelect  extends TagSupport {

	private  List projectList;
	private static final long serialVersionUID = 1L;
	

	public MobileWidgetSelect() {   
 
	    }   
	public int doStartTag() throws JspException {   
	        return SKIP_BODY;  
	    }   
	
	public int doEndTag() throws JspException {   
	    	  JspWriter out=pageContext.getOut(); 
	    	String pro ="" ;  

	    	HttpSession session = pageContext.getSession();  
	        ServletRequest request = pageContext.getRequest();
	    	String  widgetoperation =(String) session.getAttribute("widgetoperation");
	    	
		if (widgetoperation == null || widgetoperation.equals("")) {
			ApplicationContext ctx = WebApplicationContextUtils
					.getWebApplicationContext(pageContext.getServletContext());
			MobileWidgetService mobileWidgetService = (MobileWidgetService) ctx.getBean("mobileWidgetServiceImpl");
			projectList = mobileWidgetService .GetWidgetByStatus(1);
			for (int i = 0; i < JsonAndString.ListToJsonArray(projectList).size(); i++) {
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(projectList).get(i);
				pro = pro + "<option value='" + ob.getString("widgetid") + "'>" + ob.getString("pagename") + "_"
						+ ob.getString("widgetname") + "</option>";
			}
			session.setAttribute("widgetoperation", pro);
			System.out.println("set sessiont widgetoperation");
		} else {
			pro = widgetoperation;
			System.out.println("By sessiont widgetoperation"+pro);

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
