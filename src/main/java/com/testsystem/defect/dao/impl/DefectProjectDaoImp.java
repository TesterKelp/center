package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.DefectProjectDao;
import com.testsystem.defect.vo.Project;
@Repository
public class DefectProjectDaoImp implements DefectProjectDao {

	@Autowired
	private JdbcTemplate jdbcTemplate ;
	
	
	
	
	
	@Override
	public List GetDefectProjectListAll() {
		// TODO Auto-generated method stub
		String  sql =" select * from defect_project";
		
		return 	jdbcTemplate.queryForList(sql) ;
		
		
	}





	@Override
	public int CreateProject(Project project) {
		// TODO Auto-generated method stub
		String  sql =" insert into defect_project (projectname)  values('"+project.getProjectname()+"') ";
	jdbcTemplate.update(sql);
	return	 jdbcTemplate.queryForInt("select @@identity") ;

	}
	
	
	
	  public void SetProjectScheme(int projectId, int schemeId, String fieldName)
	  {
	    String sql = "update defect_project  set " + fieldName + "='" + schemeId + "'  where  projectId=" + projectId;
	    this.jdbcTemplate.update(sql);
	  }

	  public void resetProjectId(int projectId, int userId)
	  {
	    String sql = "update defect_user_data  set  qprojectid='" + projectId + "'  where  userid=" + userId;
	    this.jdbcTemplate.update(sql);
	  }





	@Override
	public void delDefectProject(int projectId) {
		// TODO Auto-generated method stub
		
		String sql =" delete  from  defect_project     where  projectid="+projectId ;
		
		jdbcTemplate.update(sql);
		
	}
	
	
	
	
	
	
	
	
	

}
