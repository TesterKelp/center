package com.testsystem.wift.dao.Impl;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.wift.dao.IfCaseDao;
import com.testsystem.wift.vo.CaseAssertion;
import com.testsystem.wift.vo.CaseBody;
import com.testsystem.wift.vo.CaseHeaderAssertion;
import com.testsystem.wift.vo.CaseIndex;
import com.testsystem.wift.vo.CaseIndex1;
import com.testsystem.wift.vo.CaseRequest;
import com.testsystem.wift.vo.CaseRequestHeader;
@Repository
public class IfCaseDaoImpl implements IfCaseDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetIfCaseAll() {
		// TODO Auto-generated method stub
		 String sql = "select * from wift_case  a , wift_face  b, wift_project c,wift_module d ,admin_user e where  a.userid=e.userid and a.interfaceid =b.interfaceid  and b.projectid=c.projectid and b.moduleid =d.moduleid  ";
		    List lst = new ArrayList();
		    lst = this.jdbcTemplate.queryForList(sql);
		    System.out.println(lst);
		    return lst;
	}
	public int SaveCaseIndex(CaseIndex1 caseindex) {
		// TODO Auto-generated method stub
		
		String sql="insert   into wift_case (interface_case_name,interface_case_desc,interfaceid,interface_type ,interface_header,directories,userid) values "
		+"('"+caseindex.getCasename()+"','"+caseindex.getCasedesc()+"','"+caseindex.getInterfaceid()+"','"+caseindex.getType()+"','"+caseindex.getHeader()+"','"+caseindex.getDirectories()+"',"+caseindex.getUserid()+")" ;
		System.out.println(sql);
		 jdbcTemplate.update(sql);
		 return jdbcTemplate.queryForInt("SELECT LAST_INSERT_ID()") ;

	}
	public void SaveCaseBody(CaseBody casebody) {
		// TODO Auto-generated method stub
		String sql="insert   into wift_case_body (interface_case_id,dataname,datavalue) values "
		+"('"+casebody.getCaseid()+"','"+casebody.getDataname()+"','"+casebody.getDatavalue()+"')" ;
		System.out.println(sql);
		 jdbcTemplate.update(sql);
	}
	public List GetCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select * from wift_case  a , wift_face  b, wift_project c,wift_module d ,admin_user e,wift_environment g  where   b.environmentid=g.environmentid  and  a.userid=e.userid and a.interfaceid =b.interfaceid  and b.projectid=c.projectid and b.moduleid =d.moduleid and   a.interface_case_id = " + caseid;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	}
	public List GetCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select * from wift_case_body   where interface_case_id = "+caseid  ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	
	

	  public int CreateCaseIndex(CaseIndex caseIndex)
	  {
	    String sql = "insert into wift_case (interface_case_name,interface_case_desc,interfaceid ,userid,serverid,createtime) values ('" + 
	      caseIndex.getInterface_case_name() + "','" + caseIndex.getInterface_case_desc() + "','" + caseIndex.getInterfaceid() + "','" + caseIndex.getUserid() + "'," + caseIndex.getServerid() + " ,'"+caseIndex.getCreatetime()+"'    )";
	    System.out.println(sql);
	    this.jdbcTemplate.update(sql);

	    return ((Integer)this.jdbcTemplate.queryForObject("SELECT LAST_INSERT_ID()", Integer.class)).intValue();
	  }

	  public void CreateCaseRequest(CaseRequest caseRequest)
	  {
	    String sql = "insert into wift_case_request (interface_case_id,dataname,datavalue ,datasort) values ('" + 
	      caseRequest.getInterface_case_id() + "','" + caseRequest.getDataname() + "','" + caseRequest.getDatavalue() + "'," + caseRequest.getDatasort() + ")";
	    System.out.println(sql);
	    this.jdbcTemplate.update(sql);
	  }

	  public void CreateCaseRequestHeader(CaseRequestHeader caseRequestHeader)
	  {
	    String sql = "insert into wift_case_request_header (interface_case_id,dataname,datavalue ,datasort) values ('" + 
	      caseRequestHeader.getInterface_case_id() + "','" + caseRequestHeader.getDataname() + "','" + caseRequestHeader.getDatavalue() + "'," + caseRequestHeader.getDatasort() + ")";
	    System.out.println(sql);
	    this.jdbcTemplate.update(sql);
	  }

	  public List GetCaseIndex(int caseId)
	  {
	    String sql = "select * from wift_case  a , wift_face  b, wift_project c,wift_module d ,admin_user e,wift_environment g  where   b.environmentid=g.environmentid  and  a.userid=e.userid and a.interfaceid =b.interfaceid  and b.projectid=c.projectid and b.moduleid =d.moduleid and   a.interface_case_id = " + caseId;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public List GetCaseRequest(int caseId)
	  {
	    String sql = "select * from wift_case_request   where interface_case_id = " + caseId;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public List GetCaseRequestHeader(int caseId)
	  {
	    String sql = "select * from wift_case_request_header   where interface_case_id = " + caseId;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public int DelInterfaceTestCaseById(int caseid)
	  {
	    String sql = "delete  FROM wift_case  WHERE interface_case_id=?";
	    int row = this.jdbcTemplate.update(sql, new Object[] { Integer.valueOf(caseid) });
	    String sql1 = "delete  FROM wift_case_request  WHERE interface_case_id=?";
	    this.jdbcTemplate.update(sql1, new Object[] { Integer.valueOf(caseid) });
	    String sql2 = "delete  FROM wift_case_request_header  WHERE interface_case_id=?";
	    this.jdbcTemplate.update(sql2, new Object[] { Integer.valueOf(caseid) });
	    String sql3 = "delete  FROM wift_case_response  WHERE interface_case_id=?";
	    this.jdbcTemplate.update(sql3, new Object[] { Integer.valueOf(caseid) });
	    String sql4 = "delete  FROM wift_case_response_header  WHERE interface_case_id=?";
	    this.jdbcTemplate.update(sql4, new Object[] { Integer.valueOf(caseid) });
	    return row;
	  }

	  public void SaveJson(int id, String jsonstr)
	  {
	    String sql = "insert   into wift_case_json (interface_case_id,jsonstr) values ('" + 
	      id + "','" + jsonstr + "')";
	    System.out.println(sql);
	    this.jdbcTemplate.update(sql);
	  }

	  public String GetJson(int id)
	  {
	    String sql = "select  jsonstr   from wift_case_json where interface_case_id=" + id;

	    String rs = (String)this.jdbcTemplate.queryForObject(sql, String.class);

	    System.out.println("rs===" + rs);

	    return rs;
	  }
	
	
	
	
	
	
	
	@Override
	public List GetCaseStandardList() {
		// TODO Auto-generated method stub
		String sql = "select * from wift_case  a,wift_face b ,wift_module c  ,admin_user d,wift_project e"
			
				+ " where a.interfaceid =b.interfaceid and b.moduleid =c.moduleid and a.userid=d.userid and c.projectid= e.projectid    ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	@Override
	public void CreateCaseAssertion(CaseAssertion caseAssertion) {
		// TODO Auto-generated method stub
		String sql = "insert into wift_case_assertion (interface_case_id,Assertion_type,Expected_Result ,Assertion_Desc,Assertion_content) values ('" + 
				caseAssertion.getInterface_case_id() + "','" + caseAssertion.getAssertion_type() + "','" +caseAssertion.getExpected_Result() + "','" +caseAssertion.getAssertion_Desc() + "','" + caseAssertion.getAssertion_content() + "')";
			    System.out.println(sql);
			    this.jdbcTemplate.update(sql);
	}
	@Override
	public List GetCaseAssertionByCaseId(int caseid) {
		// TODO Auto-generated method stub
		
		 String sql = "select * from wift_case_assertion   where interface_case_id = " + caseid;
		    List lst = new ArrayList();
		    lst = this.jdbcTemplate.queryForList(sql);
		    System.out.println(lst);
		    return lst;

	}
	@Override
	public List GetCaseByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String sql = "select *  from  wift_face  as a  ,wift_case as b  where  b.interfaceid =a.interfaceid  and  a.projectid='"+projectid+"'" ;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	}
	@Override
	public List GetCaseByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		String sql = "select *  from  wift_face  as a  ,wift_case as b  where  b.interfaceid =a.interfaceid  and  a.moduleid='"+moduleid+"'";
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	}
	@Override
	public List GetCaseByInterfaceId(int interfaceid) {
		// TODO Auto-generated method stub
		String sql = "select *  from  wift_face  as a  ,wift_case as b  where  b.interfaceid =a.interfaceid  and  a.interfaceid='"+interfaceid+"'";
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	}
	@Override
	public void CreateCaseAssertionHeader(CaseHeaderAssertion caseHeaderAssertion) {
		// TODO Auto-generated method stub
		String sql = "insert into wift_case_assertion_header (interface_case_id,Assertion_type,Expected_Result ,Assertion_Desc,Assertion_content) values ('" + 
				caseHeaderAssertion.getInterface_case_id() + "','" + caseHeaderAssertion.getAssertion_type() + "','" +caseHeaderAssertion.getExpected_Result() + "','" +caseHeaderAssertion.getAssertion_Desc() + "','" + caseHeaderAssertion.getAssertion_content() + "')";
			    System.out.println(sql);
			    this.jdbcTemplate.update(sql);
	}
	@Override
	public List GetCaseHeaderAssertionByCaseId(int caseId) {
		// TODO Auto-generated method stub
		String sql = "select * from wift_case_assertion_header   where interface_case_id = " + caseId;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	}
}
