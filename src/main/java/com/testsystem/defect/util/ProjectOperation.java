package com.testsystem.defect.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProjectOperation
{
  public static int GetProjectId(HttpServletResponse response, HttpServletRequest request)
  {
    int projectId = 0;
    boolean fo = true;

    Cookie[] cs = request.getCookies();
    for (int i = 0; (cs != null) && (i < cs.length); i++)
    {
      if ("projectid".equals(cs[i].getName())) {
        fo = false;
      }
    }
    if (fo) {
      System.out.println("this is cookies is not found!");
      projectId = 2;

      Cookie cookie = new Cookie("projectid", Integer.toString(projectId));
      response.addCookie(cookie);
    } else {
      Cookie[] cookies = request.getCookies();
      for (Cookie ck : cookies) {
        if (ck.getName().equalsIgnoreCase("projectid")) {
          System.out.println("get cookie projectid " + ck.getValue());
          projectId = Integer.parseInt(ck.getValue());
          break;
        }
      }
    }
    return projectId;
  }

  public static void SetProjectId(HttpServletResponse response, HttpServletRequest request, String projectId)
  {
    Cookie cookie = new Cookie("projectid", projectId);
    response.addCookie(cookie);
  }
}