package com.testsystem.wift.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mobile.vo.MobileTask;
import com.testsystem.wift.dao.WiftTaskDao;
import com.testsystem.wift.vo.WiftTask;
@Repository
public class WiftTaskDaoImpl implements WiftTaskDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	public void AddStTask(WiftTask wiftTask) {
		// TODO Auto-generated method stub
		String sql = "insert into wift_task(taskname,createtime,rtime,runnertime,status,tasktype,userid) values ('"+wiftTask.getTaskname()+"','"+wiftTask.getCreatetime()+"','"+wiftTask.getRtime()+"','"+wiftTask.getRunnertime()+"','"+wiftTask.getStatus()+"','"+wiftTask.getTasktype()+"','"+wiftTask.getUserid()+"')";
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public List GetStTaskAllList() {
		// TODO Auto-generated method stub
		String sql = "select * from st_task mo , admin_user  u  where mo.userid=u.userid and  tasktype<>2   and mo.testtype=3 order by createtime desc ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetCaseByTaskId(int taskid) {
		// TODO Auto-generated method stub
		String sql = "select c.*,t.taskname,u.realname from wift_task_case sc , wift_case  c ,st_task t ,admin_user u where sc.caseid=c.interface_case_id and sc.taskid = t.taskid  and u.userid = c.userid and t.taskid="+taskid ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public List GetStTaskByStatus(int Status) {
		// TODO Auto-generated method stub
		String sql = "select * from wift_task st , admin_user  u  where st.userid=u.userid  and status="+Status;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void AddCaseToTask(int caseid, int taskid) {
		// TODO Auto-generated method stub
//		String sql = "insert into wift_task_case(taskid,caseid) values ('"+taskid+"','"+caseid+"')";
		
		
		String sql = "insert into wift_task_case(taskid,caseid) select '"+taskid+"','"+caseid+"' from dual "
	+"  where NOT EXISTS (SELECT id FROM wift_task_case WHERE taskid="+taskid+" and caseid="+caseid+" )" ;
		
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public void DelCaseFromTask(int caseid, int taskid) {
		// TODO Auto-generated method stub
		String sql = "delete from wift_task_case   where  caseid="+caseid+ " and  taskid="+taskid ;
		jdbcTemplate.update(sql);
	}
	public void UpdataTaskMac(int taskid, String clicentaddress) {
		// TODO Auto-generated method stub
		String sql = "UPDATE  st_task  set  clicentaddress ='"+clicentaddress+"'  where  taskid="+taskid;
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public void AginRunnerTask(int taskid) {
		// TODO Auto-generated method stub
		String sql = "UPDATE  wift_task  set  status =0  where  taskid="+taskid;
	//	System.out.println("221222"+sql);
		jdbcTemplate.update(sql);
	}
	public int AddStTaskReturnId(WiftTask wiftTask) {
		// TODO Auto-generated method stub
		String sql = "insert into wift_task(taskname,createtime,clicentaddress,status,tasktype,userid) values ('"+wiftTask.getTaskname()+"','"+wiftTask.getCreatetime()+"','"+wiftTask.getClicentaddress()+"','"+wiftTask.getStatus()+"','"+wiftTask.getTasktype()+"','"+wiftTask.getUserid()+"')";
		//	System.out.println("221222"+sql);
			jdbcTemplate.update(sql);
		return jdbcTemplate.queryForInt("select @@identity");
	}
	public List GetTaskByTaskType(int tasktype) {
		// TODO Auto-generated method stub
		String sql = "select * from wift_task st , admin_user  u  where st.userid=u.userid and  tasktype="+tasktype+" order by createtime desc ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
	//	System.out.println(lst);
		return lst;
	}
	public void SetCaseTaskEnd(int taskid) {
		// TODO Auto-generated method stub
		String sql = "UPDATE   wift_task  set  status =3  where  taskid="+taskid;
		//	System.out.println("221222"+sql);
			jdbcTemplate.update(sql);
	}

	
	
	
}
