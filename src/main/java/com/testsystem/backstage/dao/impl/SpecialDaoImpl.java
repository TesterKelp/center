package com.testsystem.backstage.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.testsystem.article.vo.Cate;
import com.testsystem.backstage.dao.SpecialDao;
import com.testsystem.backstage.vo.Item;
import com.testsystem.backstage.vo.Special;
@Repository
public class SpecialDaoImpl implements SpecialDao {
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate ;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	

	@Override
	public List GetItemSpecial(String dir) {
		// TODO Auto-generated method stub
		String  sql=" select *  from  article_cate  where  itemid =(select item_id from article_item   where item_directorie='"+dir+"')   " ;
		return this.jdbcTemplate.queryForList(sql);
	}

	@Override
	public Special GetSpecialById(int id) {
		// TODO Auto-generated method stub
		String sql="select  cateid ,catetype, catename ,catedirectory  ,isshow ,itemid ,scateid   , listtemplate , articletemplate ,logicorder ,top "
				+ " ckeyword ,cdepict ,  pdir    FROM article_cate    where  cateid='"+id+"'";
		System.out.println("SQl"+sql);
		Object sp  ;
		try{
		 sp  =(Special)jdbcTemplate.queryForObject(sql,new BeanPropertyRowMapper(Special.class)) ;
		 }catch(EmptyResultDataAccessException e){
			    e.printStackTrace();
			    System.out.println("bad");
			       return null;
			   }
		
		
		
	//	System.out.println("-----"+sp.getCatename());
		return  (Special) sp;
	}

	@Override
	public void SpecialSave(Special special) {
		// TODO Auto-generated method stub
		
		
		String sql=" insert into  article_cate (catetype ,catename , catedirectory ,isshow ,itemid ,scateid , listtemplate ,"
				+ "articletemplate , logicorder ,top , ckeyword ,cdepict  ,pdir ,pagesize) values('"+special.getCatetype()+"','"+special.getCatename()+"',"
						+ "'"+special.getCatedirectory()+"','"+special.getIsshow()+"','"+special.getItemid()+"','"+special.getScateid()+"',"
								+ "'"+special.getListtemplate()+"','"+special.getArticletemplate()+"','"+special.getLogicorder()+"','"+special.getTop()+"',"
										+ "'"+special.getCkeyword()+"','"+special.getCdepict()+"','"+special.getPdir()+"','"+special.getPagesize()+"')    " ;
		
		jdbcTemplate.update(sql);
	}

	@Override
	public int SpecialPageSize(String dir) {
		// TODO Auto-generated method stub
		
		String sql=" select  pagesize   from article_cate  where catedirectory='"+dir+"' " ;

		return jdbcTemplate.queryForInt(sql);
	}


	
	
	
	
	
	
	
	
	
	

}
