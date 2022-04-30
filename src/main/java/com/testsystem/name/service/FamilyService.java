package com.testsystem.name.service;

import java.util.List;

public interface FamilyService {
	
	
	public  List GetAllFamily();
	
	public  List GetFamilyById(int id);
	public  List GetFamilyMembersById(int id);
	
	public  List FamilygetChildren(int currId);
	
	public  List GetFamilyNameSelect(int familyId);
	
	
	

}
