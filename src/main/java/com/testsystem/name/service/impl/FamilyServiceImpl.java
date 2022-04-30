package com.testsystem.name.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.name.dao.FamilyDao;
import com.testsystem.name.service.FamilyService;
@Service
public class FamilyServiceImpl implements FamilyService {

	
	
	@Autowired
	private  FamilyDao familyDao ;
	
	@Override
	public List GetAllFamily() {
		// TODO Auto-generated method stub
		return familyDao.GetAllFamily();
	}

	@Override
	public List GetFamilyById(int id) {
		// TODO Auto-generated method stub
		return familyDao.GetFamilyById(id);
	}

	@Override
	public List FamilygetChildren(int currId) {
		// TODO Auto-generated method stub
		return familyDao.FamilygetChildren(currId);
	}

	@Override
	public List GetFamilyMembersById(int id) {
		// TODO Auto-generated method stub
		return familyDao.GetFamilyMembersById(id);
	}

	@Override
	public List GetFamilyNameSelect(int familyId) {
		// TODO Auto-generated method stub
		return familyDao.GetFamilyNameSelect(familyId);
	}

}
