package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.TaskDao;
@Repository
public class TaskDaoImpl implements TaskDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public List GetTask() {
		// TODO Auto-generated method stub
		String sql= "select  (select  realname from admin_user  au ,defect_task db  where  db.auserid=au.userid   and db.taskid=b.taskid ) assignedname, "
				+ "b.* ,u.*,value  from defect_task b, admin_user u , defect_task_status_default  sd    where    sd.id=b.tstatus and  b.cuserid =u.userid  and b.isshow=0   order by  b.taskid";
		return jdbcTemplate.queryForList(sql);
	}
	public List GetMyTask(int userid) {
		// TODO Auto-generated method stub
		String sql= "select  *  from defect_task  where  ( auserid="+userid+" or  cuserid  ="+userid +") and  tstatus=1" ;
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public int CreateTask(String sql) {
		// TODO Auto-generated method stub
		System.out.println("sssssssssssss"+sql);
		jdbcTemplate.update(sql);
		return	 jdbcTemplate.queryForInt("select @@identity") ;
	}
	@Override
	public List TaskDetail(int taskid) {
		// TODO Auto-generated method stub
		String sql="	SELECT   "+
				"(select u.realname from  admin_user  u,defect_task a  where a.cuserid =u.userid  and taskid="+taskid+") as createrealname , "+
				"(select u.realname from  admin_user  u,defect_task a  where a.auserid=u.userid   and taskid="+taskid+") as assignedrealname , "+
				"c.*	FROM defect_task  c  where c.taskid="+taskid;
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public List GetShowOperationByTask() {
		// TODO Auto-generated method stub
		
		String sql= "select * from defect_operation where       subjecttype=3    and              isshow ='1'     order by operationorder" ;
		return jdbcTemplate.queryForList(sql);
		
	}
	@Override
	public List GetTaskDetailCustomField(int taskid) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void DelTask(int taskid) {
		// TODO Auto-generated method stub
		String sql ="delete  from defect_task  where taskid="+taskid;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}
	@Override
	public void SetTaskStatus(int taskid) {
		// TODO Auto-generated method stub
		String sql ="update  defect_task   set  tstatus='5'   where taskid="+taskid;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}
	@Override
	public void AssignedTask(int taskid, int assignedid) {
		// TODO Auto-generated method stub
		String sql ="update  defect_task   set  auserid='"+assignedid+"'   where taskid="+taskid;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

}
