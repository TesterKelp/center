package com.testsystem.life.service;

import java.util.List;

public   interface LifeService
{
  public   List NameList();

  public   List GetNameDetail(int paramInt);

  public   boolean HaveName(String paramString);

  public   int AddLastName(String paramString);

  public   void AddLastNameMore(String paramString);

  public   int AddNameSource(int paramInt, String paramString1, String paramString2);

  public   int GetLastNameId(String paramString);

  public   boolean HaveFullName(String paramString);

  public   int AddFullName(String paramString, int paramInt1, int paramInt2);

  public   int AddSql(String paramString);

  public   List GetList(String paramString);

  public   List findName(String paramString, int paramInt1, int paramInt2);

  public   List GetFullName(int paramInt1, int paramInt2);

  public   boolean HaveSiteName(String paramString1, String paramString2);

  public   int AddSiteName(String paramString1, String paramString2, String paramString3);

  public   String GetSiteName(String paramString);

  public   String GetSiteNameUrl(String paramString1, String paramString2);

  public  void SetSiteNameIsEnd(String paramString1, String paramString2);
}