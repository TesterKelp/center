package com.testsystem.defect.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.defect.service.NotesService;
import com.testsystem.defect.vo.Note;
import com.testsystem.helper.JsonAndString;

@Controller
public class NotesAction {

	@Autowired
	private  NotesService notesService ;
	
	private List  moduleList ;
	
	
	@RequestMapping(value ="/module/defect/Note.do", method = RequestMethod.GET)
	public String GetArticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	

		moduleList=notesService.GetNotesByNstatus(3);
		map.put("moduleList",moduleList);
		return "/module/defect/NoteList";
	}
	
	@RequestMapping(value = "/module/defect/GetNoteDetail.do", method = RequestMethod.GET)
	public void Aonfgfx(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
		int  noteid = Integer.parseInt(request.getParameter("noteid")) ;
		moduleList=notesService.GetNoteByNoteId(noteid);
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		jsonstr=  jsonstr.substring(1, jsonstr.length());
		jsonstr=  jsonstr.substring(0, jsonstr.length()-1);
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+jsonstr);
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value = "/module/defect/saveNote.do", method = RequestMethod.POST)
	public void SaveNote(ModelMap map, Note note ,HttpServletResponse response, HttpServletRequest request) throws IOException {
//		String  note  =request.getParameter("note") ;
//		String  notename  =request.getParameter("notename") ;
		System.out.println("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS");
		notesService.SaveNote(note);
		String  jsonstr = "ok";
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/editNote.do", method = RequestMethod.POST)
	public void EditNote(ModelMap map, Note note ,HttpServletResponse response, HttpServletRequest request) throws IOException {
//		String  note  =request.getParameter("note") ;
//		String  notename  =request.getParameter("notename") ;
		System.out.println("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS");
		notesService.EditNote(note);
		String  jsonstr = "ok";
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value = "/module/defect/delNote.do", method = RequestMethod.POST)
	public void DelNote(ModelMap map, Note note ,HttpServletResponse response, HttpServletRequest request) throws IOException {

		notesService.DelNoteByNoteId(note.getNotesid());
		String  jsonstr = "ok";
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
	
	
	
}
