package com.testsystem.defect.tag;

import java.io.IOException;
import java.util.List;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.service.UserService;
import com.testsystem.admin.service.impl.UserServiceImpl;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

public class UserSelect111  extends TagSupport {
	private  List projectList;
	public UserSelect111() {   
	        System.out.println("displayaddtags 构造函数");   
	    }   
	public int doStartTag() throws JspException {   
	        System.out.println("doStartTag函数");   
	        return SKIP_BODY;  //不实现标签的体，即空体标签。   
	    }   
	
	    public int doEndTag() throws JspException {   
	    	String pro ="<option value='no'  selected = 'selected' >无</option>" ;
	    	
	        System.out.println("doEndTag函数");   
	        JspWriter out=pageContext.getOut();   
	        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
	        UserService userService = (UserService) ctx.getBean("UserServiceImpl");
	        projectList = userService.GetUserList();
			System.out.println("88888" + projectList.size());
			for (int i = 0; i <JsonAndString.ListToJsonArray(projectList).size(); i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(projectList).get(i);
				pro = pro + "<option value='"+ob.getString("userid")+"'>"+ob.getString("realname")+"</option>" ;
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
