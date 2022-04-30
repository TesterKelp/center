package com.testsystem.defect.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.BitsDao;
@Repository
public class BitsDaoImpl implements BitsDao {
@Autowired
private JdbcTemplate jdbcTemplate ;
	@Override
	public int GetqProjectIdByUserId(int userid) {
		// TODO Auto-generated method stub
	String 	sql="select qprojectid from defect_user_data where  userid="+userid ;
		return jdbcTemplate.queryForInt(sql);
	}
	@Override
	public void SetProjectDefault(int userid, int projectid) {
		// TODO Auto-generated method stub
		String 	sql="update  defect_user_data  set  qprojectid="+projectid+"      where  userid="+userid ;
		 jdbcTemplate.update(sql);
	}
	@Override
	public String GetProjectNameByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String 	sql="select  projectname  from  defect_project      where  projectid="+projectid ;
		String defaultpage=(String)jdbcTemplate.queryForObject(sql, java.lang.String.class); 
		return defaultpage;
	
	}
	@Override
	public String GetLibNameByUserId(int userid) {
		// TODO Auto-generated method stub
	String 	sql="select libname  from  defect_lib  a,defect_user_data b where  b.libid=a.libid  and  b.userid="+userid ;
		
		String defaultpage=(String)jdbcTemplate.queryForObject(sql, java.lang.String.class); 
		return defaultpage;
	}
	@Override
	public int GetqLibIdByUserId(int userid) {
		// TODO Auto-generated method stub
		String 	sql="select libid from defect_user_data where  userid="+userid ;
		return jdbcTemplate.queryForInt(sql);
	}
	@Override
	public int GetMaxProjectId() {
		// TODO Auto-generated method stub
		String  sql="select   max(projectid)  from defect_project";
		return  jdbcTemplate.queryForInt(sql);
	}
	@Override
	public int GetMaxLibId() {
		// TODO Auto-generated method stub
		String  sql="select   max(libid)  from defect_lib  where pstatus =1 ";
		return  jdbcTemplate.queryForInt(sql);
		
	}
	@Override
	public void AddInitUserData(int userid, int projectid, int libid) {
		// TODO Auto-generated method stub
		String 	sql="insert    into   defect_user_data (userid,qprojectid,libid)  values  ("+userid+","+projectid+","+libid+")" ;
		 jdbcTemplate.update(sql);
	}
	@Override
	public String GetWebSiteUrl() {
		// TODO Auto-generated method stub
		String 	sql="select  url  from  sys_info      " ;
		String url=(String)jdbcTemplate.queryForObject(sql, java.lang.String.class); 
		return url;
	}
	  public int getNowUserProjectId(int userId)
	  {
	    int rs = 0;
	    String sql = "select dd.projectid from defect_user_data as dd ,defect_project as dp where dd.projectid=dp.projectid and userid =" + userId;

	    rs = ((Integer)this.jdbcTemplate.queryForObject(sql, Integer.class)).intValue();

	    return rs;
	  }

	  public String GetProjectName(int userId)
	  {
	    String sql = "select dp.projectname from defect_user_data as dd ,defect_project as dp where dd.qprojectid=dp.projectid and userid =" + userId;
	    String projectname = (String)this.jdbcTemplate.queryForObject(sql, String.class);
	    return projectname;
	  }
	
	
}
