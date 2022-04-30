package com.testsystem.admin.service;

import java.util.List;

import com.testsystem.admin.vo.Company;

public interface CompanyService {
	
	public List GetCompanyInfo();

	public void saveCompanyInfo(Company company);
}
