package com.testsystem.mobile.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mobile.dao.MobileOperationDao;
@Repository
public class MobileOperationDaoImpl implements MobileOperationDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate ;

	public List GetAllOperation() {
		// TODO Auto-generated method stub
		String sql = "SELECT * from mo_operation  ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		//System.out.println(lst);
		return lst;
	}

	public List GetAllOperationByStatus(int Status) {
		// TODO Auto-generated method stub
		String sql = "SELECT * from mo_operation where operationstatus = "+Status;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}

}
