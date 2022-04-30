package com.testsystem.backstage.dao.impl;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.testsystem.backstage.dao.TagDao;
import com.testsystem.backstage.vo.Item;
import com.testsystem.backstage.vo.Tag;
@Repository
public class TagDaoImpl implements TagDao {

	 @Autowired
	 private JdbcTemplate jdbcTemplate ;
	 
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List ArticleTag(int articleid) {
		// TODO Auto-generated method stub
		String sql = "SELECT *  from article_tag_re a ,article_tag b where  a.tagid=b.tagid  and articleid="+articleid ;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}

	@Override
	public List TagArticle(int tagid) {
		// TODO Auto-generated method stub
		String sql= " select a.tagid,a.tagname ,b.articleid ,c.articletitle ,c.creattime , d.catedirectory "
				+ "from article_tag as a , article_tag_re as b , article_content as c , article_cate as d "
				+ " where  a.tagid =b.tagid  and b.articleid =c.articleid   and c.cateid=d.cateid  and a.tagid ="+tagid ;
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List CateTag(String catedirectory) {
		// TODO Auto-generated method stub
		
	String sql ="select a.tagid,a.tagname ,b.articleid ,c.articletitle ,c.creattime , d.catedirectory "
			+ "from article_tag   as  a, article_tag_re as b  , article_content as c ,article_cate as d "
			+ "where  a.tagid =b.tagid  and b.articleid =c.articleid   and d.cateid=c.cateid  and d.catedirectory='"+catedirectory+"'";	
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List ItemTag(String item_directorie) {
		// TODO Auto-generated method stub
		String sql=" select a.tagid,a.tagname ,b.articleid ,c.articletitle "
				+ "from article_tag   as  a, article_tag_re as b  , article_content as c ,article_cate as d "
+"where a.tagid =b.tagid  and b.articleid =c.articleid   and d.cateid=c.cateid  and d.itemid = (select item_id from article_item where item_directorie ='"+item_directorie+"')";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public String TagName(int tagid) {
		// TODO Auto-generated method stub
		String sql="select tagname from article_tag  where tagid="+tagid ;
		return (String) jdbcTemplate.queryForObject(sql, java.lang.String.class);
	}

	@Override
	public List ItemTagAndNumber(String item_directorie) {
		// TODO Auto-generated method stub
		
		String sql="select  count(*) as num  , tagname , A.tagid  , E.item_directorie"
        +  " from   article_tag  as  A , article_tag_re as B ,article_content as C  ,article_cate  as D ,article_item as E "
        +  " where  B.articleid  = C.articleid  and  B.tagid =A.tagid  and  D.cateid=C.cateid  and D.itemid = E.item_id  "
        +  " and D.itemid = (select item_id from article_item where item_directorie ='"+item_directorie+"') "
        +  " group  by tagname  " ;


		
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List MyTag(int userid) {
		// TODO Auto-generated method stub
		String sql=" select a.id, a.userid , b.tagid, b.tagname ,c.item_directorie  from  article_tag_ower   a  ,  article_tag  b ,article_item c where  userid='"+userid+"'  and  a.tagid=b.tagid  and b.itemid=c.item_id ";	
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public Tag CreateTagReturId(String key,int itemid) {
		// TODO Auto-generated method stub
		String sql="select * from  article_tag  where itemid='"+itemid+"' and  tagname='"+key+"'" ;
		Tag tag ;
		List  lt =jdbcTemplate.queryForList(sql); 
		if(lt.size()==0){
		String insersql="insert into article_tag (tagname ,itemid) value ('"+key+"' ,'"+itemid+"')";
		jdbcTemplate.update(insersql);
		 tag= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Tag>(Tag.class)) ;		
		}else{
		 tag= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Tag>(Tag.class)) ;
		}

		return tag;
	}

	@Override
	public void AddTagidToOwer(int userid, int tagid) {
		// TODO Auto-generated method stub
		String sql=" insert into article_tag_ower ( userid,tagid ) "
			+"SELECT '"+userid+"','"+tagid+"' from DUAL WHERE NOT EXISTS(select userid ,tagid  from  article_tag_ower  where userid ='"+userid+"'  and tagid='"+tagid+"' )"  ;
		jdbcTemplate.update(sql);
	}

	@Override
	public void AddTagidToArticle(int tagid, int articleid) {
		// TODO Auto-generated method stub
		String sql=" insert into article_tag_re ( articleid,tagid ) "
				+"SELECT '"+articleid+"','"+tagid+"' from DUAL WHERE NOT EXISTS(select articleid ,tagid  from  article_tag_re  where articleid ='"+articleid+"'  and tagid='"+tagid+"' )"  ;
		jdbcTemplate.update(sql);
	}

	@Override
	public List GetArticleTag(int articleid) {
		// TODO Auto-generated method stub
		String sql=" select  a.articleid ,b.tagid,b.tagname  from  article_tag_re   as  a , article_tag as b   where  a.articleid='"+articleid+"'  and a.tagid=b.tagid ";	
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetTagArticle(String item, int tagid) {
		// TODO Auto-generated method stub
		String sql=" select *  from  article_tag_re a, article_content b ,article_cate  c  " 
					+"where a.tagid='"+tagid+"'  and a.articleid=b.articleid   and b.cateid=c.cateid  and c.cateid in"
					+ " ( select   cateid  from article_cate  where pdir ='"+item+"'  or pdir in(select   catedirectory  from article_cate  where pdir ='"+item+"')   )" ;

		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public Tag GetTagById(int tagid) {
		// TODO Auto-generated method stub
		String sql="select * from  article_tag  where tagid='"+tagid+"'" ;
		Tag tag= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Tag>(Tag.class)) ;
		return tag;
	}

	@Override
	public List GetTagByItemId(int itemid) {
		// TODO Auto-generated method stub
		String sql=" select *  from article_tag where  itemid='"+itemid+"' ";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List Mytag(int userid, int itemid) {
		// TODO Auto-generated method stub
		String sql=" select a.id, a.userid , b.tagid, b.tagname ,b.itemid  from  article_tag_ower   a  ,  article_tag  b where  userid='"+userid+"'  and  a.tagid=b.tagid  and b.itemid='"+itemid+"' ";	
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List GetTagAll() {
		// TODO Auto-generated method stub
		
		
		String sql=" select *  from article_tag  a ,  article_item   b  where a.itemid=b.item_id ";	
		return jdbcTemplate.queryForList(sql);
	}

}
