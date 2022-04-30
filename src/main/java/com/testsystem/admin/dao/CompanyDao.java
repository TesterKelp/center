package com.testsystem.admin.dao;

import java.util.List;

import com.testsystem.admin.vo.Company;

public interface CompanyDao {

	public List GetCompanyInfo();
	
	public void saveCompanyInfo(Company company) ;
}
