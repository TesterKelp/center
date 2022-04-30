package com.testsystem.name.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.ContentDao;
import com.testsystem.name.tools.P;
@Repository
public class ContentDaoImpl implements ContentDao {

	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public List GetContentByCateId(int id) {
		// TODO Auto-generated method stub
		 String sql = "select * from life_cate as a ,life_content as b   where a.id =b.cateid and a.id="+id ;
			List lst = new ArrayList();
			lst = jdbcTemplate.queryForList(sql);
			return lst;
	}

	@Override
	public List ContentCateDetail(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from life_content    where articleid="+id ;
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		return lst;
	}

	@Override
	public P GetContentByCateId(int id, int pagesize, int pagenumber) {
		// TODO Auto-generated method stub
		
		
		
		 String sql = "select count(*) from life_cate as a ,life_content as b   where a.id =b.cateid and a.id="+id ;
			
			
			int totalRecord = jdbcTemplate.queryForInt(sql);

			int totalPage = 0;   //总页数
			 if (totalRecord % pagesize == 0) {
				 totalPage = totalRecord / pagesize;
		        } else {
		         totalPage = totalRecord / pagesize + 1;
		        }
			 String sq = "select a.catename ,a.id , b.title, b.creattime  ,b.articleid   from life_cate as a ,life_content as b   where a.id =b.cateid and a.id="+id;
		
			 if(pagenumber<=1){
		            sq+=" limit 0,"+pagesize;
		        }else{
		            sq+=" limit "+((pagenumber-1)*pagesize)+","+pagesize;
		        } 
			List lst = jdbcTemplate.queryForList(sq) ;
		
		   P p= new P();
		
		p.setTotalRecord(totalRecord);
		p.setTotalPage(totalPage);
		p.setList(lst);

		return p;
	}

}
