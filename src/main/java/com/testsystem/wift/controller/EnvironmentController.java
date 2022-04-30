package com.testsystem.wift.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.testsystem.helper.JsonAndString;
import com.testsystem.wift.service.EnvironmentService;

import net.sf.json.JSONObject;

@Controller
@RequestMapping({"/wift"})
public class EnvironmentController
{

  @Autowired
  private EnvironmentService environmentService;
  private List moduleList;

  @RequestMapping(value={"/GetEnvironmentSelect.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public void GetModuleSelect(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    int projectid = Integer.parseInt(request.getParameter("projectid"));
    this.moduleList = this.environmentService.GetEnvironmentListByProjectId(projectid);
    String html = "";
    for (int i = 0; i < JsonAndString.ListToJsonArray(this.moduleList).size(); ++i) {
      JSONObject oc = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);
      html = html + "<label class='control-label' onclick=\"asdd('" + oc.getString("servervalue") + "')\">" + oc.getString("servername") + " </label>" + " ";
    }
    System.out.println("projcet" + html);
    response.getWriter().write(html);
    response.getWriter().flush();
  }

  @RequestMapping(value={"/GetEnvironmentInit.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public void GetEnvironment(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
  {
    int ProjectId = Integer.parseInt(request.getParameter("projectid"));
    this.moduleList = this.environmentService.GetEnvironmentByProjectId(ProjectId);
    String html = "";
    for (int i = 0; i < JsonAndString.ListToJsonArray(this.moduleList).size(); ++i) {
      JSONObject oc = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);
      html = html + "<label class='control-label' onclick=\"AddEnvironmentToDirectories" + 
        "('" + oc.getString("environmentid") + "','" + oc.getString("environmentname") + "')\">" + oc.getString("environmentname") + " </label>" + " ";
    }
    System.out.println("projcet" + html);
    response.getWriter().write(html);
    response.getWriter().flush();
  }

  @RequestMapping(value={"/Wift_ProjectEnvironment.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String GetTask(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    return "/module/wift/Wift_ProjectEnvironment";
  }

  @RequestMapping(value={"/Wift_GetEnvironmentByProjectId.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String GetProjectEnvironment(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
    int ProjectId = Integer.parseInt(request.getParameter("projectid"));
    this.moduleList = this.environmentService.GetEnvironmentByProjectId(ProjectId);
    map.put("environmentList", this.moduleList);
    return "/module/wift/Wift_ProjectEnvironment";
  }

  @RequestMapping(value={"/GetEnvironmentType.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public void GetEnvironmentType(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    int ProjectId = Integer.parseInt(request.getParameter("projectid"));
    this.moduleList = this.environmentService.GetEnvironmentTypeByProjectId(ProjectId);
    String html = "";
    for (int i = 0; i < JsonAndString.ListToJsonArray(this.moduleList).size(); ++i) {
      JSONObject oc = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);
      if (i == 0)
        html = html + " <li class=\"active\">"
        		+ "  <input type='hidden' class='form-control' id='defaulttypeid' value='" + oc.getString("typeid") + "'>          "
        		+ "<a data-toggle=\"tab\" href=\"#tab-2\" onclick=\"GetEnvironmentTypeServer('" + oc.getString("typeid") + "');\"><i class=\"fa fa-briefcase\"></i> " + oc.getString("typename") + "</a>";
      else
        html = html + " <li class=\"\"><a data-toggle=\"tab\" href=\"#tab-2\" onclick=\"GetEnvironmentTypeServer('" + oc.getString("typeid") + "');\"><i class=\"fa fa-briefcase\"></i> " + oc.getString("typename") + "</a>";
    }
    
    if(moduleList.size()==0){
    	html="  <input type='hidden' class='form-control' id='defaulttypeid' value=''>   ";
    }
    
    System.out.println("projcet" + html);
    response.getWriter().write(html);
    response.getWriter().flush();
  }

  @RequestMapping(value={"/GetEnvironmentTypeServer.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public void GetEnvironmentTypeServer(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    int ProjectId = Integer.parseInt(request.getParameter("projectid"));
    int TypeId = Integer.parseInt(request.getParameter("typeid"));
    System.out.println("TypeId======="+TypeId);
    this.moduleList = this.environmentService.GetEnvironmentTypeServer(ProjectId, TypeId);
  
//    String html = "";
//    for (int i = 0; i < JsonAndString.ListToJsonArray(this.moduleList).size(); ++i) {
//      JSONObject oc = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);
//      html = html + "<tr>  <td>" + oc.getString("serverid") + " </td> <td>" + oc.getString("environmentname") + "</td><td> <input type=\"text\" id=\"modulename\"  onblur=\"SaveServerValue('" + oc.getString("serverid") + "',this)\"          class=\"form-control\" value=\"" + oc.getString("servervalue") + "\" ></td> <td class=\"contact-type\"> </td> </tr> ";
//    }
//    System.out.println("projcet" + html);
    
    String jsonstr = JsonAndString.ListToJsonToString(this.moduleList);
    System.out.println("======="+jsonstr);
    response.getWriter().write(jsonstr);
//    response.getWriter().write(html);
    response.getWriter().flush();
  }

  @RequestMapping(value={"/SaveServerValue.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public void SaveServerValue(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    String text;
    int ServerId = Integer.parseInt(request.getParameter("serverid"));
    String ServerValue = request.getParameter("servervalue");
    int rs = this.environmentService.SaveServerValue(ServerId, ServerValue);
    if (rs == 1)
      text = "ok";
    else
      text = "failed";

    response.getWriter().write(text);
    response.getWriter().flush();
  }


  
 
  
  
  @RequestMapping(value={"/GetEnvironmentByProjectId.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public void GetModuleByProjectId(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    int ProjectId = Integer.parseInt(request.getParameter("projectid"));
    System.out.println("projectid" + ProjectId);
    this.moduleList = this.environmentService.GetEnvironmentByProjectId(ProjectId);
    String jsonstr = JsonAndString.ListToJsonToString(this.moduleList);
    System.out.println("======="+jsonstr);
    response.getWriter().write(jsonstr);
    response.getWriter().flush();
  }
// 添加服务器
  @RequestMapping(value={"/CreateEnvironmentByProjectId.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  public void CreateModuleByProjectId(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    int ProjectId = Integer.parseInt(request.getParameter("ProjectId"));
    String EnvironmentName = request.getParameter("EnvironmentName");
    int EnvironmentId = this.environmentService.CreateEnvironmentByProjectId(ProjectId, EnvironmentName);

    this.moduleList = this.environmentService.GetEnvironmentTypeByProjectId(ProjectId);
    for (int i = 0; i < JsonAndString.ListToJsonArray(this.moduleList).size(); ++i) {
      JSONObject oc = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);
      int TypeId = Integer.parseInt(oc.getString("typeid"));
      System.out.println("TypeId=========" + TypeId);
      this.environmentService.CreateGetEnvironmentTypeServer(TypeId, EnvironmentId);
    }
    String jsonstr = "ok";
    response.getWriter().write(jsonstr);
    response.getWriter().flush();
  }

  
  
  
  @RequestMapping(value={"/DelEnvironment.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  public void delProject(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    int environmentid = Integer.parseInt(request.getParameter("environmentid"));
    
    
//    if (this.inProjectService.HavePageOrModuleByProjectId(projectid)) {  此处实际上应当判断当前服务器是否被接口所使用，如果使用 不能删除。未使用才能删除。现状未加判断
//      this.msg = "该项目下还有模块数据，请先删除";
//    } else {
      this.environmentService.DelEnvironment(environmentid);
     String msg = "删除成功";
//    }
    response.setContentType("text/html; charset=utf-8");
    response.getWriter().write(msg);
    response.getWriter().flush();
  }
  
  
  
  
  
  
  
  
  
  @RequestMapping(value={"/CreateEnvironmentTypeByProjectId.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  public void CreateEnvironmentTypeByProjectId(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    System.out.println("dfdfdfsdfsadfsdfasdfsadfasdf");
    int ProjectId = Integer.parseInt(request.getParameter("ProjectId"));
    String TypeName = request.getParameter("TypeName");
    int TypeId = this.environmentService.CreateEnvironmentTypeByProjectId(ProjectId, TypeName);
    this.moduleList = this.environmentService.GetEnvironmentByProjectId(ProjectId);
    for (int i = 0; i < JsonAndString.ListToJsonArray(this.moduleList).size(); ++i) {
      JSONObject oc = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);
      int EnvironmentId = Integer.parseInt(oc.getString("environmentid"));
      System.out.println("EnvironmentId=========" + EnvironmentId);
      this.environmentService.CreateGetEnvironmentTypeServer(TypeId, EnvironmentId);
    }
    String jsonstr = "ok";
    response.getWriter().write(jsonstr);
    response.getWriter().flush();
  }
  
  
  

  
  
  
  
  
  
  
  
  
}
