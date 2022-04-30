package com.testsystem.backstage.service;

import java.util.List;

import com.testsystem.backstage.vo.Special;

public interface SpecialService {

	
	
	public List  GetItemSpecial(String dir) ;
	
	
	public Special GetSpecialById(int id);

	
	public void SpecialSave(Special special);
	
	public int  SpecialPageSize(String dir);
	
	
}
