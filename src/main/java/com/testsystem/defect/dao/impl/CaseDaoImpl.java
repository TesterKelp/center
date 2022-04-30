package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.vo.User;
import com.testsystem.defect.dao.CaseDao;
import com.testsystem.defect.vo.DefCase;
@Repository
public class CaseDaoImpl implements CaseDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public List GetCase() {
		// TODO Auto-generated method stub
		String sql= "select *  from defect_case    c, admin_user au      where  c.cuserid=au.userid  " ;
		return jdbcTemplate.queryForList(sql);
	}
	public int AddDefectCase(DefCase defCase) {
		// TODO Auto-generated method stub
		
		String sql = "insert into defect_case (casename,casedesc,moduleid,priority,cuserid) values ('"+defCase.getCasename()+"','"+defCase.getCasedesc()+"','"+defCase.getModuleid()+"','"+defCase.getPriority()+"','"+defCase.getCuserid()+"') ";
			jdbcTemplate.update(sql);
			return	jdbcTemplate.queryForInt("select @@identity") ;
		
	}
	public void AddDefectCaseBody(String stepall, String resultall, int caseid,int corder) {
		// TODO Auto-generated method stub
		String sql = "insert into defect_case_body (caseid,corder,step,result) values ('"+caseid+"','"+corder+"','"+stepall+"','"+resultall+"')";
		System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public  List<DefCase> GetCaseByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select caseid, casename ,casedesc, moduleid ,cuserid  ,priority ,projectid ,createtime,casea,caseb,casec,cased,casee,casef,caseg,caseh,casei,casej from defect_case  where  caseid="+caseid;	
		System.out.println("SQl"+sql);
		List<DefCase> lst=this.jdbcTemplate.query(sql,new BeanPropertyRowMapper<DefCase>(DefCase.class));
		return lst;
	}
	public List GetCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String  sql="select * from defect_case_body  where  caseid="+caseid +" order by corder" ;
		
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public int CreateCase(String sql) {
		// TODO Auto-generated method stub
//		String sql = "insert into defect_case (casename,casedesc,moduleid,priority,cuserid) values ('"+defCase.getCasename()+"','"+defCase.getCasedesc()+"','"+defCase.getModuleid()+"','"+defCase.getPriority()+"','"+defCase.getCuserid()+"') ";
		jdbcTemplate.update(sql);
		return	jdbcTemplate.queryForInt("select @@identity") ;
	}
	@Override
	public List GetCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select  *  from defect_case a, admin_user   b where  a.cuserid=b.userid  and  a.caseid="+caseid;	

		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public List GetCaseByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String sql= "select *  from defect_case    c, admin_user au      where  c.cuserid=au.userid  and  projectid="+projectid ;
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public void DelCaseIndex(int caseid) {
		// TODO Auto-generated method stub
		String sql ="delete  from defect_case  where caseid ="+caseid ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}
	@Override
	public void DelCaseBody(int caseid) {
		// TODO Auto-generated method stub
		String sql ="delete  from defect_case_body  where caseid ="+caseid ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}
	  public List GetCaseSearchCondition(int userId)
	  {
	    String sql = "SELECT c.widget_china_name , c.widget_fieldname from defect_user_data as a , defect_project as b ,defect_scheme_widget as c where a.projectid =b.projectid  and a.userid=" + userId + 
	      " and c.scheme_id = b.case_scheme_id";
	    return this.jdbcTemplate.queryForList(sql);
	  }
}
