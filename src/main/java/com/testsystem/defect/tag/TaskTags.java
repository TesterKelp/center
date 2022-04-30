package com.testsystem.defect.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.service.BitsService;
import com.testsystem.defect.service.DefectService;
import com.testsystem.defect.service.TaskService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

public class TaskTags extends TagSupport {

	String taskid ;
	
	private List moduleList ;
	private List task;;
	String  coo="";


	public String getTaskid() {
		return taskid;
	}
	public void setTaskid(String taskid) {
		this.taskid = taskid;
	}
	public TaskTags() {   
        System.out.println("displayaddtags 构造函数");   
    }   
public int doStartTag() throws JspException {   
        System.out.println("doStartTag函数");   
        return SKIP_BODY;  //不实现标签的体，即空体标签。   
    }   


public int doEndTag() throws JspException {   
	String pro ="" ;
    System.out.println("doEndTag函数");   
    JspWriter out=pageContext.getOut();   
    ApplicationContext ct = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
    TaskService taskService = (TaskService) ct.getBean("taskServiceImpl");
	
	moduleList =taskService.GetShowOperationByTask();
	task = taskService.TaskDetail(Integer.parseInt(taskid));
	System.out.println(JsonAndString.ListToJsonToString(task));
	JSONObject bu = (JSONObject) JsonAndString.ListToJsonArray(task).get(0);
	for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
		 String fieldname =ob.getString("fieldname");
		coo=coo+"<tr height='25px'><td>"+ob.getString("chinaname")+":</td><td>"+bu.getString(fieldname)+"</td></tr>" ;
		}
	
	

	
	
    try { 
    out.println(coo);
    coo="" ;
    }catch (IOException e) {   
        e.printStackTrace();   
    }     
    return EVAL_PAGE;  
}  











}
