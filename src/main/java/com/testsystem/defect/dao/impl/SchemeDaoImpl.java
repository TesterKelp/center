package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.SchemeDao;
import com.testsystem.defect.vo.Scheme;

@Repository
public class SchemeDaoImpl implements SchemeDao
{

  @Autowired
  JdbcTemplate jdbcTemplate;

  public List GetSchemeList()
  {
    String sql = "select * from  defect_scheme as ds , admin_user as au  where ds.scheme_createuserid=au.userid  ";
    return this.jdbcTemplate.queryForList(sql);
  }

  public List GetSchemeListBySchemeType(int schemeType)
  {
    String sql = "select * from  defect_scheme as ds  where ds.scheme_type=" + schemeType;
    return this.jdbcTemplate.queryForList(sql);
  }

  public int addScheme(Scheme scheme)
  {
    String ss = "insert into defect_scheme  (scheme_name,scheme_type,scheme_createuserid,scheme_createtime) values ('" + 
      scheme.getSchemeName() + "','" + scheme.getSchemeType() + "','" + scheme.getSchemeCreateUserId() + "','" + scheme.getSchemeCreateTime() + "')";
    System.out.println("sssss" + ss);
    this.jdbcTemplate.update(ss);

    return ((Integer)this.jdbcTemplate.queryForObject("select @@identity", Integer.class)).intValue();
  }

  public void SetFieldDefatultSchemeId(int schemeId, int schemeType)
  {
    String updatasql = " update defect_field_default  set  schemeid=" + schemeId + " where schemetype=" + schemeType;
    this.jdbcTemplate.update(updatasql);
  }

  public void SchemeFieldInit(int schemeId)
  {
    String sql = "insert into defect_field(fieldname ,isused,schemetype ,schemeid) select fieldname ,isused,schemetype ,schemeid  from defect_field_default where schemeId=" + schemeId;
    this.jdbcTemplate.update(sql);
  }
}
