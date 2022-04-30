package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.DefectDao;
@Repository
public class DefectDaoImpl implements DefectDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate ;

	public List GetShowOperation() {
		// TODO Auto-generated method stub
		String sql= "select * from defect_operation where  isshow ='1'     order by operationorder" ;
		return jdbcTemplate.queryForList(sql);
	}

	public List GetOperationValue(int operationid) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_operation_value where  operationid ='"+operationid+"'" ;
		return jdbcTemplate.queryForList(sql);
	}

	public List GetDefectAll() {
		// TODO Auto-generated method stub
//		String sql= "select     * from defect_bug b, admin_user u where b.createuserid =u.userid  and b.bugstatus=0   order by  b.bugid" ;
		String sql= "select  (select  realname from admin_user  au ,defect_bug db  where  db.assigned=au.userid   and db.bugid=b.bugid ) assignedname, "
				+ "b.* ,u.* from defect_bug b, admin_user u where b.createuserid =u.userid  and b.bugstatus=0   order by  b.bugid";
		return jdbcTemplate.queryForList(sql);
	}

	public List GetPermissionByUserId(int userid) {
		// TODO Auto-generated method stub
		
		String sql= "select distinct ap.permissionid , permissioncode fROM admin_user u ,admin_group_user gu ,admin_group g ,admin_group_permission gp ,admin_permission ap "+
		"where  gu.userid=u.userid and gu.groupid=g.groupid and gp.group_id in (select groupid FROM admin_group_user gu where gu.userid ="+userid+")"+
        "and gp.permission_id = ap.permissionid   and ap.type=2    and    gp.checkstatus=1   and  u.userid =" +userid ;

		
		
//		String sql= "select distinct ap.permissionid , permissioncode  fROM admin_user u ,admin_group_user gu ,admin_group g ,admin_group_permission gp ,admin_permission ap "+
//		"where  gu.userid=u.userid and gu.groupid=g.groupid "+
//        "and gp.permission_id = ap.permissionid   and ap.type=2  and  u.userid =" +userid ;
		
//		String sql= "select * fROM admin_user u ,admin_group_user gu ,admin_group g ,admin_group_permission gp ,admin_permission ap "+
//		"where  gu.userid=u.userid and gu.groupid=g.groupid "+
//        "and gp.permission_id = ap.permissionid   and ap.type=2  and  u.userid =" +userid ;
		
//		  ��Ҫ��֤����Ƿ������� 
//		String sql= "select * fROM admin_user u ,admin_group_user gu ,admin_group g ,admin_group_permission gp ,admin_permission ap "+
//		"where  gu.userid=u.userid and gu.groupid=g.groupid and gp.group_id=(select groupid FROM admin_group_user gu where gu.userid =1)"+
//        "and gp.permission_id = ap.permissionid   and ap.type=2  and  u.userid =" +userid ;
		
		
		return jdbcTemplate.queryForList(sql);
	}

	public void CreateDefect(String sql) {
		// TODO Auto-generated method stub
		System.out.println("sql:"+sql);
		jdbcTemplate.update(sql);
	}

	public List GetDefectByBugId(int bugid) {
		// TODO Auto-generated method stub
//		String sql= "select * from defect_bug  where bugid ="+bugid+"" ;
		
		String sql="	SELECT   "+
		"(select u.realname from  admin_user  u,defect_bug a  where a.createuserid =u.userid  and bugid="+bugid+") as createrealname , "+
		"(select u.realname from admin_user  u,defect_bug a where a.assigned=u.userid   and bugid="+bugid+") as assignedrealname , "+
		"c.*	FROM defect_bug  c  where c.bugid="+bugid;
		
		return jdbcTemplate.queryForList(sql);
	}

	public void DelDefectByBugId(int bugid) {
		// TODO Auto-generated method stub
		String sql="update defect_bug set  bugstatus=1  where bugid="+bugid  ;
		jdbcTemplate.update(sql);

	}

	public void CaseAssigned(int bugid, int assigned) {
		// TODO Auto-generated method stub
		String sql="update defect_bug set  assigned="+assigned+"  where bugid="+bugid  ;
		jdbcTemplate.update(sql);

	}

	public void SetPstatus(int pstatus, int bugid) {
		// TODO Auto-generated method stub
		String sql="update defect_bug set  pstatus="+pstatus+"  where bugid="+bugid  ;
		jdbcTemplate.update(sql);
	}

	public List GetSelectData(String sql) {
		// TODO Auto-generated method stub
		return jdbcTemplate.queryForList(sql);
	}

	public int ReturnBugIdCreateDefect(String sql) {
		// TODO Auto-generated method stub
		System.out.println("sql:"+sql);
		jdbcTemplate.update(sql);
		int  a=jdbcTemplate.queryForInt("SELECT LAST_INSERT_ID()") ;
		return a;
	}

	public void SetPstatusAndAssignedByBugId(int bugid, int pstatus, int assigned) {
		// TODO Auto-generated method stub
		String sql="update defect_bug set   pstatus="+pstatus+" ,  assigned="+assigned+"   where bugid="+bugid  ;
		jdbcTemplate.update(sql);
	}

	public List AssignedMeDefect(int userid) {
		// TODO Auto-generated method stub
		String sql= "select  (select  realname from admin_user  au ,defect_bug db  where  db.assigned=au.userid   and db.bugid=b.bugid  ) assignedname, "
				+ "b.* ,u.* from defect_bug b, admin_user u where b.createuserid =u.userid  and b.bugstatus=0  and          b.pstatus<>  6   and  b.assigned ="+userid+" order by  b.bugid";
		return jdbcTemplate.queryForList(sql);
	}

	public List MyAssignedMeDefect(int userid) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_bug b where  b.pstatus<>  6   and  b.assigned ="+userid+" order by  b.createtime   limit  10";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetDefectAllByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String sql= "select  (select  realname from admin_user  au ,defect_bug db  where  db.assigned=au.userid   and db.bugid=b.bugid  and db.projectid="+projectid+") assignedname, "
				+ "b.* ,u.*,ds.status_value  from defect_bug b, admin_user u, defect_bug_status ds   where   ds.id=b.pstatus and  b.createuserid =u.userid  and b.bugstatus=0 and b.projectid="+projectid+"  order by  b.bugid";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetShowOperationByDefaultProject(int projectid) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_operation where        projectid="+projectid+" and              isshow ='1'     order by operationorder" ;
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public void UpdataDefect(String sql) {
		// TODO Auto-generated method stub
		System.out.println("sql:"+sql);
		jdbcTemplate.update(sql);
	}
	
	
	  public List getWidgetShowByProjectId(int projectId)
	  {
	    String sql = "select dsw.*  from defect_project  as dp  ,defect_scheme_widget as dsw  where  dp.defect_scheme_id =dsw.scheme_id and projectid=" + projectId + " order by widget_order";
	    return this.jdbcTemplate.queryForList(sql);
	  }

	  public List GetWidgetValue(int widgetId)
	  {
	    String sql = "select * from defect_scheme_widget_value where  widgetid ='" + widgetId + "'";
	    return this.jdbcTemplate.queryForList(sql);
	  }
	
	
	
	
	
	
	
	
	

}
