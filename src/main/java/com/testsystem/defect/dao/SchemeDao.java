package com.testsystem.defect.dao;

import java.util.List;

import com.testsystem.defect.vo.Scheme;

public interface SchemeDao {
	public  List GetSchemeList();

	  public  int addScheme(Scheme paramScheme);

	  public  void SetFieldDefatultSchemeId(int paramInt1, int paramInt2);

	  public  void SchemeFieldInit(int paramInt);

	  public  List GetSchemeListBySchemeType(int paramInt);
}
