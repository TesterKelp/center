package com.testsystem.defect.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.SchemeWidgetDao;
import com.testsystem.defect.vo.Widget;

@Repository
public class SchemeWidgetDaoImpl implements SchemeWidgetDao
{

  @Autowired
  JdbcTemplate jdbcTemplate;
  protected RowMapper userAll = new RowMapper() {
    public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
      return rs.getString(1);
    }
  };

  protected RowMapper defaultValue = new RowMapper() {
    public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
      return rs.getString(1);
    }
  };

  public List GetSchemeWidgetList(int schemeId)
  {
    String sql = "select * from  defect_scheme_widget  where scheme_id=" + schemeId;
    return this.jdbcTemplate.queryForList(sql);
  }

  public String GetWidgetFieldName(int schemeId)
  {
    String sql = "select fieldname from defect_field where  isused= 0  and schemeid= " + schemeId + 
      "  order by  fieldid asc limit 1 ";

    List strLst = this.jdbcTemplate.query(sql, new Object[0], this.userAll);
    if (strLst.isEmpty()) {
      System.out.println("not could filename");
      return "no";
    }
    System.out.println("strLst.get(0)" + (String)strLst.get(0));
    return (String)strLst.get(0);
  }

  public void AddWidget(Widget widget)
  {
    String ss = "insert into defect_scheme_widget  (widget_english_name,widget_china_name,widget_type,widget_datasource,widget_show,scheme_id,widget_order,widget_fieldname) values ('" + 
      widget.getWidgetEnglishName() + "','" + widget.getWidgetChinaName() + "','" + widget.getWidgetType() + "','" + widget.getWidgetDataSource() + "','" + widget.getWidgetShow() + "','" + widget.getSchemeId() + "','" + widget.getWidgetOrder() + "','" + widget.getWidgetFieldName() + "')";
    System.out.println("sssss" + ss);
    this.jdbcTemplate.update(ss);
  }

  public void setFieldNameIsUsed(String fieldName, int schemeId)
  {
    String updatasql = " update defect_field  set isused=1  where   schemeid=" + schemeId + "  and      fieldname='" + fieldName + "'";
    this.jdbcTemplate.update(updatasql);
  }

  public boolean isExistEngLishName(String widgetEnglishName)
  {
    String sql = "select  count(*)  from defect_scheme_widget where widget_english_name='" + widgetEnglishName + "'";

    int isexist = ((Integer)this.jdbcTemplate.queryForObject(sql, Integer.class)).intValue();

    boolean result = false;
    if (isexist >= 1) {
      result = true;
    }
    else {
      result = false;
    }
    return result;
  }

  public String GetWidgetDefaultValue(int widgetId)
  {
    String sql = "select valuetext from defect_scheme_widget_value  where  widgetid ='" + widgetId + "'";
    List strLst = this.jdbcTemplate.query(sql, new Object[0], this.defaultValue);
    if (strLst.isEmpty()) {
      System.out.println("valuetext");
      return "no";
    }
    System.out.println("strLst.get(0)" + (String)strLst.get(0));
    return (String)strLst.get(0);
  }

  public List GetWidgetSelectDefaultValue(int widgetId)
  {
    System.out.println("dao");
    String sql = "select valueid,valuetext from defect_scheme_widget_value  where  widgetid ='" + widgetId + "'";
    List lst = new ArrayList();
    lst = this.jdbcTemplate.queryForList(sql);
    System.out.println(lst);
    return lst;
  }

  public boolean isFirst(int widgetId)
  {
    String sql = "select  count(*)  from defect_scheme_widget_value where widgetid='" + widgetId + "'";

    int isexist = ((Integer)this.jdbcTemplate.queryForObject(sql, Integer.class)).intValue();

    boolean result = false;
    if (isexist >= 1) {
      result = false;
    }
    else {
      result = true;
    }
    return result;
  }

  public void updataValueText(int widgetId, String valueText)
  {
    String updatasql = " update defect_scheme_widget_valuee  set valuetext= '" + valueText + "' where widgetid='" + widgetId + "'";
    System.out.println("updatasql" + updatasql);
    this.jdbcTemplate.update(updatasql);
  }

  public void saveValueText(int widgetId, String valueText)
  {
    String ss = "insert into defect_scheme_widget_value  (valuetext,widgetid) values ('" + valueText + "','" + widgetId + "')";
    System.out.println("sssss" + ss);
    this.jdbcTemplate.update(ss);
  }
}