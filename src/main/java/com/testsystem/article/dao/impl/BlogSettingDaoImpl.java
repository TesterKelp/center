package com.testsystem.article.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.vo.User;
import com.testsystem.article.dao.BlogSettingDao;
import com.testsystem.article.vo.BlogSetting;
@Repository
public class BlogSettingDaoImpl implements BlogSettingDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;

	public void SaveBlogSetting(BlogSetting blogSetting) {
		// TODO Auto-generated method stub
	    String  sql= "insert into blog_info  (userid,template,introduce,notice,blogtime) values "
	             +"('"+blogSetting.getUserid()+"','"+blogSetting.getTemplate()+"','"+blogSetting.getIntroduce()+"','"+blogSetting.getNotice()+"','"+blogSetting.getBlogtime()+"')" ;
 System.out.println("sssss"+sql);
		jdbcTemplate.update(sql) ;
	}

	public List<BlogSetting> GetBlogSettingByUserId(int userid) {
		// TODO Auto-generated method stub
		String sql = "select * from blog_info  where  userid="+userid;	
		System.out.println("SQl"+sql);
		List<BlogSetting> lst=this.jdbcTemplate.query(sql,new BeanPropertyRowMapper<BlogSetting>(BlogSetting.class));
		System.out.println("12345size"+lst.size());
		System.out.println("login info:"+lst);
		return lst;
	
	}

	public void EditBlogSetting(BlogSetting blogSetting) {
		// TODO Auto-generated method stub
	    String  sql= "update   blog_info  set  logo ='"+blogSetting.getLogo()+"',  template ='"+blogSetting.getTemplate()+"', introduce ='"+blogSetting.getIntroduce()+"' ,notice ='"+blogSetting.getNotice()+"' where userid ="+blogSetting.getUserid() ;
System.out.println("sssss"+sql);
		jdbcTemplate.update(sql) ;
	}
	
	
	
	
}
