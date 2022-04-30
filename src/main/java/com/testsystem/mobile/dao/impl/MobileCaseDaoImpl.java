package com.testsystem.mobile.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mobile.dao.MobileCaseDao;
import com.testsystem.mobile.vo.MobileBody;
import com.testsystem.mobile.vo.MobileCase;
import com.testsystem.systemtest.vo.WebCase;
@Repository
public class MobileCaseDaoImpl implements MobileCaseDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetStCaseByStatus(int status) {
		// TODO Auto-generated method stub
		String sql="";
		if (status == 3) {
			 sql = "SELECT * from mo_case_index c , mo_module  m ,admin_user u ,mo_project p where  c.moduleid=m.moduleid  and c.userid=u.userid and m.projectid=p.projectid ";
		} else {
			 sql = "SELECT * from mo_case_index c , mo_module  m where  c.moduleid=m.moduleid  and  c.status="+ status;
		}
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void AddStCase(MobileCase mobileCase) {
		// TODO Auto-generated method stub
		String sql = "insert into mo_case_index (casename,casedesc,projectid,moduleid,status,userid) values ('"+mobileCase.getCasename()+"','"+mobileCase.getCasedesc()+"','"+mobileCase.getProjectid()+"','"+mobileCase.getModuleid()+"','"+mobileCase.getStatus()+"','"+mobileCase.getUserid()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public List GetStCaseByProjectId(int projectid) {
		// TODO Auto-generated method stub
		 String sql = "SELECT * from mo_case_index c  where  c.projectid="+projectid;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println("sql"+sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetStCaseByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		 String sql = "SELECT * from mo_case_index c where  c.moduleid="+ moduleid;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void AddStbody(MobileBody mobileBody) {
		// TODO Auto-generated method stub
		String sql = "insert into mo_case_body (caseid,stepsort,widgetid,operation,pdata,checkpoint) values ('"+mobileBody.getCaseid()+"','"+mobileBody.getStepsort()+"','"+mobileBody.getWidgetid()+"','"+mobileBody.getOperation()+"','"+mobileBody.getPadat()+"','"+mobileBody.getCheckpoint()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public int AddStCasea(MobileCase mobileCase) {
		// TODO Auto-generated method stub
		String sql = "insert into mo_case_index (casename,casedesc,projectid,moduleid,status,userid) values ('"+mobileCase.getCasename()+"','"+mobileCase.getCasedesc()+"','"+mobileCase.getProjectid()+"','"+mobileCase.getModuleid()+"','"+mobileCase.getStatus()+"','"+mobileCase.getUserid()+"') ";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
		
		return	jdbcTemplate.queryForInt("select @@identity") ;
		
	}
	public List GetCaseIndex(int caseid) {
		// TODO Auto-generated method stub
		 String sql = "SELECT * from mo_case_index c where  c.caseid="+ caseid;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetCaseBody(int caseid) {
		// TODO Auto-generated method stub
	//	 String sql = "SELECT * from st_case_body c where  c.caseid="+ caseid +" order by c.stepsort";
		
		String sql="SELECT * from mo_case_body c  , mo_widget d ,mo_page  b  where  b.pageid =d.pageid and c.widgetid=d.widgetid and c.caseid="+ caseid +" order by c.stepsort" ;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void UpdateStCaseIndex(MobileCase mobileCase) {
		// TODO Auto-generated method stub
		String sql = "update mo_case_index  set casename='"+mobileCase.getCasename()+"',"
				+"casedesc = '"+mobileCase.getCasedesc()+"',"
				+"moduleid = '"+mobileCase.getModuleid()+"',"
				+"projectid = '"+mobileCase.getProjectid()+"'  where  caseid ="+mobileCase.getCaseid()
				;
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public void DelStCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "delete from mo_case_body   where  caseid="+caseid  ;
		jdbcTemplate.update(sql);
	}
	public void DelStCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "delete from mo_case_index   where  caseid="+caseid  ;
		jdbcTemplate.update(sql);
	}
	public void SetCaseIsSuccessfully(int caseid, int status) {
		// TODO Auto-generated method stub
		String sql="update mo_case_index  set status="+status+" where caseid="+caseid;
		jdbcTemplate.update(sql);
	}
	public Boolean IsHaveTaskByCaseTaskAndMaxcsoloo(String maxcsolo, int tasktype) {
		// TODO Auto-generated method stub
		Boolean s;
		String sql = " select count(*) from mo_task where  clicentaddress='" + maxcsolo
				+ "' and tasktype=2  and status!=" + tasktype;
		int rs = jdbcTemplate.queryForInt(sql);

		if (rs > 0) {
			return true;
		} else {
			return false;
		}

	}

}
