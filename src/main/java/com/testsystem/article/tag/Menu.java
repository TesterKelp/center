package com.testsystem.article.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.service.NavigationService;
import com.testsystem.defect.service.MenuService;
import com.testsystem.helper.JsonAndString;
import com.testsystem.utils.Constants;

import net.sf.json.JSONObject;

public class Menu extends TagSupport {
	String pro ="" ;
	private  List moduleList;
	private static final long serialVersionUID = 1L;
	public Menu() {   
	        System.out.println("displayaddtags ���캯��");   
	    }   
	public int doStartTag() throws JspException {   
	        System.out.println("doStartTag����");   
	        return SKIP_BODY;  //��ʵ�ֱ�ǩ���壬�������ǩ��   
	    }   
	
	    public int doEndTag() throws JspException {   
	        System.out.println("doEndTag����");   
	        JspWriter out=pageContext.getOut();   
//	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
//	        CateService cateService = (CateService) ctx.getBean("cateServiceImpl");
	   //     moduleList = cateService.GetCateList();
//	        moduleList = cateService.GetCateName();
	        
	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
	        NavigationService menuService = (NavigationService) ctx.getBean("navigationServiceImpl");
	        moduleList = menuService.GetArticleNavigation();
	        
	        
			System.out.println("88888" + moduleList.size());
			String html ="" ;
//			if(Constants.ISHTML){
//			for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
//				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
//				html = html + "<a href='/wz/TL_" + ob.getString("cateid") + ".html'>" + ob.getString("catename")+ "</a>  ";
//			}
//			}else{
//				
//				for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
//					JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
//					html = html+"<a href='/module/share/ArticleList1.do?cateid="+ob.getString("cateid")+"'>"+ob.getString("catename")+"</a>  ";
//		}
//					
//				
//			}
			
			
			for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
				html = html+"<a             href='"+ob.getString("navigation_url")+"'>"+ob.getString("navigation_name")+"</a>  ";
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