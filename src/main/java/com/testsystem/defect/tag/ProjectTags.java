package com.testsystem.defect.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.service.UserService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

public class ProjectTags extends TagSupport
{
  private List projectList;

  public ProjectTags()
  {
    System.out.println("displayaddtags 构造函数");
  }
  public int doStartTag() throws JspException {
    System.out.println("doStartTag函数");
    return 0;
  }

  public int doEndTag() throws JspException {
    String pro = "<option value='no'  selected = 'selected' >无</option>";

    System.out.println("doEndTag函数");
    JspWriter out = this.pageContext.getOut();
    ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(this.pageContext.getServletContext());
    UserService userService = (UserService)ctx.getBean("UserServiceImpl");
    this.projectList = userService.GetUserList();
    System.out.println("88888" + this.projectList.size());

    for (int i = 0; i < JsonAndString.ListToJsonArray(this.projectList).size(); i++) {
      JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.projectList).get(i);
      pro = pro + "<option value='" + ob.getString("userid") + "'>" + ob.getString("realname") + "</option>";
    }
    try
    {
      out.println(pro);
      pro = "";
    } catch (IOException e) {
      e.printStackTrace();
    }
    return 6;
  }
}
