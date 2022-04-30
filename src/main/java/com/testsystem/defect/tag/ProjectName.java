package com.testsystem.defect.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.defect.service.BitsService;

public class ProjectName extends TagSupport
{
  private List projectList;



  public int doStartTag() throws JspException {   
      System.out.println("doStartTag");   
      return SKIP_BODY;     
  }
  
  
  public int doEndTag() throws JspException {
    String pro = "";
    JspWriter out = this.pageContext.getOut();
    ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(this.pageContext.getServletContext());
    BitsService BitsService = (BitsService)ctx.getBean("bitsServiceImpl");
    pro = BitsService.GetProjectName(); 
    try {
      out.println(pro);
      pro = "";
    } catch (IOException e) {
      e.printStackTrace();
    }
    return EVAL_PAGE; 
  }
}