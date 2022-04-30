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
import com.testsystem.mobile.service.MobileOperationService;

import net.sf.json.JSONObject;

public class MobileOperationSelect extends TagSupport {

	String pro ="" ;
	private  List projectList;
	private static final long serialVersionUID = 1L;
	public MobileOperationSelect() {     
	    }   
	public int doStartTag() throws JspException {   

	        return SKIP_BODY;  
	    }   
	
	    public int doEndTag() throws JspException {   
	    	
	    	JspWriter out=pageContext.getOut(); 
	    	
	    	HttpSession session = pageContext.getSession();  
	        ServletRequest request = pageContext.getRequest();
	    	String  operation =(String) session.getAttribute("operation");
	    	if(operation==null||operation.equals("")){
		        int Status=1;
		        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
		        MobileOperationService mobileOperationService = (MobileOperationService) ctx.getBean("mobileOperationServiceImpl");
		        projectList = mobileOperationService .GetAllOperationByStatus(Status);
				for (int i = 0; i <JsonAndString.ListToJsonArray(projectList).size(); i++){
					JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(projectList).get(i);
					pro = pro + "<option value='"+ob.getString("operationcode")+"'>"+ob.getString("operationcode")+"</option>" ;	
					
				}
				session.setAttribute("operation", pro);
				
	    	}else{

	    		pro =operation ;

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
