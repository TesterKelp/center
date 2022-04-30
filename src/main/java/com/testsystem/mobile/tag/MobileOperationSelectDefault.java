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

public class MobileOperationSelectDefault extends TagSupport {

	String pro ="" ;
	 public String operationcode="";  


	private  List projectList;
	private static final long serialVersionUID = 1L;
	public MobileOperationSelectDefault() {   
  
	    }   
	public int doStartTag() throws JspException {   
  
	        return SKIP_BODY;  
	    }   
	
	
		public int doEndTag() throws JspException {     
	        JspWriter out=pageContext.getOut();   
	    	HttpSession session = pageContext.getSession();  
	        ServletRequest request = pageContext.getRequest();
	        projectList  =  (List) session.getAttribute("operationlist");
		if (null == projectList ||projectList.size()==0) {
			int Status = 1;
			ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
			MobileOperationService mobileOperationService = (MobileOperationService) ctx.getBean("mobileOperationServiceImpl");
			projectList = mobileOperationService.GetAllOperationByStatus(Status);
			session.setAttribute("operationlist", projectList);
		}
		for (int i = 0; i < JsonAndString.ListToJsonArray(projectList).size(); i++) {
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(projectList).get(i);
			if (ob.getString("operationcode").equals(operationcode)) {
				pro = pro + "<option    selected = 'selected'             value='" + ob.getString("operationcode")+ "'>" + ob.getString("operationcode") + "</option>";
			} else {
				pro = pro + "<option     value='" + ob.getString("operationcode") + "'>" + ob.getString("operationcode")+ "</option>";
			}
			;

		}
			
			
			

	        try { 
	        out.println(pro);
	        pro ="" ;
	        }catch (IOException e) {   
	            e.printStackTrace();   
	        }     
	        return EVAL_PAGE;  
	    }  
		
		
		
		
	    public String getOperationcode() {
			return operationcode;
		}
		public void setOperationcode(String operationcode) {
			this.operationcode = operationcode;
		}
		
		
}
