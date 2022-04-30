package com.testsystem.mift.dao.impl;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mift.dao.MitfCaseDao;
import com.testsystem.mift.vo.MitfBody;
import com.testsystem.mift.vo.MitfIndex;
@Repository
public class MitfCaseDaoImpl implements MitfCaseDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetIfCaseAll() {
		// TODO Auto-generated method stub
		String sql = "select * from mift_case_index  a,mift_face b  where a.interfaceid =b.interfaceid  ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public int SaveCaseIndex(MitfIndex mitfIndex) {
		// TODO Auto-generated method stub
		
		String sql="insert   into mift_case_index (interface_case_name,interface_case_desc,interfaceid,interface_type ,interface_header,userid) values "
		+"('"+mitfIndex.getCasename()+"','"+mitfIndex.getCasedesc()+"','"+mitfIndex.getInterfaceid()+"','"+mitfIndex.getType()+"','"+mitfIndex.getHeader()+"',"+mitfIndex.getUserid()+")" ;
		System.out.println(sql);
		 jdbcTemplate.update(sql);
		 return jdbcTemplate.queryForInt("SELECT LAST_INSERT_ID()") ;

	}
	public void SaveCaseBody(MitfBody mitfBody) {
		// TODO Auto-generated method stub
		String sql="insert   into mift_case_body (interface_case_id,dataname,datavalue) values "
		+"('"+mitfBody.getCaseid()+"','"+mitfBody.getDataname()+"','"+mitfBody.getDatavalue()+"')" ;
		System.out.println(sql);
		 jdbcTemplate.update(sql);
	}
	public List GetCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select * from mift_case_index  a,mift_face b  , mift_project  c  ,  mift_module d   where a.interfaceid =b.interfaceid   and b.projectid  =c.projectid   and b.moduleid =d.moduleid and  interface_case_id= "+caseid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List GetCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select * from mift_case_body   where interface_case_id = "+caseid  ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	@Override
	public List Mitf(int caseid) {
		// TODO Auto-generated method stub
		return null;
	}
}
