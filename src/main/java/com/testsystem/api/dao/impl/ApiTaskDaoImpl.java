package com.testsystem.api.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.api.dao.ApiTaskDao;
@SuppressWarnings("unchecked")
@Repository
public class ApiTaskDaoImpl implements ApiTaskDao {

	@Autowired
	private JdbcTemplate jdbcTemplate ;

	@Override
	public List GetTaskInfoByServerName(String servername,int status) {
		// TODO Auto-generated method stub
		String sql = "select * from st_task   where   servername='"+servername+"' and  status="+status ;	
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}


	@Override
	public List GetTaskInfoByTaskId(int taskid) {
		String sql = "select * from st_task   where taskid="+taskid ;	
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	
	@Override
	public List GetTaskCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		String sql = "select * from st_task_case  where   taskid="+taskid ;	
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}


	@Override
	public int SetTaskStatusByTaskId(int taskid, int status) {
		// TODO Auto-generated method stub
		String sql = "UPDATE st_task  set  status ="+status+"  where  taskid="+taskid;
		int rs=	jdbcTemplate.update(sql);
		return rs ;
	}


	@Override
	public List  GetCaseInfoByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select * FROM st_widget a ,st_case_body b ,st_case_index c where a.widgetid = b.widgetid  and b.caseid =c.caseid   and b.caseid="
				+ caseid + " order by  stepsort ";	
		return	 jdbcTemplate.queryForList(sql); 
	}


	@Override
	public int SetCaseNumber(int taskid,int fc ,int sc ,int skc ,int allcn) {
		// TODO Auto-generated method stub
		String sql =  "update st_task_report set fcn=" + fc + ", scn="+sc+" ,skcn="+skc+"  ,   allcn="+allcn+"    where  taskid='" + taskid + "'";
		return jdbcTemplate.update(sql);
	}


	@Override
	public List GetWiftCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
//		String sql = "select  s.interface_case_id , s.interface_type from  wift_case s ,st_task c , wift_face d "
//				+ "where  s.interface_case_id =c.caseid and d.interfaceid = s.interfaceid   AND   c.taskid="+taskid ;	
		
		
		String sql = " select b.caseid ,c.requesttype "
		 +" FROM   st_task a  , st_task_case b ,wift_face c ,wift_case d "
		+ "where  a.taskid =b.taskid   and c.interfaceid= d.interfaceid      and d.interface_case_id=b.caseid     and a.taskid="+taskid ;
		
		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}


	@Override
	public List GetWiftCaseBodyByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select  * from  wift_case_body  s where  s.interface_case_id ="+caseid ;	
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}


	@Override
	public List GetWiftCaseIndexByCaseId(int caseid) {
		// TODO Auto-generated method stub
		String sql = "select  * from  wift_case_index  s where  s.interface_case_id ="+caseid ;	
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	
	
	
	
	
	
	
}
