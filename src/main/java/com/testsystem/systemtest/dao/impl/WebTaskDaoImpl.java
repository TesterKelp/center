package com.testsystem.systemtest.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.systemtest.dao.WebTaskDao;
import com.testsystem.systemtest.vo.WebTask;
@Repository
public class WebTaskDaoImpl implements WebTaskDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	public void AddStTask(WebTask webTask) {
		// TODO Auto-generated method stub
		String sql = "insert into st_task(taskname,createtime,rtime,runnertime,status,tasktype,userid,testtype) values ('"+webTask.getTaskname()+"','"+webTask.getCreatetime()+"','"+webTask.getRtime()+"','"+webTask.getRunnertime()+"','"+webTask.getStatus()+"','"+webTask.getTasktype()+"','"+webTask.getUserid()+"','"+webTask.getTesttype()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public List GetStTaskAllList() {
		// TODO Auto-generated method stub
		String sql = "select * from st_task st , admin_user  u  where st.userid=u.userid and  tasktype<>2 order by createtime desc ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		String sql = "select c.*,t.taskname,u.realname from st_task_case sc , st_case_index  c ,st_task t ,admin_user u where sc.caseid=c.caseid and sc.taskid = t.taskid  and u.userid = c.userid and t.taskid="+taskid ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetStTaskByStatus(int Status) {
		// TODO Auto-generated method stub
		String sql = "select * from st_task st , admin_user  u  where st.userid=u.userid  and status="+Status;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void AddCaseToTask(int caseid, int taskid) {
		// TODO Auto-generated method stub
		String sql = "insert into st_task_case(taskid,caseid) values ('"+taskid+"','"+caseid+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public void DelCaseFromTask(int caseid, int taskid) {
		// TODO Auto-generated method stub
		String sql = "delete from st_task_case   where  caseid="+caseid+ " and  taskid="+taskid ;
		jdbcTemplate.update(sql);
	}
	public void UpdataTaskMac(int taskid, String clicentaddress) {
		// TODO Auto-generated method stub
		String sql = "UPDATE st_task  set  clicentaddress ='"+clicentaddress+"'  where  taskid="+taskid;
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public void AginRunnerTask(int taskid) {
		// TODO Auto-generated method stub
		String sql = "UPDATE st_task  set  status =0  where  taskid="+taskid;
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public int AddStTaskReturnId(WebTask webTask) {
		// TODO Auto-generated method stub
		String sql = "insert into st_task(taskname,createtime,clicentaddress,status,tasktype,userid) values ('"+webTask.getTaskname()+"','"+webTask.getCreatetime()+"','"+webTask.getClicentaddress()+"','"+webTask.getStatus()+"','"+webTask.getTasktype()+"','"+webTask.getUserid()+"')";
		//	System.out.println("221222"+sql);
			jdbcTemplate.update(sql);
		return jdbcTemplate.queryForInt("select @@identity");
	}
	public List GetTaskByTaskType(int tasktype) {
		// TODO Auto-generated method stub
		String sql = "select * from st_task st , admin_user  u  where st.userid=u.userid and  tasktype="+tasktype+" order by createtime desc ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void SetCaseTaskEnd(int taskid) {
		// TODO Auto-generated method stub
		String sql = "UPDATE st_task  set  status =3  where  taskid="+taskid;
		//	System.out.println("221222"+sql);
			jdbcTemplate.update(sql);
	}
	@Override
	public List GetTaskByTestType(String testtype) {
		// TODO Auto-generated method stub
		String sql = "select * from st_task st , admin_user  u  where  st.testtype='"+testtype+"' and st.userid=u.userid and  tasktype<>2 order by createtime desc ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}

	
	
	
}
