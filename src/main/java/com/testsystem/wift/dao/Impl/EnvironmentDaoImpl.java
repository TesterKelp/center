package com.testsystem.wift.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.wift.dao.EnvironmentDao;

@Repository
public class EnvironmentDaoImpl implements EnvironmentDao{

  @Autowired
  JdbcTemplate jdbcTemplate;

  public void setJdbcTemplate(JdbcTemplate jdbcTemplate)
  {
    this.jdbcTemplate = jdbcTemplate;
  }

  public List GetEnvironmentListByProjectId(int projectid)
  {
    String sql = "select * from wift_environment  a , wift_environment_server  b ,wift_project c where a.environmentid=b.environmentid and c.projectid=a.projectid and a.projectid=" + projectid;
    List lst = new ArrayList();
    lst = this.jdbcTemplate.queryForList(sql);
    System.out.println(lst);
    return lst;
  }

  public List GetEnvironmentByProjectId(int ProjectId)
  {
    String sql = "select * from wift_environment  a  where  a.projectid=" + ProjectId;
    List lst = new ArrayList();
    lst = this.jdbcTemplate.queryForList(sql);
    System.out.println(lst);
    return lst;
  }

  public List GetEnvironmentTypeByProjectId(int ProjectId)
  {
    String sql = "select * from wift_environment_type  where projectid =" + ProjectId + " order by defaulttype desc";
    List lst = new ArrayList();
    lst = this.jdbcTemplate.queryForList(sql);
    System.out.println(lst);
    return lst;
  }

  public List GetEnvironmentTypeServer(int ProjectId, int TypeId)
  {
    String sql = "select c.environmentname ,a.servervalue ,a.serverid from wift_environment_server  a, wift_environment_type b  ,wift_environment c where a.typeid =b.typeid and a.environmentid =c.environmentid and b.projectid=" + 
      ProjectId + " and b.typeid=" + TypeId;
    List lst = new ArrayList();
    lst = this.jdbcTemplate.queryForList(sql);
    System.out.println(lst);
    return lst;
  }

  public int CreateEnvironmentByProjectId(int ProjectId, String EnvironmentName)
  {
    String sql = "insert into wift_environment (environmentname,projectid) values ('" + 
      EnvironmentName + "','" + ProjectId + "')";
    System.out.println(sql);
    this.jdbcTemplate.update(sql);

    return ((Integer)this.jdbcTemplate.queryForObject("SELECT LAST_INSERT_ID()", Integer.class)).intValue();
  }

  public void CreateGetEnvironmentTypeServer(int TypeId, int EnvironmentId)
  {
    String sql = "insert into wift_environment_Server (typeid,environmentid) values ('" + 
      TypeId + "','" + EnvironmentId + "')";
    System.out.println(sql);
    this.jdbcTemplate.update(sql);
  }

  public int CreateEnvironmentTypeByProjectId(int ProjectId, String TypeName)
  {
    System.out.println("CreateEnvironmentTypeByProjectId");
    String sql = "insert into wift_environment_type (typename,projectid) values ('" + 
      TypeName + "','" + ProjectId + "')";
    System.out.println(sql);
    this.jdbcTemplate.update(sql);

    return ((Integer)this.jdbcTemplate.queryForObject("SELECT LAST_INSERT_ID()", Integer.class)).intValue();
  }

  public int SaveServerValue(int ServerId, String ServerValue)
  {
    String sql = "update    wift_environment_server set  servervalue='" + ServerValue + "'  where serverid='" + ServerId + "'";
    return this.jdbcTemplate.update(sql);
  }

@Override
public void DelEnvironment(int environmentid) {
	// TODO Auto-generated method stub
	String ss = " delete from  wift_environment  where environmentid=" + environmentid;
	String sql = " delete from  wift_environment_server  where environmentid=" + environmentid;
	int a =jdbcTemplate.update(ss)  ;
	int b =jdbcTemplate.update(sql)  ;

}


}
