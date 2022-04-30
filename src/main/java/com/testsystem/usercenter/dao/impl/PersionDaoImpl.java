package com.testsystem.usercenter.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.usercenter.dao.PersionDao;
import com.testsystem.usercenter.vo.Persion;
@Repository
public class PersionDaoImpl implements PersionDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List GetPersionInfo(int userid) {
		// TODO Auto-generated method stub
		String sql = "select * from admin_user where userid="+userid ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public void EditPersionInfo(Persion persion) {
		// TODO Auto-generated method stub
		String sql="update  admin_user   set    username= '"+persion.getUsername()+"', useravatar ='"+persion.getUseravatar()+"' ,useremail ='"+persion.getUseremail()+"' ,realname='"+persion.getRealname()+
				"', englishname='"+persion.getEnglishname()+"' ,telephone ='"+persion.getTelephone()+"', qq='"+persion.getQq()+"' where userid ="+persion.getUserid() ;
		System.out.println("llllllllllllllllllllllllllllllllllllllllll"+sql);
		jdbcTemplate.update(sql) ;
	}

}
