package com.testsystem.defect.service;

import java.util.List;

import com.testsystem.defect.vo.Note;

public interface NotesService {
	
	
	public List GetNotesByNstatus(int nstatus);
	
public  List  GetNoteByNoteId(int noteid);


public  void SaveNote(Note note);


public void  EditNote(Note note);

public void  DelNoteByNoteId(int noteid);



}
