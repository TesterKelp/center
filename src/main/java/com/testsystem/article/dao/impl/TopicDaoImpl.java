package com.testsystem.article.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.article.dao.TopicDao;
import com.testsystem.article.vo.Topic;
@Repository
public class TopicDaoImpl implements TopicDao {
	@Autowired
	private JdbcTemplate jdbcTemplate ;
	
	public List TopicAllList() {
		// TODO Auto-generated method stub
		String sql="Select *  from article_topic";
		return jdbcTemplate.queryForList(sql);
	}

	public void TopicAdd(Topic topic) {
		// TODO Auto-generated method stub
		String  sql="insert  into  article_topic (topicname,topicintro,topicimage,userid,itemid,top,templatecover,templatedetail,sort,skin)values( '"+topic.getTopicname()+"','"+topic.getTopicintro()+"','/pic/topicimage/"+topic.getTopicimage()+"','"
		+topic.getUserid()+"','"+topic.getItemid()+"','"+topic.getTop()+"','"+topic.getTemplatecover()+"','"+topic.getTemplatedetail()+"','"+topic.getSort()+"','"+topic.getSkin()+"')";
		 jdbcTemplate.update(sql);
	}

	public List MyTopic(int userid) {
		// TODO Auto-generated method stub
		String sql="Select *  from article_topic  , article_item     where    article_item.item_id=article_topic.itemid and  userid="+userid;
		return jdbcTemplate.queryForList(sql);
	}

	public Topic GetTopicById(int topicid) {
		// TODO Auto-generated method stub
		
		String sql = "select *  from article_topic  where  topicid='"+topicid+"'";	
		System.out.println("SQl"+sql);
//		Object topic=(Topic) this.jdbcTemplate.query(sql,new BeanPropertyRowMapper<Topic>(Topic.class));
	//	Object topic= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Topic>(Topic.class)) ;

//		 //��ѯ��ʽ3(��ѯһ������)
//	     public Stu getOneStu( int id) {
//	       String sql="select s_id as sid,s_name as sname,s_sex as ssex,s_brith as sbrith from stu where s_id=?";
//	       Object[] obj= new Object[]{id};
//	       Object stu=jdbctemp.queryForObject(sql, obj, new BeanPropertyRowMapper(Stu. class));
//	       //���Բ����ڲ��࣬������������ֶ����Ҫ��ݿ��е��ֶ����һ�������ݿ��ֶ���Ϊs_id������ΪSId,
//	       //�����û����������淶�������select���������ݿ��ֶ���ȡ����
//	       //����Ĳ�ѯҲ�������ַ�ʽ
//	        return (Stu)stu;
//	    } 

		Object topic  ;
		try{
			 topic= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Topic>(Topic.class)) ;
		}
		catch(DataAccessException e){
			
			topic =null ;
		}
		

		return (Topic) topic ;
	}

	public void DelTopic(int topicid) {
		// TODO Auto-generated method stub
		String sql ="delete  from  article_topic where topicid='"+topicid+"'" ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

	public void TopicEdit(Topic topic) {
		// TODO Auto-generated method stub
		String  sql="update  article_topic   set  "
				+ "topicname ='"+topic.getTopicname()+"',"
				+ "topicintro='"+topic.getTopicintro()+"',"
				+ "itemid='"+topic.getItemid()+"',"
				+ "templatecover='"+topic.getTemplatecover()+"',"
				+ "templatedetail='"+topic.getTemplatedetail()+"',"
				+ "skin='"+topic.getSkin()+"',"
				+ "topicimage='"+topic.getTopicimage()+"'"  
			+ " where   topicid="+topic.getTopicid()  ;
		System.out.println(sql);
		 jdbcTemplate.update(sql);
	}

	public List GetTopicSelect(int userid) {
		// TODO Auto-generated method stub
		
		
		String sql ="select  *  from  article_topic a , article_item b where  a.itemid =b.item_id  and     a.userid='"+userid+"'" ;
		System.out.println(sql);
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List TopicAllList(String item) {
		// TODO Auto-generated method stub
		String sql="Select *  from article_topic where itemid= (select item_id from article_item where item_directorie='"+item+"')";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public int SetTopicTop(Topic topic) {
		// TODO Auto-generated method stub
		 String  sql="update  article_topic   set  top ='"+topic.getTop()+"'  where   topicid="+topic.getTopicid()  ;
			System.out.println(sql);
			return	 jdbcTemplate.update(sql);
	}
	
	
	

}
