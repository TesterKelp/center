package com.testsystem.defect.service;

import java.util.List;

import com.testsystem.defect.vo.Scheme;

public interface SchemeService {

	
	
	
	public  List GetSchemeList();

	  public  List GetSchemeListBySchemeType(int paramInt);

	  public  int addScheme(Scheme paramScheme);

	  public  void SetFieldSchemeInit(int paramInt1, int paramInt2);
	
	
	
	
	
	
}
