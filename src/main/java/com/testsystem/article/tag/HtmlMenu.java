package com.testsystem.article.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.article.service.CateService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

public class HtmlMenu extends TagSupport {
	String pro ="" ;
	private  List moduleList;
	private static final long serialVersionUID = 1L;
	public HtmlMenu() {   
	        System.out.println("displayaddtags 构造函数");   
	    }   
	public int doStartTag() throws JspException {   
	        System.out.println("doStartTag函数");   
	        return SKIP_BODY;  //不实现标签的体，即空体标签。   
	    }   
	
	    public int doEndTag() throws JspException {   
	        System.out.println("doEndTag函数");   
	        JspWriter out=pageContext.getOut();   
	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
	        CateService cateService = (CateService) ctx.getBean("cateServiceImpl");
	   //     moduleList = cateService.GetCateList();
	        moduleList = cateService.GetCateName();
			System.out.println("88888" + moduleList.size());
			String html ="" ;
			for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
				html = html+"<a href='/wz/TL_"+ob.getString("cateid")+".html'>"+ob.getString("catename")+"</a>  ";
//				html = html+"<a href='#'    onclick=\"ArticleByCateid('"+ob.getString("cateid")+"')\">"+ob.getString("catename")+"</a> ";
	}
			pro =html ;
//			if (operationList.size() > 0) {
//				for (int i = 0; i < operationList.size(); i++) {
//					Operation u = (Operation) operationList.get(i);
//					System.out.println("1111111" + u.getOperation_value());
//					System.out.println("1111111" + u.getOperation_text());
//					
//					pro = pro + "<option value='"+u.getOperation_value()+"'>"+u.getOperation_text()+"</option>" ;
//					
//					
//				}
//			}

	        try { 
	        out.println(pro);
	        pro ="" ;
	        }catch (IOException e) {   
	            e.printStackTrace();   
	        }     
	        return EVAL_PAGE;  
	    }   
}