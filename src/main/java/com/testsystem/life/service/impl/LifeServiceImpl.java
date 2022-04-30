package com.testsystem.life.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.life.dao.LifeDao;
import com.testsystem.life.service.LifeService;

@Service
public class LifeServiceImpl implements LifeService
{

  @Autowired
  private LifeDao lifeDao;

  public List NameList()
  {
    return this.lifeDao.NameList();
  }

  public List GetNameDetail(int nameid)
  {
    return this.lifeDao.GetNameDetail(nameid);
  }

  public boolean HaveName(String name)
  {
    return this.lifeDao.HaveName(name);
  }

  public int AddLastName(String name)
  {
    return this.lifeDao.AddLastName(name);
  }

  public boolean HaveFullName(String fullname)
  {
    return this.lifeDao.HaveFullName(fullname);
  }

  public int AddFullName(String fullname, int sex, int nameid)
  {
    return this.lifeDao.AddFullName(fullname, sex, nameid);
  }

  public boolean HaveSiteName(String name, String fromweb)
  {
    return this.lifeDao.HaveSiteName(name, fromweb);
  }

  public int AddSiteName(String name, String fromweb, String url)
  {
    return this.lifeDao.AddSiteName(name, fromweb, url);
  }

  public int GetLastNameId(String name)
  {
    return this.lifeDao.GetLastNameId(name);
  }

  public String GetSiteName(String fromweb)
  {
    return this.lifeDao.GetSiteName(fromweb);
  }

  public String GetSiteNameUrl(String fromweb, String name)
  {
    return this.lifeDao.GetSiteNameUrl(fromweb, name);
  }

  public void SetSiteNameIsEnd(String fromweb, String name)
  {
    this.lifeDao.SetSiteNameIsEnd(fromweb, name);
  }

  public List GetFullName(int nameid, int sex)
  {
    return this.lifeDao.GetFullName(nameid, sex);
  }

  public int AddNameSource(int nameid, String origin, String person)
  {
    return this.lifeDao.AddNameSource(nameid, origin, person);
  }

  public void AddLastNameMore(String sql)
  {
    this.lifeDao.AddLastNameMore(sql);
  }

  public List findName(String word, int sex, int searchtype)
  {
    return this.lifeDao.findName(word, sex, searchtype);
  }

  public int AddSql(String sql)
  {
    return this.lifeDao.AddSql(sql);
  }

  public List GetList(String sql)
  {
    return this.lifeDao.GetList(sql);
  }
}