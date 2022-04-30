package com.testsystem.backstage.dao;

import java.util.List;

import com.testsystem.backstage.vo.Special;

public interface SpecialDao {

	
	public List  GetItemSpecial(String dir) ;
	
	
	public Special GetSpecialById(int id);
	
	public void SpecialSave(Special special);
	
	
	public int  SpecialPageSize(String dir);

}
