package com.testsystem.defect.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.defect.dao.NotesDao;
import com.testsystem.defect.service.NotesService;
import com.testsystem.defect.vo.Note;
import com.testsystem.helper.DataFormat;
@Service
public class NotesServiceImpl implements NotesService {

	@Autowired
	private NotesDao noteDao ;
	
	public List GetNotesByNstatus(int nstatus) {
		// TODO Auto-generated method stub
		
		int  userid = UserUtil.getCurrentUserinfo().getUserid() ;
		return noteDao.GetNotesByNstatus(nstatus,userid);
	}

	public List GetNoteByNoteId(int noteid) {
		// TODO Auto-generated method stub
		int  userid = UserUtil.getCurrentUserinfo().getUserid() ;
		return noteDao.GetNoteByNoteId(noteid, userid);
	}

	public void SaveNote(Note note) {
		// TODO Auto-generated method stub
		int  userid = UserUtil.getCurrentUserinfo().getUserid() ;
		String ntime = DataFormat.DataTime();
		note.setUserid(userid);
		note.setCtime(ntime);
		note.setNstatus(3);
		noteDao.SaveNote(note);
	}

	public void DelNoteByNoteId(int noteid) {
		// TODO Auto-generated method stub
		noteDao.DelNoteByNoteId(noteid);
	}

	@Override
	public void EditNote(Note note) {
		// TODO Auto-generated method stub
		noteDao.EditNote(note);
	}

}
