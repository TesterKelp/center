package com.testsystem.name.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.name.dao.DreamDao;
import com.testsystem.name.vo.Dream;
import com.testsystem.name.vo.Ques;
import com.testsystem.name.vo.Wxl;
import com.testsystem.quanxian.vo.SysUser;
@Repository
public class DreamDaoImpl implements DreamDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public List DreamList() {
		// TODO Auto-generated method stub
		String sql=" select   id, title,biglx ,smalllx , zm    from   life_dream  " ;
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public List DreamBy(String field) {
		// TODO Auto-generated method stub
		
		String sql="select  id, title,biglx ,smalllx , zm  from  life_dream   group by " + field   ;
		return jdbcTemplate.queryForList(sql);

	}
	@Override
	public List DreamByZm(int id) {
		// TODO Auto-generated method stub
		
		String sql="select  id, title,biglx ,smalllx , zm  from  life_dream   where  zm=(select zm  from life_dream where  id='"+id+"')" ;
		
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public List DreamByBig(int id) {
		// TODO Auto-generated method stub
		String sql="select  id, title,biglx ,smalllx , zm  from  life_dream   where  biglx=(select biglx  from  life_dream where  id='"+id+"')" ;
		
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public List DreamBySmall(int id) {
		// TODO Auto-generated method stub
		String sql="select  id, title,biglx ,smalllx , zm  from  life_dream   where  smalllx=(select smalllx  from life_dream where  id='"+id+"')" ;
		
		return jdbcTemplate.queryForList(sql);
	}
	@Override
	public Dream GetDream(int id) {
		// TODO Auto-generated method stub

		String sql="select  *  from  life_dream    where  id='"+id+"'" ;
		Object  dream= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Dream>(Dream.class)) ;
		return (Dream) dream ;

	}
	@Override
	public List Search(String word,String field) {
		// TODO Auto-generated method stub
		
        String sql="select  id, title,biglx ,smalllx , zm  from  life_dream  where  "+field+" like '%"+word+"%'  " ;
		
		return jdbcTemplate.queryForList(sql);

	}
	@Override
	public Ques GetQues(int id) {
		// TODO Auto-generated method stub
		String sql="select  *  from  life_dream_ques    where  id='"+id+"'" ;
		Ques  ques= this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Ques>(Ques.class)) ;
		return (Ques) ques ;

	}
	@Override
	public int addQues(Ques ques) {
		// TODO Auto-generated method stub
		String sql=" insert  into  life_dream_ques  (title,keyword,con,usertype,username)  values ('"+ques.getTitle()+"','"
		+ques.getKeyword()+"','"+ques.getCon()+"','"+ques.getUsertype()+"','"+ques.getUsername()+"')   " ;
		return jdbcTemplate.update(sql);
	}
	@Override
	public List QuesList() {
		// TODO Auto-generated method stub
		
	       String sql="select  *  from  life_dream_ques " ;
			
			return jdbcTemplate.queryForList(sql);
	}
	@Override
	public List GetDream(String w) {
		// TODO Auto-generated method stub
		List  lst ;
		lst =  jdbcTemplate.queryForList(w);
		return lst;
	}
	@Override
	public String GetSql(String w) {
		// TODO Auto-generated method stub
		List  lst ;
		String sql=" select  *  from  life_dream  where  title ='"+w+"' limit 2 " ;	
		lst = jdbcTemplate.queryForList(sql) ;
		String  temp="" ;
		if(lst.isEmpty()){
			String sql2=" select  *  from  life_dream  where  title like '%"+w+"%'  limit 2 " ;
			lst = jdbcTemplate.queryForList(sql2) ;
			if(lst.isEmpty()){
				String sql3=" select  *  from  life_dream  where  message like '%"+w+"%' limit 2 " ;
				lst = jdbcTemplate.queryForList(sql3) ;
				if(lst.isEmpty()){

				}else{
					temp ="4"+sql3 ;
				}

			}else{
				temp ="6"+sql2 ;
			}

		}else{
			
			temp ="8"+sql ;
		}
		
		
		return temp;
	}
	@Override
	public List<Dream> GetDream() {
		// TODO Auto-generated method stub
		
		String sql = "select *  from life_dream  where  message like '%详细解说%'     limit  3500";		
		List<Dream> lst=this.jdbcTemplate.query(sql,new BeanPropertyRowMapper(Dream.class));
		return lst;
	}
	@Override
	public void UpdateMessage(Dream dream) {
		// TODO Auto-generated method stub
		String sql=" update   life_dream      set    message='"+dream.getMessage()+"'  where  id='"+dream.getId()+"'   ";
		jdbcTemplate.update(sql) ;
		
	}
	
	
	
	
	
	
	
	
}
