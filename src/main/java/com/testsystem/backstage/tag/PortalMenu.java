package com.testsystem.backstage.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.article.service.CateService;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

public class PortalMenu extends TagSupport {
	String pro ="" ;
	private  List moduleList;
	private static final long serialVersionUID = 1L;
	public PortalMenu() {   
	          
	    }   
	public int doStartTag() throws JspException {    
	        return SKIP_BODY;  
	    }   
	
	    public int doEndTag() throws JspException {    
	        JspWriter out=pageContext.getOut();   
	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
	        ItemService itemService = (ItemService) ctx.getBean("itemServiceImpl");
	        moduleList = itemService.ItemList();
			String html ="<a href='/index.do'>首页</a>" ;
			for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
//				html = html+"<a href='/wz/TL_"+ob.getString("cateid")+".html'>"+ob.getString("catename")+"</a>  ";
				html = html+"|<a href='/"+ob.getString("item_directorie")+"/portal.do'>"+ob.getString("item_name")+"</a>";
	}
			pro =html ;
	        try { 
	        out.println(pro);
	        pro ="" ;
	        }catch (IOException e) {   
	            e.printStackTrace();   
	        }     
	        return EVAL_PAGE;  
	    }   
}