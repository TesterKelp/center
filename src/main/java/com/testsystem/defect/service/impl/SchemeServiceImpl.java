package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.defect.dao.SchemeDao;
import com.testsystem.defect.service.SchemeService;
import com.testsystem.defect.vo.Scheme;

@Service
public class SchemeServiceImpl implements SchemeService
{

  @Autowired
  private SchemeDao schemeDao;

  public List GetSchemeList()
  {
    return this.schemeDao.GetSchemeList();
  }

  public List GetSchemeListBySchemeType(int schemeType)
  {
    return this.schemeDao.GetSchemeListBySchemeType(schemeType);
  }

  public int addScheme(Scheme scheme)
  {
    return this.schemeDao.addScheme(scheme);
  }

  public void SetFieldSchemeInit(int schemeId, int schemeType)
  {
    this.schemeDao.SetFieldDefatultSchemeId(schemeId, schemeType);
    this.schemeDao.SchemeFieldInit(schemeId);
  }
}
