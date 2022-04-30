package com.testsystem.systemtest.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.systemtest.dao.WebCaseDao;
import com.testsystem.systemtest.vo.WebBody;
import com.testsystem.systemtest.vo.WebCase;
@Repository
public class WebCaseDaoImpl implements WebCaseDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetStCaseByStatus(int status) {
		// TODO Auto-generated method stub
		String sql="";
		if (status == 3) {
			 sql = "SELECT * from st_case_index c , st_module  m ,admin_user u ,st_project p where  c.moduleid=m.moduleid  and c.userid=u.userid and m.projectid=p.projectid ";
		} else {
			 sql = "SELECT * from st_case_index c , st_module  m where  c.moduleid=m.moduleid  and  c.status="+ status;
		}
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void AddStCase(WebCase webCase) {
		// TODO Auto-generated method stub
		String sql = "insert into st_case_index (casename,casedesc,projectid,moduleid,status,userid) values ('"+webCase.getCasename()+"','"+webCase.getCasedesc()+"','"+webCase.getProjectid()+"','"+webCase.getModuleid()+"','"+webCase.getStatus()+"','"+webCase.getUserid()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public List GetStCaseByProjectId(int projectid) {
		// TODO Auto-generated method stub
		 String sql = "SELECT * from st_case_index c  where  c.projectid="+projectid;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println("sql"+sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetStCaseByModuleId(int moduleid) {
		// TODO Auto-generated method stub
		 String sql = "SELECT * from st_case_index c where  c.moduleid="+ moduleid;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void AddStbody(WebBody webBody) {
		// TODO Auto-generated method stub
		String sql = "insert into st_case_body (caseid,stepsort,widgetid,operation,pdata,checkpoint) values ('"+webBody.getCaseid()+"','"+webBody.getStepsort()+"','"+webBody.getWidgetid()+"','"+webBody.getOperation()+"','"+webBody.getPadat()+"','"+webBody.getCheckpoint()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public int AddStCasea(WebCase webCase) {
		// TODO Auto-generated method stub
		String sql = "insert into st_case_index (casename,casedesc,projectid,moduleid,status,userid) values ('"+webCase.getCasename()+"','"+webCase.getCasedesc()+"','"+webCase.getProjectid()+"','"+webCase.getModuleid()+"','"+webCase.getStatus()+"','"+webCase.getUserid()+"') ";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
		
		return	jdbcTemplate.queryForInt("select @@identity") ;
		
	}
	public List GetCaseIndex(int caseid) {
		// TODO Auto-generated method stub
		 String sql = "SELECT * from st_case_index c where  c.caseid="+ caseid;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetCaseBody(int caseid) {
		// TODO Auto-generated method stub
	//	 String sql = "SELECT * from st_case_body c where  c.caseid="+ caseid +" order by c.stepsort";
		
		String sql="SELECT * from  st_widget e , st_operation a, st_case_body c  , st_widget d ,st_page  b  where e.widgetid=c.widgetid and a.operationcode=c.operation  and   b.pageid =d.pageid and c.widgetid=d.widgetid and c.caseid="+ caseid +" order by c.stepsort" ;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void UpdateStCaseIndex(WebCase webCase) {
		// TODO Auto-generated method stub
		String sql = "update st_case_index  set casename='"+webCase.getCasename()+"',"
				+"casedesc = '"+webCase.getCasedesc()+"',"
				+"moduleid = '"+webCase.getModuleid()+"',"
				+"projectid = '"+webCase.getProjectid()+"'  where  caseid ="+webCase.getCaseid()
				;
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public void DelStCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "delete from st_case_body   where  caseid="+caseid  ;
		jdbcTemplate.update(sql);
	}
	public void DelStCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "delete from st_case_index   where  caseid="+caseid  ;
		jdbcTemplate.update(sql);
	}
	public void SetCaseIsSuccessfully(int caseid, int status) {
		// TODO Auto-generated method stub
		String sql="update st_case_index  set status="+status+" where caseid="+caseid;
		jdbcTemplate.update(sql);
	}
	public Boolean IsHaveTaskByCaseTaskAndMaxcsoloo(String maxcsolo, int tasktype) {
		// TODO Auto-generated method stub
		Boolean s;
		String sql = " select count(*) from st_task where  clicentaddress='" + maxcsolo
				+ "' and tasktype=2  and status!=" + tasktype;
		int rs = jdbcTemplate.queryForInt(sql);

		if (rs > 0) {
			return true;
		} else {
			return false;
		}

	}

}
