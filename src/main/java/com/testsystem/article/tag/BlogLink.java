package com.testsystem.article.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.admin.vo.User;
import com.testsystem.defect.service.MenuService;
import com.testsystem.helper.JsonAndString;
import com.testsystem.utils.Constants;

import net.sf.json.JSONObject;

public class BlogLink extends TagSupport {
	String pro ="" ;
	private  List moduleList;
	private static final long serialVersionUID = 1L;
	public BlogLink() {   
	        System.out.println("displayaddtags 构造函数");   
	    }   
	public int doStartTag() throws JspException {   
	        System.out.println("doStartTag函数");   
	        return SKIP_BODY;  //不实现标签的体，即空体标签。   
	    }   
	
	    public int doEndTag() throws JspException {   
	        System.out.println("doEndTag函数");   
	        
	        User u =  UserUtil.getCurrentUser();
	    	if(	u==null){
	    		System.out.println("no  login");
	    	}else{
	    		
	    		pro ="/blog/Blog.do?userid="+u.getUserid();
	    	}
	        
	        JspWriter out=pageContext.getOut();   
//	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
//	        MenuService menuService = (MenuService) ctx.getBean("menuServiceImpl");
//	        moduleList = menuService.GetShareMenu();
//			System.out.println("88888" + moduleList.size());
//			String html ="" ;

	        try { 
	        out.println(pro);
	        pro ="" ;
	        }catch (IOException e) {   
	            e.printStackTrace();   
	        }     
	        return EVAL_PAGE;  
	    }   
}