package com.testsystem.mift.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.mift.dao.MitfFaceDao;
import com.testsystem.mift.vo.MitfFace;
@Repository
public class MitfFaceDaoImpl implements MitfFaceDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetFaceListByAll() {
		// TODO Auto-generated method stub
		String sql = "select * from mift_face  a,mift_module b ,mift_project c ,admin_user d where a.moduleid =b.moduleid and a.projectid =c.projectid and a.userid=d.userid";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	public List GetFaceListByModuleId(int ModuleId) {
		// TODO Auto-generated method stub
		String sql = "select * from mift_face where moduleid = "+ModuleId;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List GetFaceListByProjectId(int ProjectId) {
		// TODO Auto-generated method stub
		String sql = "select * from mift_face a,mift_module b ,mift_project c ,admin_user d where a.moduleid =b.moduleid and a.userid=d.userid and a.projectid =c.projectid  and a.projectid= "+ProjectId;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List GetFaceListByProjectIdModuleId(int ProjectId, int ModuleId) {
		// TODO Auto-generated method stub
		String sql = "select * from mift_face  a,mift_module b ,mift_project c ,admin_user d where a.moduleid =b.moduleid and a.projectid =c.projectid and a.userid=d.userid and a.projectid= "+ProjectId +"and a.moduleid="+ModuleId;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public void AddFace(MitfFace mitfface) {
		// TODO Auto-generated method stub
		  String  ss= "insert into mift_face  (interfacename,interfacedesc,projectid,moduleid,userid,createtime) values "
		             +"('"+mitfface.getInterfacename()+"','"+mitfface.getInterfacedesc()+"','"+mitfface.getProjectid()+"','"+mitfface.getModuleid()+"','"+mitfface.getUserid()+"','"+mitfface.getCreatetime()+"')" ;
		
	  System.out.println("sssss"+ss);
		jdbcTemplate.update(ss);
	}
	public List GetInterfacDetailById(int interfaceid) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM mift_face  as a  ,mift_module  as b ,mift_project c ,admin_user  d WHERE a.userid =  d.userid and  a.moduleid=b.moduleid  and a.projectid=c.projectid  and a.interfaceid="+interfaceid ;
				List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

}
