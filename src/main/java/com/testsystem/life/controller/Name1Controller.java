package com.testsystem.life.controller;

import java.io.IOException;
import java.io.PrintStream;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.testsystem.life.service.LifeService;

@Controller
@RequestMapping({"/life"})
public class Name1Controller
{

  @Autowired
  private LifeService lifeService;
  private List st;
  private List name;
  private List nameinfo;

  @RequestMapping(value={"/allname.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String allname(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    this.st = this.lifeService.NameList();
    map.put("namelst", this.st);
    return "name/allname";
  }

  @RequestMapping(value={"/NameDetail.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String NameDetail(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
  {
    int nameid = Integer.parseInt(request.getParameter("nameid"));
    this.st = this.lifeService.GetNameDetail(nameid);
    this.name = this.lifeService.GetFullName(nameid, 3);
    map.put("namelst", this.st);
    map.put("name", this.name);
    return "name/NameDetail";
  }

  @RequestMapping(value={"/WxNameDetail.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String WxNameDetail(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    int nameid = Integer.parseInt(request.getParameter("nameid"));
    this.st = this.lifeService.GetNameDetail(nameid);
    this.name = this.lifeService.GetFullName(nameid, 3);
    map.put("namelst", this.st);
    map.put("name", this.name);
    return "/module/name/WxNameDetail";
  }

  @RequestMapping(value={"/NameSource.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String NameSource(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    int nameid = Integer.parseInt(request.getParameter("nameid"));
    this.st = this.lifeService.GetNameDetail(nameid);
    this.name = this.lifeService.GetFullName(nameid, 3);
    map.put("namelst", this.st);
    map.put("name", this.name);
    return "name/NameSource";
  }

  @RequestMapping(value={"/NamePerson.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String NameNamePerson(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
    int nameid = Integer.parseInt(request.getParameter("nameid"));
    this.st = this.lifeService.GetNameDetail(nameid);
    this.name = this.lifeService.GetFullName(nameid, 3);
    map.put("namelst", this.st);
    map.put("name", this.name);
    return "name/NamePerson";
  }

  @RequestMapping(value={"/FindName.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String SysSettiaping(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
  {
    String name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
    System.out.println("nnnnnnn:" + name);
 //   int searchType;
    int searchType;
    if ((name.contains("x")) || (name.contains("X")))
      searchType = 2;
    else {
      searchType = 1;
    }

    int nameid = Integer.parseInt(request.getParameter("nameid"));
    this.nameinfo = this.lifeService.GetNameDetail(nameid);
    this.st = this.lifeService.findName(name, 3, searchType);
    map.put("name", this.st);
    map.put("namelst", this.nameinfo);
    return "name/FindResult";
  }

  @RequestMapping(value={"/WxFindName.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String SysSddettiaping(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    String name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
    System.out.println("nnnnnnn:" + name);
    if ((name != null) && (!name.equals("")))
    {
 //     int searchType;
      int searchType;
      if ((name.contains("x")) || (name.contains("X")))
        searchType = 2;
      else {
        searchType = 1;
      }
      this.st = this.lifeService.findName(name, 3, searchType);
    }
    map.put("name", this.st);
    return "name/WxFindResult";
  }

  @RequestMapping(value={"/SourceList.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String allnamesource(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
  {
    this.st = this.lifeService.NameList();
    map.put("namelst", this.st);
    return "name/SourceList";
  }

  @RequestMapping(value={"/BoyName.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String BoyName(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
    String sql = "select * from life_name_lib where sex=1 and wordnumber=1";
    this.st = this.lifeService.GetList(sql);
    map.put("namelst", this.st);
    return "name/BoyName";
  }

  @RequestMapping(value={"/GirlName.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String GirlName(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
    String sql = "select * from life_name_lib where sex=2 and wordnumber=1";
    this.st = this.lifeService.GetList(sql);
    map.put("namelst", this.st);
    return "name/GirlName";
  }

  @RequestMapping(value={"/LifeList.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String LifeList(ModelMap map, HttpServletResponse response, HttpServletRequest request)
    throws IOException
  {
    int id = Integer.parseInt(request.getParameter("id"));
    String sql = "select * from life_content  where cateid=" + id + " ";
    this.st = this.lifeService.GetList(sql);
    map.put("namelst", this.st);
    return "name/LifeList";
  }

  @RequestMapping(value={"/LifeDetail.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String LifeDetail(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
    int id = Integer.parseInt(request.getParameter("id"));
    String sql = "select * from life_content  where articleid=" + id + " ";
    this.st = this.lifeService.GetList(sql);
    map.put("namelst", this.st);
    return "name/LifeDetail";
  }
}