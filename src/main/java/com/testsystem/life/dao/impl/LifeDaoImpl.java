package com.testsystem.life.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.life.dao.LifeDao;

@Repository
public class LifeDaoImpl implements LifeDao
{

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public List NameList()
  {
    String sql = "select * from life_name ";
    List lst = new ArrayList();
    lst = this.jdbcTemplate.queryForList(sql);

    return lst;
  }

  public List GetNameDetail(int nameid)
  {
    String sql = "select * from life_name where nameid=" + nameid;
    List lst = new ArrayList();
    lst = this.jdbcTemplate.queryForList(sql);

    return lst;
  }

  public boolean HaveName(String name)
  {
    String sql = "select count(*) from life_name where name='" + name + "'";
    int rs = ((Integer)this.jdbcTemplate.queryForObject(sql, Integer.class)).intValue();
    if (rs > 0) {
      return true;
    }
    return false;
  }

  public int AddLastName(String name)
  {
    String sql = "insert into life_name (name) values ('" + name + "')";
    this.jdbcTemplate.update(sql);
    return ((Integer)this.jdbcTemplate.queryForObject("select @@identity", Integer.class)).intValue();
  }

  public boolean HaveFullName(String fullname)
  {
    String sql = "select count(*) from life_full_name where fullname='" + fullname + "'";
    int rs = ((Integer)this.jdbcTemplate.queryForObject(sql, Integer.class)).intValue();
    if (rs > 0) {
      return true;
    }
    return false;
  }

  public int AddFullName(String fullname, int sex, int nameid)
  {
    String sql = "insert into life_full_name (fullname,sex,nameid) values ('" + fullname + "'," + sex + "," + nameid + ")";
    this.jdbcTemplate.update(sql);

    return 1;
  }

  public boolean HaveSiteName(String name, String fromweb)
  {
    String sql = "select count(*) from life_GetData where name='" + name + "' and fromweb='" + fromweb + "'";
    System.out.println(sql);
    int rs = ((Integer)this.jdbcTemplate.queryForObject(sql, Integer.class)).intValue();
    if (rs > 0) {
      return true;
    }
    return false;
  }

  public int AddSiteName(String name, String fromweb, String url)
  {
    String sql = "insert into life_GetData (name,fromweb,url) values ('" + name + "','" + fromweb + "','" + url + "')";
    System.out.println(sql);
    this.jdbcTemplate.update(sql);
    return ((Integer)this.jdbcTemplate.queryForObject("select @@identity", Integer.class)).intValue();
  }

  public int GetLastNameId(String name)
  {
    String sql = "select nameid from life_name where name='" + name + "'";
    System.out.println(sql);
    return ((Integer)this.jdbcTemplate.queryForObject(sql, Integer.class)).intValue();
  }

  public String GetSiteName(String fromweb)
  {
    String sql = "select name from life_GetData where fromweb='" + fromweb + "' and dataend=0 limit 1";
    System.out.println(sql);
    return (String)this.jdbcTemplate.queryForObject(sql, String.class);
  }

  public String GetSiteNameUrl(String fromweb, String name)
  {
    String sql = "select url from life_GetData where fromweb='" + fromweb + "' and name='" + name + "'";
    System.out.println(sql);
    return (String)this.jdbcTemplate.queryForObject(sql, String.class);
  }

  public void SetSiteNameIsEnd(String fromweb, String name)
  {
    String sql = "update  life_GetData  set  dataend=1  where fromweb ='" + fromweb + "' and   name= '" + name + "'";
    System.out.println(sql);
    this.jdbcTemplate.update(sql);
  }

  public List GetFullName(int nameid, int sex)
  {
    String sql = "";
    if (sex == 1)
      sql = "select * from life_full_name where nameid='" + nameid + "' and sex='" + sex + "'";
    else if (sex == 2)
      sql = "select * from life_full_name where nameid='" + nameid + "' and sex='" + sex + "'";
    else {
      sql = "select * from life_full_name where nameid='" + nameid + "'";
    }

    System.out.println(sql);
    return this.jdbcTemplate.queryForList(sql);
  }

  public int AddNameSource(int nameid, String origin, String person)
  {
    String sql = "update  life_name     set   origin ='" + origin + "' ,  person='" + person + "'   where nameid =" + nameid;
    System.out.println(sql);
    this.jdbcTemplate.update(sql);
    return 1;
  }

  public void AddLastNameMore(String sql)
  {
    this.jdbcTemplate.update(sql);
  }

  public List findName(String word, int sex, int searchtype)
  {
    String sql = "";
    if (searchtype == 1) {
      sql = "select * from life_full_name where fullname like '" + word + "%' ";
    } else {
      String start = word.substring(0, word.indexOf("x"));
      System.out.println("start:" + start);
      String end = word.substring(start.length() + 1, word.length());
      System.out.println("end:" + end);
      sql = "select * from life_full_name where fullname like '" + start + "%" + end + "'";
    }

    System.out.println(sql);
    return this.jdbcTemplate.queryForList(sql);
  }

  public int AddSql(String sql)
  {
    System.out.println(sql);
    this.jdbcTemplate.update(sql);
    return ((Integer)this.jdbcTemplate.queryForObject("select @@identity", Integer.class)).intValue();
  }

  public List GetList(String sql)
  {
    System.out.println(sql);
    List lst = new ArrayList();
    lst = this.jdbcTemplate.queryForList(sql);

    return lst;
  }
}