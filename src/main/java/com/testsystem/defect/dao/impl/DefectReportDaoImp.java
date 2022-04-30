package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.DefectReportDao;
import com.testsystem.defect.vo.Report;
@Repository
public class DefectReportDaoImp implements DefectReportDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public List GetCreatDefectStatistics(String condition) {
		// TODO Auto-generated method stub
		String sql ="select COUNT(createuserid) as num,(SELECT realname from admin_user where admin_user.userid = defect_bug.createuserid)  as realname, createuserid from defect_bug   "+condition+"    GROUP BY createuserid ";
	System.out.println("sql::::::::::"+sql);
		
		return  jdbcTemplate.queryForList(sql);
	}
	public int  AddReport(Report report) {
		// TODO Auto-generated method stub
		String sql="insert  into   defect_report  (reportname,userid,ctime,isshow,projectid,bstime,betime)  values('"+report.getReportname()+"','"+report.getUserid()+"',"
				+ "'"+report.getCtime()+"','"+report.getIsshow()+"','"+report.getProjectid()+"','"+report.getBstime()+"','"+report.getBetime()+"')";
		jdbcTemplate.update(sql);
		return	 jdbcTemplate.queryForInt("select @@identity") ;
	}
	public List GetReportAll() {
		// TODO Auto-generated method stub
		String sql= "select * from defect_report a ,admin_user  b    where  a.userid=b.userid order by ctime asc" ;
		return jdbcTemplate.queryForList(sql);
	}
	public void SetReportShow(int reportid, int show) {
		// TODO Auto-generated method stub
		String sql= "update  defect_report   set  isshow="+show  + " where  reportid="+reportid ;
		 jdbcTemplate.update(sql);
	}
	public List GetCreateDefectStatisticsPie(String condition) {
		// TODO Auto-generated method stub
		String sql ="select   ROUND(  COUNT(createuserid)/(select count(bugid) from defect_bug )*100 , 2 )as num,(SELECT realname from admin_user where admin_user.userid = defect_bug.createuserid) as realname, createuserid from defect_bug     GROUP BY createuserid ";
		return  jdbcTemplate.queryForList(sql);
	}
	public List GetBackReportDetailByReportId(int reportid) {
		// TODO Auto-generated method stub
		
		String sql= "select * from defect_report_detail      where  reportid="+reportid ;
		return jdbcTemplate.queryForList(sql);
	}
	public List GetStageReportDetailByReportId(int reportid) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_report_detail     where  isshow  =1    and reportid= "+reportid ;
		return jdbcTemplate.queryForList(sql);
	}
	public List GetBackReportDetailByPicId(int picid) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_report_detail     where   picid= "+picid ;
		return jdbcTemplate.queryForList(sql);
	}
	public int GetReportPicSourceByPicId(int picid) {
		// TODO Auto-generated method stub
		String sql= "select source  from defect_report_detail     where   picid= "+picid ;
		return 	jdbcTemplate.queryForInt(sql);
	}
	public List GetSeverityDefectStatistics(String condition) {
		// TODO Auto-generated method stub
		String sql= "select COUNT(severity) as num, severity as realname from defect_bug    "+condition+" GROUP BY  severity " ;
		return  jdbcTemplate.queryForList(sql);
	}
	public List GetReportByReportId(int reportid) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_report    where  reportid= "+reportid  ;
		return jdbcTemplate.queryForList(sql);
	}
	public List GetPriorityDefectStatistics(String condition) {
		// TODO Auto-generated method stub
		String sql= "select COUNT(priority) as num, priority as realname from defect_bug  "+condition+"     GROUP BY  priority " ;
		return  jdbcTemplate.queryForList(sql);
	}
	public void SetPicInfo(int picid, String filed, String value) {
		// TODO Auto-generated method stub
		String sql= "update  defect_report_detail   set  "+filed+"='"+value+"'   where  picid="+picid ;
		 jdbcTemplate.update(sql);
	}
	public List GetPstatusDefectStatistics(String condition) {
		// TODO Auto-generated method stub
		String sql= "select COUNT(pstatus) as num, pstatus as realname from defect_bug  "+condition+"  GROUP BY  pstatus" ;
		return  jdbcTemplate.queryForList(sql);
	}
	public List GetAssignedDefectStatistics(String condition) {
		// TODO Auto-generated method stub
		String sql= "select COUNT(assigned) as num,  (SELECT realname from admin_user where admin_user.userid = defect_bug.assigned)   as realname from defect_bug "+condition+"  GROUP BY  assigned" ;
		return  jdbcTemplate.queryForList(sql);
	}
	public List GetCustomDefectStatistics(String condition, String FiledName) {
		// TODO Auto-generated method stub
		String sql= "select COUNT("+FiledName+") as num,  (SELECT valuetext  from defect_operation_value  where defect_operation_value.valueid = defect_bug."+FiledName+")   as realname from defect_bug   GROUP BY  "+FiledName ;
		
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:"+sql);
		
		return  jdbcTemplate.queryForList(sql);
	}
	public List GetReportListByStage() {
		// TODO Auto-generated method stub
		String sql= "select * from defect_report a ,admin_user  b    where  a.userid=b.userid  and  isshow =1    order by ctime " ;
		return jdbcTemplate.queryForList(sql);
	}
	
	public void SetOnOff(int picid, int show) {
		// TODO Auto-generated method stub
		String sql= "update  defect_report_detail   set  isshow='"+show+"'   where  picid="+picid ;
		 jdbcTemplate.update(sql);
	}
	@Override
	public void SetReportName(String reportname, int reportid) {
		// TODO Auto-generated method stub
		String sql= "update  defect_report  set  reportname='"+reportname+"'   where  reportid="+reportid ;
		 jdbcTemplate.update(sql);
	}
	@Override
	public void DelReport(int reportid) {
		// TODO Auto-generated method stub
		String sql ="delete  from defect_report  where reportid="+reportid;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}
	@Override
	public void DelReportDetail(int reportid) {
		// TODO Auto-generated method stub
		String sql ="delete  from defect_report_detail  where reportid="+reportid;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}
	@Override
	public String GetReportCondition(int reportid) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void SetReportDefaultReportId(int reportid) {
		// TODO Auto-generated method stub
		String  sql="update  defect_report_default  set reportid="+reportid;
		jdbcTemplate.update(sql);
	}
	@Override
	public void InitReportDetail() {
		// TODO Auto-generated method stub
		String sql="insert into defect_report_detail (reportid ,pwidth,pheight ,sscale,escale,sspace,title,isshow,ptype,source,divv) "
				+ "select reportid ,pwidth,pheight ,sscale,escale ,sspace,title,isshow ,ptype ,source ,divv from defect_report_default";
		jdbcTemplate.update(sql);
	}
	@Override
	public void EditReport(Report report) {
		// TODO Auto-generated method stub
		String  sql="update  defect_report  set projectid="+report.getProjectid()+", bstime='"+report.getBstime()+"', betime='"+report.getBetime()+"'  where  reportid="+report.getReportid();
		jdbcTemplate.update(sql);
	}

}
