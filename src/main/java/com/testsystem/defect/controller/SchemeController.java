package com.testsystem.defect.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.service.SchemeService;
import com.testsystem.defect.vo.Scheme;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;

@Controller
@RequestMapping({"/module/defect"})
public class SchemeController {

	@Autowired
	  private SchemeService schemeService;
	  private List moduleList;

	  @RequestMapping(value={"/SchemeManage.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public String SchemeManage(ModelMap map, HttpServletResponse response, HttpServletRequest request)
	    throws IOException
	  {
	    return "/module/defect/SchemeManage";
	  }

	  @RequestMapping(value={"/JsGetSchemeList.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public void JsGetSchemeList(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    this.moduleList = this.schemeService.GetSchemeList();
	    String jsonstr = JsonAndString.ListToJsonToString(this.moduleList);
	    System.out.println("jsonstr123" + jsonstr);
	    response.getWriter().write(jsonstr);
	    response.getWriter().flush();
	  }

	  @RequestMapping(value={"/AddScheme.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
	  public void addScheme(ModelMap map, Scheme scheme, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    scheme.setSchemeCreateUserId(UserUtil.getCurrentUserinfo().getUserid());
	    scheme.setSchemeCreateTime(DataFormat.DataTime());
	    int schemeId = this.schemeService.addScheme(scheme);
	    this.schemeService.SetFieldSchemeInit(schemeId, scheme.getSchemeType());
	    response.getWriter().write("ok");
	    response.getWriter().flush();
	  }
	
}
