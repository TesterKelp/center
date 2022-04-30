package com.testsystem.admin.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.service.NavigationService;
import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.service.BitsService;
import com.testsystem.defect.service.DefectService;
import com.testsystem.defect.service.TaskService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

public class MenuTags extends TagSupport {

	String typeid ;
	
	private List moduleList ;
	private List task;;
	String  coo="";


	
	public String getTypeid() {
		return typeid;
	}
	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}
	public MenuTags() {    
    }   
public int doStartTag() throws JspException {   
        return SKIP_BODY;  
    }   


public int doEndTag() throws JspException {   
	String pro ="" ;
    System.out.println("doEndTag����");   
    JspWriter out=pageContext.getOut();   
    ApplicationContext ct = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
    NavigationService navigationService = (NavigationService) ct.getBean("navigationServiceImpl");
	moduleList =navigationService.GetShowNavigationByNavigation_type(Integer.parseInt(typeid));
	String  html = "" ;
	for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
		html = html+"<a   href='"+ob.getString("navigation_url")+"'       target='"+ob.getString("navigation_target")+"'    >"+ob.getString("navigation_name")+"</a>  ";
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
