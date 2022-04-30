package com.testsystem.defect.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.testsystem.defect.service.SchemeWidgetService;
import com.testsystem.defect.vo.Widget;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

@Controller
@RequestMapping({"/module/defect"})
public class SchemeWidgetController
{

  @Autowired
  private SchemeWidgetService schemeWidgetService;
  private List moduleList;
  String msg = "";

  @RequestMapping(value={"/SchemeWidget.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String schemeWidget(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
    int schemeId = Integer.parseInt(request.getParameter("schemeId"));
    map.put("schemeId", Integer.valueOf(schemeId));
    return "/module/defect/SchemeWidget";
  }

  @RequestMapping(value={"/JsGetSchemeWidgetList.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public void JsGetSchemeList(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
    int schemeId = Integer.parseInt(request.getParameter("schemeId"));
    this.moduleList = this.schemeWidgetService.GetSchemeWidgetList(schemeId);
    String jsonstr = JsonAndString.ListToJsonToString(this.moduleList);
    System.out.println("jsonstr123" + jsonstr);
    response.getWriter().write(jsonstr);
    response.getWriter().flush();
  }
  @RequestMapping(value={"/addWidget.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  public void addWidget(ModelMap map, Widget widget, HttpServletResponse response, HttpServletRequest request) throws IOException {
    String widgetType = request.getParameter("widgetType");
    String widgetEnglishName = request.getParameter("widgetEnglishName");
    String widgetChinaName = request.getParameter("widgetChinaName");
    int schemeId = Integer.parseInt(request.getParameter("schemeId"));
    widget.setWidgetShow(0);
    widget.setWidgetOrder(0);
    widget.setWidgetDataSource(0);
    System.out.println("------" + widget.getWidgetChinaName());
    String fieldName = this.schemeWidgetService.GetWidgetFieldName(schemeId);
    if (this.schemeWidgetService.isExistEngLishName(widgetEnglishName)) {
      this.msg = "EnglishName is exist ! please change EnglishName";
    }
    else if (fieldName.equals("no")) {
      this.msg = "not find filename";
    } else {
      widget.setWidgetFieldName(fieldName);
      this.schemeWidgetService.AddWidget(widget);
      this.schemeWidgetService.setFieldNameIsUsed(fieldName, schemeId);
      this.msg = "sucessful";
    }

    response.getWriter().write("{\"msg\":\"" + this.msg + "\"}");
    response.getWriter().flush();
  }

  @RequestMapping(value={"/getWidgetDefaultValue.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public void getDefaultOperationvalue(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
  {
    int widgetId = Integer.parseInt(request.getParameter("widgetId"));
    int widgetType = Integer.parseInt(request.getParameter("widgetType"));
    System.out.println("widigetId" + widgetId + "widigetType:::::::::::::" + widgetType);
    if (widgetType == 1) {
      if (this.schemeWidgetService.GetWidgetDefaultValue(widgetId).equals("no"))
        this.msg = "setting default value";
      else {
        this.msg = this.schemeWidgetService.GetWidgetDefaultValue(widgetId);
      }
    }
    if (widgetType == 2) {
      this.moduleList = this.schemeWidgetService.GetWidgetSelectDefaultValue(widgetId);
      String html = "";
      for (int i = 0; i < JsonAndString.ListToJsonArray(this.moduleList).size(); i++) {
        JSONObject ob = (JSONObject)JsonAndString.ListToJsonArray(this.moduleList).get(i);
        html = html + "<option value=\"" + ob.getString("valueid") + "\">" + ob.getString("valuetext") + "</option>";
        System.out.println("htmlhtmlhtmlhtmlhtmlhtmlhtmlhtml" + html);
        this.msg = html;
      }
    }
    if (widgetType == 3) {
      if (this.schemeWidgetService.GetWidgetDefaultValue(widgetId).equals("no"))
        this.msg = "setting default value";
      else {
        this.msg = this.schemeWidgetService.GetWidgetDefaultValue(widgetId);
      }
    }
    response.getWriter().write(this.msg);
    response.getWriter().flush();
  }

  @RequestMapping(value={"/saveWidgetValue.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  public void saveOperationVale(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    System.out.println("ffffffffffffffffffffffffffffffffffffffff");
    int widgetId = Integer.parseInt(request.getParameter("widgetId"));
    int widgetType = Integer.parseInt(request.getParameter("widgetType"));
    String valueText = request.getParameter("valueText");
    boolean isfirst = true;
    isfirst = this.schemeWidgetService.isFirst(widgetId);
    if (widgetType == 1) {
      if (isfirst)
        this.schemeWidgetService.saveValueText(widgetId, valueText);
      else {
        this.schemeWidgetService.updataValueText(widgetId, valueText);
      }
    }
    if (widgetType == 2) {
      this.schemeWidgetService.saveValueText(widgetId, valueText);
    }
    if (widgetType == 3) {
      if (isfirst)
        this.schemeWidgetService.saveValueText(widgetId, valueText);
      else {
        this.schemeWidgetService.updataValueText(widgetId, valueText);
      }
    }
    this.msg = "save  ok !";
    response.getWriter().write("{\"msg\":\"" + this.msg + "\"}");
    response.getWriter().flush();
  }
}
