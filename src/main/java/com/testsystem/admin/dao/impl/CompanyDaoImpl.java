package com.testsystem.admin.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.dao.CompanyDao;
import com.testsystem.admin.vo.Company;
@Repository
public class CompanyDaoImpl implements CompanyDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	
	public List GetCompanyInfo() {
		// TODO Auto-generated method stub
		String sql = "select * from admin_company ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	
	public void saveCompanyInfo(Company company) {
		// TODO Auto-generated method stub
	  String  sql ="update admin_company  set  companyname ='"+company.getCompanyname()+"' ,telephone ='"+company.getTelephone()+"',fox ='"+company.getFox()+"',address ='"+company.getAddress()+"',pz = '"+company.getPz()+"',webaddress ='"+company.getWebaddress()+"',inwebaddress ='"+company.getInwebaddress()+"'";
		jdbcTemplate.update(sql);
		}

}
