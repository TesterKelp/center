package com.testsystem.admin.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.admin.dao.PermissionDao;
import com.testsystem.admin.vo.Permission;
@Repository
public class PermissionDaoImpl implements PermissionDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	      this.jdbcTemplate = jdbcTemplate;
	}
	public List permissionAllList() {
		// TODO Auto-generated method stub
		String sql = "select permissionid,pid,name,sort ,url,type,permissioncode,icon,state,descp  FROM admin_permission";		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List<Map<String, Object>> permissions(int groupid) {
		// TODO Auto-generated method stub
		String sql = "SELECT p.* FROM admin_group_permission rp , admin_permission p WHERE rp.permission_id = p.permissionid AND rp.group_id = "+groupid;
		return jdbcTemplate.queryForList(sql);
	}
	public List MenuByGroupId(int groupid) {
		// TODO Auto-generated method stub
		String sql = "select * FROM admin_group_permission  gp  ,admin_permission  p where  gp.permission_id=p.permissionid  and    p.type=1   and gp.checkstatus=1     and     gp.group_id="+groupid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List permissionSetByGroupId(int groupid) {
		// TODO Auto-generated method stub
		String sql = "select * FROM admin_group_permission  gp  ,admin_permission  p where  gp.permission_id=p.permissionid     and     gp.group_id= " +groupid;		
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public List MenuByGroups(String sql) {
		// TODO Auto-generated method stub
		List lst = new ArrayList();
		lst = jdbcTemplate.queryForList(sql);
		System.out.println(lst);
		return lst;
	}
	public Boolean IsHave(int groupid, int permissionid) {
		// TODO Auto-generated method stub
		String sql = "select count(*) FROM admin_group_permission where   group_id="+groupid + " and  permission_id ="+permissionid;
		jdbcTemplate.queryForInt(sql);
		Boolean Rs=true ;	
		if(jdbcTemplate.queryForInt(sql)==1){
			Rs = true ;
		}
		else{
			Rs =false ;
		}
		return Rs;
	}
	public void SyncGroupPermission(int groupid, int permissionid) {
		// TODO Auto-generated method stub
		String sql = "insert into  admin_group_permission (group_id,permission_id,checkstatus) values  "
      +"('"+groupid+"','"+permissionid+"','0')" ;
		  System.out.println("ssssssssssssssssssssssssssssssssssssss"+sql);
		jdbcTemplate.update(sql);
	}
	public void CheckPermission(int groupid, int permissionid, int checkstatus) {
		// TODO Auto-generated method stub
		String sql = "update  admin_group_permission    set  checkstatus= "+checkstatus+" where   group_id="+groupid + " and  permission_id ="+permissionid;
		 System.out.println("ssssssssssssssssssssssssssssssssssssss"+sql);
		jdbcTemplate.update(sql);
	}
	public void AddPermission(Permission permission) {
		// TODO Auto-generated method stub
		String sql = "insert into  admin_permission (pid,name,type,sort,url,permissioncode,icon,state,descp)   values"
			      +"('"+permission.getPid()+"','"+permission.getName()+"','"+permission.getType()+"','"+permission.getSort()+"','"+permission.getUrl()+"','"+permission.getPermissioncode()+"','"
				+permission.getIcon()+"','"+permission.getState()+"','"+permission.getDesc()+"')" ;
					  System.out.println("ssssssssssssssssssssssssssssssssssssss"+sql);
					jdbcTemplate.update(sql);
	}
	@Override
	public void DelPermission(int Permissionid) {
		// TODO Auto-generated method stub
		String sql ="delete  from  admin_permission where permissionid='"+Permissionid+"'" ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}
	@Override
	public void updateSort(Permission permission) {
		// TODO Auto-generated method stub
		
		String sql ="update  admin_permission     set   sort='"+permission.getSort()+"'           where permissionid='"+permission.getPid()+"'" ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
		
	}
	@Override
	public int SavePermission(Permission permission) {
		// TODO Auto-generated method stub
		 
		    String sql = "insert into  admin_permission (pid,name,type,sort,url,permissioncode,icon,state,descp)   values('" + 
		      permission.getPid() + "','" + permission.getName() + "','" + permission.getType() + "','" + permission.getSort() + "','" + permission.getUrl() + "','" + permission.getPermissioncode() + "','" + 
		      permission.getIcon() + "','" + permission.getState() + "','" + permission.getDesc() + "')";
		    System.out.println("ssssssssssssssssssssssssssssssssssssss" + sql);
		    this.jdbcTemplate.update(sql);

		    return ((Integer)this.jdbcTemplate.queryForObject("select @@identity", Integer.class)).intValue();
		 
	}
	@Override
	public int UpdatePermission(Permission permission) {
		// TODO Auto-generated method stub
		
		String sql = "update  admin_permission   set  "
				+"pid ='"+permission.getPid()+"' , "
				+"name ='"+permission.getName()+"' , "
				+"type ='"+permission.getType()+"' , "
				+"sort ='"+permission.getSort()+"' , "
				+"url ='"+permission.getUrl()+"' , "
				+"permissioncode ='"+permission.getPermissioncode()+"' , "
				+"icon ='"+permission.getIcon()+"' , "
				+"state ='"+permission.getState()+"' , "
				+"descp ='"+permission.getDesc()+"'"							
				+" where  permissionid="+ permission.getPermissionid() ;	
		System.out.println(sql);
		int result =jdbcTemplate.update(sql);
		
		return result ;
	}

}
