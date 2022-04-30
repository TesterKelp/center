package com.testsystem.defect.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.testsystem.defect.util.ProjectOperation;

@Controller
@RequestMapping({"/module/defect"})
public class QualityPortalController
{
  @RequestMapping(value={"/QualityPortal.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String Actio(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    int projectid = ProjectOperation.GetProjectId(response, request);
    System.out.println("this projectid is ----- " + projectid);
    return "/module/defect/QualityPortal";
  }
}