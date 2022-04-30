package com.testsystem.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.dao.CompanyDao;
import com.testsystem.admin.service.CompanyService;
import com.testsystem.admin.vo.Company;
@Service
public class CompanyServiceImpl implements CompanyService {

	
	@Autowired
	private CompanyDao companyDao ;
	public List GetCompanyInfo() {
		// TODO Auto-generated method stub
		return companyDao.GetCompanyInfo() ;
	}
	public void saveCompanyInfo(Company company) {
		// TODO Auto-generated method stub
		
		companyDao.saveCompanyInfo(company);
	}

}
