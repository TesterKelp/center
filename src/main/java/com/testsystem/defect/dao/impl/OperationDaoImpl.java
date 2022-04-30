package com.testsystem.defect.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.OperationDao;
import com.testsystem.defect.vo.Operation;
@Repository
public class OperationDaoImpl implements OperationDao {

	@Autowired
	JdbcTemplate jdbcTemplate ;
	
	public List GetOperationList() {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select * from defect_operation   order by  isshow desc, operationorder asc";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public String GetCustomFiledName1() {
		// TODO Auto-generated method stub
		String sql = "select fieldname from defect_field where  isused= 0   order by  fieldid asc limit 1 ";
		String name = (String) jdbcTemplate.queryForObject( sql, java.lang.String.class);
		System.out.println("name:::::::"+name);
		return name;
	}
	
	public String GetCustomFiledName(int subjecttype) {
		// TODO Auto-generated method stub
		System.out.println("GetCustomFiledName()   Dao");
		String sql = "select fieldname from defect_field where  isused= 0  and subjecttype= "+subjecttype+"      order by  fieldid asc limit 1 ";
//		String name = (String) jdbcTemplate.queryForObject( sql, java.lang.String.class);
		List<String> strLst =jdbcTemplate.query(sql, new Object[] { }, userAll);
		if (strLst.isEmpty()) {
	    	System.out.println("not could filename");
		      return "no";
		    } else {
		    	System.out.println("strLst.get(0)"+strLst.get(0));
		      return strLst.get(0);
		    }
	}
	protected RowMapper userAll = new RowMapper() {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			 return rs.getString(1);
}
}	;
	
	
	
	
	
	
	
	
	
	

	
	
	public void SetFieldNameIsUsed(String fieldname) {
		// TODO Auto-generated method stub
//		String fieldname ="" ;
		String updatasql=" update defect_field  set isused=1  where fieldname='"+fieldname+"'";
		jdbcTemplate.update(updatasql);
	}



	public void SaveOperation(Operation operation) {
		// TODO Auto-generated method stub
	    String  ss= "insert into defect_operation  (englishname,chinaname,operationtype,datasource,isshow,subjecttype,projectid,operationorder,fieldname) values "
		             +"('"+operation.getEnglishname()+"','"+operation.getChinaname()+"','"+operation.getOperationtype()+"','"+operation.getDatasource()+"','"+operation.getIsshow()+"','"+operation.getSubjecttype()+"','"+operation.getProjectid()+"','"+operation.getOperationorder()+"','"+operation.getFieldname()+"')" ;
	   System.out.println("sssss"+ss);
		jdbcTemplate.update(ss);
	}

	public boolean IsExistEngLishName(String englishname) {
		// TODO Auto-generated method stub
		String sql="select  count(*)  from defect_operation where englishname='"+englishname+"'";
		int isexist =jdbcTemplate.queryForInt(sql);
		boolean result  =false ;
		if(isexist>=1){
			result =true ;
		}
		else{
			result =false ;
		}
		return result;
	}

	public void DelOperation(int operationid) {
		// TODO Auto-generated method stub
		String sql ="delete  from  defect_operation where operationid='"+operationid+"'" ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

	public boolean IsFirst(int operationid) {
		// TODO Auto-generated method stub
		
		String sql="select  count(*)  from defect_operation_value where operationid='"+operationid+"'";
		int isexist =jdbcTemplate.queryForInt(sql);
		boolean result  =false ;
		if(isexist>=1){
			result =false ;
		}
		else{
			result =true ;
		}
		return result;
	}
	public void SaveOperationValue(String operationvalue, int operationid) {
		// TODO Auto-generated method stub
		String  ss= "insert into defect_operation_value  (valuetext,operationid) values ('"+operationvalue+"','"+operationid+"')" ;
		System.out.println("sssss"+ss);
		jdbcTemplate.update(ss);
	}
	public void UpdateOperationValue(String operationvalue, int operationid) {
		// TODO Auto-generated method stub
		String updatasql=" update defect_operation_value  set valuetext= '"+operationvalue+"' where operationid='"+operationid+"'";
		System.out.println("updatasql"+updatasql);
		jdbcTemplate.update(updatasql);
	}

	public List GetOperationSelectValue(int operationid) {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select valueid,valuetext from defect_operation_value  where  operationid ='"+operationid+"'";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public String GetOperationValue(int operationid) {
		// TODO Auto-generated method stub
		System.out.println("GetCustomFiledName()   Dao");
		String sql = "select valuetext from defect_operation_value  where  operationid ='"+operationid+"'";
		List<String> strLst =jdbcTemplate.query(sql, new Object[] { }, defaultValue);
		if (strLst.isEmpty()) {
	    	System.out.println("valuetext");
		      return "no";
		    } else {
		    	System.out.println("strLst.get(0)"+strLst.get(0));
		      return strLst.get(0);
		    }
	}
	protected RowMapper defaultValue = new RowMapper() {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			 return rs.getString(1);
}
}	;

	public void SetShowOrHidden(int operationid, int isshow) {
		// TODO Auto-generated method stub
		String updatasql=" update defect_operation  set isshow= '"+isshow+"' where operationid='"+operationid+"'";
		System.out.println("updatasql"+updatasql);
		jdbcTemplate.update(updatasql);
	}

	public List GetOperationListByIsShow() {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select * from defect_operation   where  isshow =1 ";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public void Setdatasource(int operationid, int datasource) {
		// TODO Auto-generated method stub
	String sql="update  defect_operation set  datasource="+datasource+" where  operationid="+operationid ;
	jdbcTemplate.update(sql);
	
	}

	public String GetSqlStrByOperationId(int operationid) {
		// TODO Auto-generated method stub
		String sql="select  sqlstr  from  defect_operation   where  operationid="+operationid ;
		return      (String)jdbcTemplate.queryForObject(sql,java.lang.String.class);
	}

	public void AddOperationSqlStr(int operationid, String sqlstr) {
		// TODO Auto-generated method stub
		String sql="update  defect_operation set  sqlstr='"+sqlstr+"'  where  operationid="+operationid ;
		jdbcTemplate.update(sql);
	}

	public String GetOperationFiledNameByOperationId(int operationid) {
		// TODO Auto-generated method stub
		String sql = "select fieldname from defect_operation where  operationid="+operationid;
		List<String> strLst =jdbcTemplate.query(sql, new Object[] { }, op);
		    	System.out.println("strLst.get(0)"+strLst.get(0));
		      return strLst.get(0);
	}
	protected RowMapper op = new RowMapper() {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			 return rs.getString(1);
}
}	;

	public List GetShowOperationBySubjectType(int subjecttype) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_operation where  isshow ='1'    and   subjecttype="+subjecttype+"   order by operationorder" ;
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetOperationByProjectId(int projectid) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_operation where  projectid ="+projectid;
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public String GetCustomFiledName(int subjecttype, int projectid) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		System.out.println("GetCustomFiledName()   Dao");
		String sql = "select fieldname from defect_field where  isused= 0 and projectid="+projectid+ " and subjecttype= "+subjecttype+"      order by  fieldid asc limit 1 ";
