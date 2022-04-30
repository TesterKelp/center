package com.testsystem.wift.dao.Impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.wift.dao.FaceDao;
import com.testsystem.wift.vo.Face;
@Repository
public class FaceDaoImpl implements FaceDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetFaceListByAll() {
		// TODO Auto-generated method stub
		String sql = "select * from wift_face  a,wift_module b ,wift_project c ,admin_user d where a.moduleid =b.moduleid and a.projectid =c.projectid and a.userid=d.userid";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public List GetFaceListByModuleId(int ModuleId) {
		// TODO Auto-generated method stub
		String sql = "select * from wift_face where moduleid = "+ModuleId;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List GetFaceListByProjectId(int ProjectId) {
		// TODO Auto-generated method stub
		String sql = "select * from wift_face a,wift_module b ,wift_project c ,admin_user d where a.moduleid =b.moduleid and a.userid=d.userid and a.projectid =c.projectid  and a.projectid= "+ProjectId;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List GetFaceListByProjectIdModuleId(int ProjectId, int ModuleId) {
		// TODO Auto-generated method stub
		String sql = "select * from wift_face  a,wift_module b ,wift_project c ,admin_user d where a.moduleid =b.moduleid and a.projectid =c.projectid and a.userid=d.userid and a.projectid= "+ProjectId +" and a.moduleid="+ModuleId;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public void AddFace(Face face) {
		// TODO Auto-generated method stub
		  String  ss= "insert into wift_face  (interfacename,interfacedesc,projectid,moduleid,userid,directories,requesttype,createtime) values "
		             +"('"+face.getInterfacename()+"','"+face.getInterfacedesc()+"','"+face.getProjectid()+"','"+face.getModuleid()+"','"+face.getUserid()+"','"+face.getDirectories()+"','"+face.getRequesttype()+"','"+face.getCreatetime()+"')" ;
		
	  System.out.println("sssss"+ss);
		jdbcTemplate.update(ss);
	}
	public List GetInterfacDetailById(int interfaceid) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM wift_face  as a  ,wift_module  as b ,wift_project c ,admin_user  d WHERE a.userid =  d.userid and  a.moduleid=b.moduleid  and a.projectid=c.projectid  and a.interfaceid="+interfaceid ;
				List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

}
