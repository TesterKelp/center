package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.CaseRunnerDao;
@Repository
public  class CaseRunnerDaoImpl   implements CaseRunnerDao{
	@Autowired
	JdbcTemplate jdbcTemplate ;
	@Override
	public List GetCasePlanAll() {
		// TODO Auto-generated method stub
		String  sql="select * from  defect_lib  a, admin_user b   ,defect_lib_status_default  d  where  a.userid =b.userid  and  a.pstatus=d.id " ;
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public List GetLibCase(int libid) {
		// TODO Auto-generated method stub
//		String  sql="select  *  from  defect_lib_case a , defect_case b  , admin_user  c  where   b.cuserid=c.userid  and     a.caseid =b.caseid  and  a.libid="+libid ;
		
	String sql="	select * from   (defect_lib_case   a , defect_case c ,admin_user u) "
	+"	left join (defect_lib_rs  rs)"
	+"	on a.caseid=rs.rcaseid  and rs.libid=a.libid"
	+"	where c.cuserid =u.userid and a.caseid=c.caseid  and  a.libid=(SELECT libid FROM defect_user_data where userid=1)  "                     ;
		
		
		
//	String sql="	select * from   defect_lib_case   a ,defect_lib_rs  b  , defect_case c where  a.caseid=b.rcaseid  and a.caseid=c.caseid  and  a.libid=(SELECT libid FROM user_data where userid="+libid+")";
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public List GetRunnerRecord(int caseid) {
		// TODO Auto-generated method stub
		String  sql="select * from defect_lib_rs   a,admin_user b  where  a.ruserid =b.userid    and  a.rcaseid="+caseid +" order by runnerid";
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public int SaveRunnerRecord(int libid,int caseid, int ruserid, String rtime, String rsall) {
		// TODO Auto-generated method stub
		String  sql="insert into  defect_lib_rs (libid,rcaseid,ruserid,rtime,rrs) values("+libid+","+caseid+","+ruserid+",'"+rtime+"','"+rsall+"')";
		jdbcTemplate.update(sql);
		return	 jdbcTemplate.queryForInt("select @@identity") ;
	}
	@Override
	public void SaveRunnerRecordDetail(int runnerid, String rsall, int stepall, String resultall) {
		// TODO Auto-generated method stub
		String  sql="insert into  defect_lib_rs_detail  (runnerid,bodyid,stepstatus,acrs) values("+runnerid+","+stepall+",'"+rsall+"','"+resultall+"')";
		jdbcTemplate.update(sql);
	}
	@Override
	public List GetRunnerRecordDetail(int runnerid) {
		// TODO Auto-generated method stub
		String  sql="select *  from  defect_case_body a ,defect_lib_rs_detail b where  b.bodyid=a.bodyid  and runnerid="+runnerid;
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public void CreateRunnerPlan(String plan, int userid) {
		// TODO Auto-generated method stub
		String  sql="insert into  defect_lib (libname,userid,pstatus,casenumber) values('"+plan+"',"+userid+",'1','0')";
		jdbcTemplate.update(sql);
	}
	@Override
	public void SetRunnerPlanDefault(int libid, int userid) {
		// TODO Auto-generated method stub
		String  sql="update    defect_user_data    set   libid="+libid +"  where  userid="+userid ;
		jdbcTemplate.update(sql);
	}
	@Override
	public Boolean LibHaveCaseByCaseId(int caseid, int libid) {
		// TODO Auto-generated method stub
		int  have ;
		String  sql="select  count(*)  from defect_lib_case  where  caseid="+caseid+" and  libid="+libid;
		have =jdbcTemplate.queryForInt(sql);
		if(have==1){
			return  true ;
		}else{
			return false ;
		}
		
	
	}
	@Override
	public void AddCaseToLib(int caseid, int libid) {
		// TODO Auto-generated method stub
		String  sql="insert into  defect_lib_case (libid,caseid) values ("+libid+","+caseid+" )";
		System.out.println("ssdfdsfsdfsdfsd="+sql);
		jdbcTemplate.update(sql);
	}
	@Override
	public List GetLibCaseByUserid(int userid) {
		// TODO Auto-generated method stub
//		String sql="	select * from   (defect_lib_case   a , defect_case c ,admin_user u) "
//				+"	left join (defect_lib_rs  rs)"
//				+"	on a.caseid=rs.rcaseid  and rs.libid=a.libid"
//				+"	where c.cuserid =u.userid and a.caseid=c.caseid  and  a.libid=(SELECT libid FROM user_data where userid=1)  "                     ;
					
		
String  sql="		select * from   (defect_lib_case   a , defect_case c ,admin_user u) "
		+" left join ((SELECT  *  FROM (SELECT r.*,s.realname rrealname FROM defect_lib_rs  r,admin_user  s where  r.ruserid=s.userid ORDER BY runnerid desc) rrs  GROUP BY rcaseid )  rs) "
		+" on a.caseid=rs.rcaseid  and rs.libid=a.libid "
		+" where c.cuserid =u.userid and (a.caseid=c.caseid  and  a.libid=(SELECT libid FROM defect_user_data where userid="+userid+") ) ";
		

String sql2 = "select * from   (defect_lib_case   a , defect_case c ,admin_user u)  left join ((SELECT  *  FROM (SELECT r.*,s.realname rrealname FROM defect_lib_rs  r,admin_user  s where  r.ruserid=s.userid ORDER BY runnerid desc) rrs  GROUP BY rcaseid )  rs)  on a.caseid=rs.rcaseid  and rs.libid=a.libid  where c.cuserid =u.userid and (a.caseid=c.caseid  and  a.libid=(SELECT libid FROM defect_user_data where userid=" + 
  userid + ") ) ";

String sql3 = "select * from   defect_lib_case a ,admin_user u ,   defect_case c   "
		+ " where     u.userid = c.cuserid   and    a.caseid=c.caseid  and    a.libid=(SELECT libid FROM defect_user_data where userid="+userid+")"   ;


//				String sql="	select * from   defect_lib_case   a ,defect_lib_rs  b  , defect_case c where  a.caseid=b.rcaseid  and a.caseid=c.caseid  and  a.libid=(SELECT libid FROM user_data where userid="+libid+")";
					return jdbcTemplate.queryForList(sql3);
	}
	@Override
	public String GetCustomData(String field, int userid) {
		// TODO Auto-generated method stub
	String sql ="select "+field+"  from  defect_lib  a,defect_user_data b where  b.libid=a.libid  and  b.userid="+userid;
		String defaultpage=(String)jdbcTemplate.queryForObject(sql, java.lang.String.class); 
		return defaultpage;
	
	}
	@Override
	public void UpdateSuccfulCaseNumber(int libid) {
		// TODO Auto-generated method stub
		String  sql=" update   defect_lib    set scasenumber = (  select  count(rrs) from  (Select * from (select  *   from defect_lib_rs   where  libid="+libid+"    ORDER BY runnerid desc) a   group by rcaseid ) b   where  rrs='成功')  where  libid="+libid;
		jdbcTemplate.update(sql);
		
	}
	@Override
	public void UpdateFailCaseNumber(int libid) {
		// TODO Auto-generated method stub
		String  sql=" update   defect_lib    set fcasenumber = (  select  count(rrs) from  (Select * from (select  *   from defect_lib_rs   where  libid="+libid+"    ORDER BY runnerid desc) a   group by rcaseid ) b   where  rrs='失败')  where  libid="+libid;
		jdbcTemplate.update(sql);
	}
	@Override
	public void UpdateCaseNumber(int libid) {
		// TODO Auto-generated method stub
		String sql ="update   defect_lib    set   casenumber  =  (    select count(caseid) from defect_lib_case  where  libid ="+libid+")  where  libid="+libid  ;
		jdbcTemplate.update(sql);
	}
	@Override
	public List GetRunnerRecord(int caseid, int libid) {
		// TODO Auto-generated method stub
		String  sql="select * from defect_lib_rs   a,admin_user b  where  a.ruserid =b.userid    and  libid="+libid+"  and  a.rcaseid="+caseid +" order by runnerid";
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public int GetSuccfulCaseNumber(int libid) {
		// TODO Auto-generated method stub
		String  sql="  select  count(rrs) from  (Select * from (select  *   from defect_lib_rs   where  libid="+libid+"    ORDER BY runnerid desc) a   group by rcaseid ) b   where  rrs='成功'";
		return jdbcTemplate.queryForInt(sql);
	}
	@Override
	public int GetFailCaseNumber(int libid) {
		// TODO Auto-generated method stub
		String  sql="  select  count(rrs) from  (Select * from (select  *   from defect_lib_rs   where  libid="+libid+"    ORDER BY runnerid desc) a   group by rcaseid ) b   where  rrs='失败'";
		return jdbcTemplate.queryForInt(sql);
	}
	@Override
	public int GetCaseNumber(int libid) {
		// TODO Auto-generated method stub
		String  sql=" select count(*) from  defect_lib_case  where  libid="+libid;
		return jdbcTemplate.queryForInt(sql);
	}
	@Override
	public int GetLibId(int userid) {
		// TODO Auto-generated method stub
		String  sql=" select libid  from  defect_user_data  where  userid="+userid;
		return jdbcTemplate.queryForInt(sql);
	}

}
