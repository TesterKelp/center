package com.testsystem.api.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.api.dao.ApiCaseDao;
@Repository
public class ApiCaseDaoImpl implements ApiCaseDao {

	
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	List lst = new ArrayList();
	

	@Override
	public List GetInterfaceCase(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select *  from  wift_case a ,wift_face  b where a.interfaceid=b.interfaceid and  interface_case_id="+caseid ;	
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	@Override
	public List GetInterfaceRequest(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select *  from  wift_case_request  where  interface_case_id="+caseid ;	
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	
	@Override
	public List GetInterfaceRequestHeader(int caseid) {
		// TODO Auto-generated method stub
			String sql = "select *  from  wift_case_request_header  where  interface_case_id="+caseid ;	
			lst = jdbcTemplate.queryForList(sql);
			System.out.println(lst);
			return lst;
	}

	@Override
	public List GetInterfaceResponseAssert(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select *  from  wift_case_assertion  where  interface_case_id="+caseid ;	
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	@Override
	public List GetInterfaceResponseHeaderAssert(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select *  from  wift_case_assertion_header  where  interface_case_id="+caseid ;	
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}


	
	
	
	
	
	
}