//		String name = (String) jdbcTemplate.queryForObject( sql, java.lang.String.class);
		List<String> strLst =jdbcTemplate.query(sql, new Object[] { }, ul);
		if (strLst.isEmpty()) {
	    	System.out.println("not could filename");
		      return "no";
		    } else {
		    	System.out.println("strLst.get(0)"+strLst.get(0));
		      return strLst.get(0);
		    }
	}
	protected RowMapper ul = new RowMapper() {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			 return rs.getString(1);
}
}	;

	@Override
	public void SetFieldNameIsUsed(String fieldname, int projectid) {
		// TODO Auto-generated method stub
		String updatasql=" update defect_field  set isused=1  where   projectid="+projectid+"  and      fieldname='"+fieldname+"'";
		jdbcTemplate.update(updatasql);
	}

	@Override
	public void SetFieldDefatultProjectId(int projectid) {
		// TODO Auto-generated method stub
		System.out.println("service:::::::::::::"+projectid);
		String updatasql=" update defect_field_default  set    projectid="+projectid;
		System.out.println("service:::::::::::::"+updatasql);
		jdbcTemplate.update(updatasql);
	}

	@Override
	public void SetFieldProjectInit() {
		// TODO Auto-generated method stub
		String sql="insert into defect_field(fieldname ,isused,subjecttype ,projectid) select fieldname ,isused,subjecttype ,projectid from defect_field_default";
		jdbcTemplate.update(sql);
	}

	@Override
	public List GetShowOperationByTask() {
		// TODO Auto-generated method stub
		
		String sql= "select * from defect_operation  where  isshow ='1'    and   subjecttype=3   " ;
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetTaskAndCaseOperationList() {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "select * from defect_operation  where  subjecttype=3  or subjecttype=5   order by  isshow desc, operationorder asc";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

}
