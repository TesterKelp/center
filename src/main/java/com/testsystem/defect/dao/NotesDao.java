package com.testsystem.defect.dao;

import java.util.List;

import com.testsystem.defect.vo.Note;

public interface NotesDao {
	public List GetNotesByNstatus(int nstatus,int userid);
	public  List  GetNoteByNoteId(int noteid,int userid);
	public void SaveNote(Note note) ;
	public void  EditNote(Note note);
	public void  DelNoteByNoteId(int noteid);
	
}
