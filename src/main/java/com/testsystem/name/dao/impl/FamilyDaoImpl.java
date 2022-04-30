package com.testsystem.name.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.FamilyDao;
@Repository
public class FamilyDaoImpl implements FamilyDao {

	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	
	
	@Override
	public List GetAllFamily() {
		// TODO Auto-generated method stub
		 String sql = "select * from life_family as family ,admin_user  as admin  where  family.userid =admin.userid ";
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
	}

	@Override
	public List GetFamilyById(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from life_family as family ,admin_user  as admin  where  family.userid =admin.userid and family.familyid="+id ;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}


	@Override
	public List FamilygetChildren(int currId) {
		// TODO Auto-generated method stub
		
//		String sql = "select admin.userid as ID,family.name as 'NAME',  family.pid as PID  from life_family_user as family ,admin_user  as admin  where   familyid=1 and family.userid =admin.userid and family.pid="+currId ;
		String sql = "select family.userid as ID,family.name as 'NAME',  family.pid as PID ,family.`order` as 'order' ,family.mname as TITLE from life_family_user as family   where   familyid=1  and family.pid="+currId +" order by family.order";
		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}


	@Override
	public List GetFamilyMembersById(int id) {
		// TODO Auto-generated method stub

		 String sql =" select * from (select a.reid , a.familyid ,a.userid,a.pid ,a.`name` as uname ,b.`name` as pname  ,a.`order` as sort"
				+" from life_family_user   as a  "   
				+" LEFT JOIN life_family_user as b "   
				+" ON a.pid = b.userid ) as c  where c.familyid ="+id+" order by sort " ;
		 
		 
		 
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
	}


	@Override
	public List GetFamilyNameSelect(int familyId) {
		// TODO Auto-generated method stub
		String  sql =  "SELECT * FROM  life_family_user as c "
				+"where c.`name` like  CONCAT((select name from life_name as a , life_family as  b where   b.familyid ="+familyId+"   and     a.nameid = b.nameid),'%')" ;
						 
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}

}
