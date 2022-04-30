package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.CycleDao;
import com.testsystem.defect.vo.Cycle;
@Repository
public class CycleDaoImpl implements CycleDao {
	@Autowired
	JdbcTemplate jdbcTemplate ;
	public List CycleByBugId(int bugid) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_bug_cycle  dc  ,admin_user   au      where   dc.userid =au.userid  and  bugid ="+bugid+"    order by ntime" ;
		return jdbcTemplate.queryForList(sql);
	}
	public void AddCycle(Cycle cycle) {
		// TODO Auto-generated method stub
		String sql= "insert    into        defect_bug_cycle    (bugid,userid,ntime,operation)  values ('"+cycle.getBugid()+"','"+cycle.getUserid()+"','"+cycle.getNtime()+"','"+cycle.getOperation()+"')" ;
		 jdbcTemplate.update(sql);
	}

}
