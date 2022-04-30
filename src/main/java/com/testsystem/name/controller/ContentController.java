package com.testsystem.name.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.name.service.ContentService;
import com.testsystem.name.service.NameService;
import com.testsystem.name.tools.P;

@Controller
public class ContentController {

	
	@Autowired
	private ContentService contentService;
	
	
	@RequestMapping(value ="/name/ContentByCateId.do", method = RequestMethod.GET)
	public String GetA1rticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int pagenumber =Integer.parseInt(request.getParameter("pagenumber"));
		int id =Integer.parseInt(request.getParameter("id"));
		int pasesize = 25 ;
		P p= new P();
		
		p=contentService.GetContentByCateId(id, pasesize, pagenumber);
	//	List lst =   contentService.GetContentByCateId(id);
	//	System.out.println(lst.toString());
		map.put("lst", p.getList()) ;
		map.put("totalpage", p.getTotalPage()) ;
		map.put("pagenumber", pagenumber) ;
		return "module/name/ContentCate";
	}
	@RequestMapping(value ="/name/ContentCateDetail.do", method = RequestMethod.GET)
	public String GetA1rticleLddistByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int id =Integer.parseInt(request.getParameter("id"));
		List lst =   contentService.ContentCateDetail(id);
		System.out.println(lst.toString());
		map.put("lst", lst) ;
		return "module/name/ContentCateDetail";
	}
	
	
	
}
