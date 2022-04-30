package com.testsystem.article.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.article.service.CateService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;


	public class  LoginInfo extends TagSupport {
		String pro ="" ;
		String login ="" ;
		private  List moduleList;
		private static final long serialVersionUID = 1L;
		public  LoginInfo() {   
		        System.out.println("displayaddtags ���캯��");   
		    }   
		public int doStartTag() throws JspException {   
		        System.out.println("doStartTag����");   
		        return SKIP_BODY;  //��ʵ�ֱ�ǩ���壬�������ǩ��   
		    }   
		
		    public int doEndTag() throws JspException {   
		        System.out.println("doEndTag����");   
		        
		        JspWriter out=pageContext.getOut();   
		        int userid =0 ;
		    	if(UserUtil.getCurrentUserinfo() == null) {
		    		login = "   <a href='/module/usercenter/login.jsp'>��¼</a>           "; //   <a href='/module/usercenter/register.jsp'>ע��</a>
				}else{
					userid =UserUtil.getCurrentUserinfo().getUserid();
					String username = UserUtil.getCurrentUserinfo().getUsername();
					 login = username +"hi:   <a href='/blog/Blog.do?userid="+userid+"'   >MyBlog</a>";
				}
		
		        try { 
		        out.println(login);
		        pro ="" ;
		        }catch (IOException e) {   
		            e.printStackTrace();   
		        }     
		        return EVAL_PAGE;  
		    }   
	}
