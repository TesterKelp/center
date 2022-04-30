package com.testsystem.name.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.NameWapDao;
import com.testsystem.name.tools.P;
@Repository
public class NameWapDaoImpl implements NameWapDao {

	
	
	@Autowired
	JdbcTemplate jd ;
	public void setJdbcTemplate(JdbcTemplate jd) {
	      this.jd = jd;
	}
	
	
	
	
	
	
	
	@Override
	public P GetSjName(int pagesize ,int pagenumber,int nameid) {
		// TODO Auto-generated method stub

		int  pageSize=pagesize;
		int  pageNumber = pagenumber ;
		 String sql = "SELECT count(*)  from life_full_name  where nameid="+nameid; ;
		int totalRecord = jd.queryForInt(sql);

			int totalPage = 0;   //总页数
			 if (totalRecord % pageSize == 0) {
				 totalPage = totalRecord / pageSize;
		        } else {
		         totalPage = totalRecord / pageSize + 1;
		        }
			 String sq = "SELECT * from life_full_name  where nameid="+nameid;
		
			 if(pageNumber<=1){
		            sq+=" limit 0,"+pageSize;
		        }else{
		            sq+=" limit "+((pageNumber-1)*pageSize)+","+pageSize;
		        } 
			 System.out.println("tt:"+sq);
			List lst = jd.queryForList(sq) ;
		   P p= new P();
		System.out.println("tt:"+lst);
		p.setTotalRecord(totalRecord);
		p.setTotalPage(totalPage);
		p.setList(lst);

		return p;
		

	}







	@Override
	public int GetSjNameTotal(int pagesize, int nameid) {
		// TODO Auto-generated method stub
		int  pageSize=pagesize;
		 String sql = "SELECT count(*)  from life_full_name  where nameid="+nameid; ;
		int totalRecord = jd.queryForInt(sql);
		int totalPage = 0;   //总页数
		 if (totalRecord % pageSize == 0) {
			 totalPage = totalRecord / pageSize;
	        } else {
	         totalPage = totalRecord / pageSize + 1;
	        }
		return totalPage;
	}

}
