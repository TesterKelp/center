package com.testsystem.wift.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.wift.dao.InterfaceDao;
import com.testsystem.wift.vo.Face;
import com.testsystem.wift.vo.InterfaceIndex;
import com.testsystem.wift.vo.RequestHeader;
import com.testsystem.wift.vo.RequestParamete;
import com.testsystem.wift.vo.ResponseHeader;
import com.testsystem.wift.vo.ResponseParamete;
@Repository
public class InterfaceDaoImpl implements InterfaceDao {

	@Autowired
	  JdbcTemplate jdbcTemplate;

	  public void setJdbcTemplate(JdbcTemplate jdbcTemplate)
	  {
	    this.jdbcTemplate = jdbcTemplate;
	  }

	  public List GetFaceListByAll()
	  {
	    String sql = "select * from wift_face  a,wift_module b ,wift_project c ,admin_user d where a.moduleid =b.moduleid and a.projectid =c.projectid and a.userid=d.userid order by a.interfaceid desc";
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public List GetFaceListByModuleId(int ModuleId)
	  {
	    String sql = "select * from wift_face where moduleid = " + ModuleId;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public List GetFaceListByProjectId(int ProjectId)
	  {
	    String sql = "select * from wift_face a,wift_module b ,wift_project c ,admin_user d where a.moduleid =b.moduleid and a.userid=d.userid and a.projectid =c.projectid  and a.projectid= " + 
	      ProjectId;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public List GetFaceListByProjectIdModuleId(int ProjectId, int ModuleId)
	  {
	    String sql = "select * from wift_face  a,wift_module b ,wift_project c ,admin_user d where a.moduleid =b.moduleid and a.projectid =c.projectid and a.userid=d.userid and a.projectid= " + 
	      ProjectId + "and a.moduleid=" + ModuleId;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public void AddFace(Face face)
	  {
	    String ss = "insert into wift_face  (interfacename,interfacedesc,projectid,moduleid,userid,directories,requesttype,createtime) values ('" + 
	      face.getInterfacename() + "','" + face.getInterfacedesc() + "','" + face.getProjectid() + "','" + 
	      face.getModuleid() + "','" + face.getUserid() + "','" + face.getDirectories() + "','" + 
	      face.getRequesttype() + "','" + face.getCreatetime() + "')";

	    System.out.println("sssss" + ss);
	    this.jdbcTemplate.update(ss);
	  }

	  public List GetInterfacDetailById(int interfaceid)
	  {
	    String sql = "SELECT * FROM wift_face  as a  ,wift_module  as b ,wift_project c ,admin_user  d ,wift_environment e WHERE a.userid =  d.userid and  a.moduleid=b.moduleid and a.environmentid=e.environmentid and a.projectid=c.projectid  and a.interfaceid=" + 
	      interfaceid;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public int CreateInterfaceIndex(InterfaceIndex face)
	  {
	    String ss = "insert into wift_face  (interfacename,interfacedesc,projectid,moduleid,userid,directories,requesttype,createtime,environmentid) values ('" + 
	      face.getInterfacename() + "','" + face.getInterfacedesc() + "','" + face.getProjectid() + "','" + 
	      face.getModuleid() + "','" + face.getUserid() + "','" + face.getDirectories() + "','" + 
	      face.getRequesttype() + "','" + face.getCreatetime() + "','" + face.getEnvironmentid() + "')";
	    System.out.println("sssss" + ss);
	    this.jdbcTemplate.update(ss);
	    return ((Integer)this.jdbcTemplate.queryForObject("SELECT LAST_INSERT_ID()", Integer.class)).intValue();
	  }

	  public void CreateInterfaceRequest(RequestParamete requestParamete)
	  {
	    String ss = "insert into wift_face_request  (interfaceid,parametername,parametertype,parameterrequired,parameterdefault,parameterdescription,parametersort) values ('" + 
	      requestParamete.getInterfaceId() + "','" + requestParamete.getRquestParameterName() + "','" + 
	      requestParamete.getRquestParameterType() + "','" + requestParamete.getRquestParameterRequired() + 
	      "','" + requestParamete.getRquestParameterDefaultValue() + "','" + 
	      requestParamete.getRquestParameterDescription() + "','" + requestParamete.getRquestParameterSort() + 
	      "')";
	    System.out.println("sssss" + ss);
	    this.jdbcTemplate.update(ss);
	  }

	  public void CreateInterfaceResponse(ResponseParamete responseParamete)
	  {
	    String ss = "insert into wift_face_response  (interfaceid,parametername,parametertype,parameterrequired,parameterdescription,parametersort) values ('" + 
	      responseParamete.getInterfaceId() + "','" + responseParamete.getResponseParameterName() + "','" + 
	      responseParamete.getResponseParameterType() + "','" + responseParamete.getResponseParameterRequired() + 
	      "','" + responseParamete.getResponseParameterDescription() + "','" + 
	      responseParamete.getResponseParameterSort() + "')";
	    System.out.println("sssss" + ss);
	    this.jdbcTemplate.update(ss);
	  }

	  public void CreateInterfaceRequestHeader(RequestHeader requestHeader)
	  {
	    String ss = "insert into wift_face_request_header  (interfaceid,parametername,parameterrequired,parameterdefault,parameterdescription,parametersort) values ('" + 
	      requestHeader.getInterfaceId() + "','" + requestHeader.getRequestHeaderParameterName() + "','" + 
	      requestHeader.getRequestHeaderParameterRequired() + "','" + 
	      requestHeader.getRequestHeaderParameterDefaultValue() + "','" + 
	      requestHeader.getRequestHeaderParameterDescription() + "','" + 
	      requestHeader.getRequestHeaderParameterSort() + "')";
	    System.out.println("sssss" + ss);
	    this.jdbcTemplate.update(ss);
	  }

	  public void CreateInterfaceResponseHeader(ResponseHeader responseHeader)
	  {
	    String ss = "insert into wift_face_response_header  (interfaceid,parametername,parameterrequired,parameterdescription,parametersort) values ('" + 
	      responseHeader.getInterfaceId() + "','" + responseHeader.getResponseHeaderParameterName() + 
	      "','" + responseHeader.getResponseHeaderParameterRequired() + "','" + 
	      responseHeader.getResponseHeaderParameterDescription() + "','" + 
	      responseHeader.getResponseHeaderParameterSort() + "')";
	    System.out.println("sssss" + ss);
	    this.jdbcTemplate.update(ss);
	  }

	  public List GetInterfaceIndexById(int interfaceid)
	  {
	    String sql = "SELECT * FROM wift_face  as a  ,wift_module  as b ,wift_project c ,admin_user  d WHERE a.userid =  d.userid and  a.moduleid=b.moduleid  and a.projectid=c.projectid  and a.interfaceid=" + 
	      interfaceid;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public List GetInterfaceRequestById(int interfaceid)
	  {
	    String sql = "SELECT * FROM wift_face_request  WHERE interfaceid=" + interfaceid;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public List GetInterfaceResponseById(int interfaceid)
	  {
	    String sql = "SELECT * FROM wift_face_response  WHERE interfaceid=" + interfaceid;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public List GetInterfaceRequestHeader(int interfaceid)
	  {
	    String sql = "SELECT * FROM wift_face_request_header  WHERE interfaceid=" + interfaceid;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public List GetInterfaceResponseHeader(int interfaceid)
	  {
	    String sql = "SELECT * FROM wift_face_response_header  WHERE interfaceid=" + interfaceid;
	    List lst = new ArrayList();
	    lst = this.jdbcTemplate.queryForList(sql);
	    System.out.println(lst);
	    return lst;
	  }

	  public int DelInterfacById(int interfaceid)
	  {
	    String sql = "delete  FROM wift_face  WHERE interfaceid=?";
	    int row = this.jdbcTemplate.update(sql, new Object[] { Integer.valueOf(interfaceid) });
	    String sql1 = "delete  FROM wift_face_request  WHERE interfaceid=?";
	    this.jdbcTemplate.update(sql1, new Object[] { Integer.valueOf(interfaceid) });
	    String sql2 = "delete  FROM wift_face_request_header  WHERE interfaceid=?";
	    this.jdbcTemplate.update(sql2, new Object[] { Integer.valueOf(interfaceid) });
	    String sql3 = "delete  FROM wift_face_response  WHERE interfaceid=?";
	    this.jdbcTemplate.update(sql3, new Object[] { Integer.valueOf(interfaceid) });
	    String sql4 = "delete  FROM wift_face_response_header  WHERE interfaceid=?";
	    this.jdbcTemplate.update(sql4, new Object[] { Integer.valueOf(interfaceid) });
	    return row;
	  }

	  public boolean InterfacHasCase(int interfaceid)
	  {
	    String sql = "select *  FROM wift_case  WHERE interfaceid=" + interfaceid;
	    List lst = this.jdbcTemplate.queryForList(sql);

	    return (lst.size() > 0);
	  }

	@Override
	public void SaveJson(int interfaceid, String jsonstr) {
		// TODO Auto-generated method stub
		 String sql = "insert   into wift_face_json"
		 		+ " (interfaceid,jsondata) values ('" + interfaceid+ "','" + jsonstr + "')";
			    System.out.println(sql);
			    this.jdbcTemplate.update(sql);
	}

	@Override
	public String GetJsonStr(int interfaceid) {
		// TODO Auto-generated method stub
		 String sql = "select  jsondata   from wift_face_json where interfaceid=" + interfaceid;

		    String rs = (String)this.jdbcTemplate.queryForObject(sql, String.class);

		    System.out.println("rs===" + rs);

		    return rs;
		
		
	}

}
