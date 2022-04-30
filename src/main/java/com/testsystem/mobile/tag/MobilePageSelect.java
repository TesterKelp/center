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

public class MobilePageSelect extends TagSupport {

	
	String pro ="" ;
	private  List mList;
	private static final long serialVersionUID = 1L;
	public MobilePageSelect() {     
	    }   
	public int doStartTag() throws JspException {    
	        return SKIP_BODY;  
	    }   
	
	    public int doEndTag() throws JspException {     
	        JspWriter out=pageContext.getOut();   
	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
	        MobilePageService mobilePageService = (MobilePageService) ctx.getBean("mobilePageServiceImpl");
	        mList = mobilePageService.GetPageList();
			for (int i = 0; i <JsonAndString.ListToJsonArray(mList).size(); i++){
				JSONObject oc = (JSONObject) JsonAndString.ListToJsonArray(mList).get(i);
				pro = pro + "<option value='"+oc.getString("pageid")+"'>"+oc.getString("pagename")+"</option>" ;
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
