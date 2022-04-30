package com.testsystem.defect.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.testsystem.defect.dao.NotesDao;
import com.testsystem.defect.vo.Note;
@Repository
public class NotesDaoImpl implements NotesDao {

	
	@Autowired
	JdbcTemplate jdbcTemplate ;
	
	public List GetNotesByNstatus(int nstatus ,int userid) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_notes  n, admin_user u where  n.nstatus ="+nstatus+"  and  n.userid=u.userid  and  n.userid ="+userid ;
		return jdbcTemplate.queryForList(sql);
	}

	public List GetNoteByNoteId(int noteid, int userid) {
		// TODO Auto-generated method stub
		String sql= "select * from defect_notes  where notesid="+noteid+"  and  userid ="+userid ;
		return jdbcTemplate.queryForList(sql);
	}

	public void SaveNote(Note note) {
		// TODO Auto-generated method stub
		String sql= "insert    into        defect_notes    (notename,notescontent,ctime,nstatus,userid)  values ('"+note.getNotename()+"','"+note.getNotescontent()+"','"+note.getCtime()+"','"+note.getNstatus()+"','"+note.getUserid()+"')" ;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

	public void DelNoteByNoteId(int noteid) {
		// TODO Auto-generated method stub
		String sql ="delete  from defect_notes where notesid="+noteid;
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

	@Override
	public void EditNote(Note note) {
		// TODO Auto-generated method stub
		String sql ="update  defect_notes        set  notename='"+note.getNotename()+"'  ,      notescontent='"+note.getNotescontent()+"'      where notesid="+note.getNotesid();
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}

	
	
}
