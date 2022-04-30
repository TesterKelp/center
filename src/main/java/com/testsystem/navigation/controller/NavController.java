package com.testsystem.navigation.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.U;
import com.testsystem.navigation.service.NavService;
import com.testsystem.navigation.vo.Nav;
import com.testsystem.navigation.vo.Udate;

@Controller
public class NavController {
	
	@Autowired NavService navService ;
	private  List  lst ;
	
	@RequestMapping(value ="/{nav}/dh.do", method = RequestMethod.GET)
	public String GeddtTrdasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String nav) throws IOException{	
	    int userid=0;
	    userid = UserUtil.getCurrentUserinfo().getUserid() ;
		if(userid==0){
			lst = navService.NavList(userid);
		}else{
			lst = navService.NavList(userid);	
		}
		map.put("lst", lst);
		return  "/navigation/nav";
	}
	
	
	
	
	@RequestMapping(value ="/nav/addsite.do", method = RequestMethod.POST)
	public  void GeddtTrdasfbks(Nav nav ,ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		int userid = UserUtil.getCurrentUserinfo().getUserid() ;
		nav.setUserid(userid);
		navService.addNav(nav);
		System.out.println("sitename="+nav.getSitename() +"url="+nav.getSiteurl());	
		String msg="ok";
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/nav/UpdateNav.do", method = RequestMethod.POST)
	public  void GeddtTreedasfbks(Nav nav ,ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		int userid = UserUtil.getCurrentUserinfo().getUserid() ;
		nav.setUserid(userid);
		navService.UPdateNav(nav);
		System.out.println("sitename="+nav.getSitename() +"url="+nav.getSiteurl());	
		String msg="ok";
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/nav/NavList.do", method = RequestMethod.GET)
	public void MyArticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
	//	int userId =UserUtil.getCurrentUser().getUserid();
		String  jsonstr ="";
		int userId = U.GetUserId(request);
		if(userId==0){
	
		}else{
			lst = navService.NavList(userId);	
			jsonstr =  JsonAndString.ListToJsonToString(lst);
		}
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/nav/DelNav.do", method = RequestMethod.GET)
	public void MyArtiwwcle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int id  = Integer.parseInt(request.getParameter("id"));
		int rs = navService.DelNav(id);
		response.getWriter().write(rs+"");
		response.getWriter().flush();
	}
	
	
	
	
	
	@RequestMapping(value ="/nav/NavManage.do", method = RequestMethod.GET)
	public String MyArlticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
	//	int userId =UserUtil.getCurrentUser().getUserid();
		int userId = U.GetUserId(request);
		System.out.println("userId=="+userId);
		if(userId==0){
			return"redirect:/module/usercenter/login.jsp";
		}
		lst = navService.NavList(userId);
		List iconLst=navService.IndexIcon(userId);
		map.put("lst", lst);
		map.put("ilst", iconLst);
		return  "/navigation/NavManage";
	}
	
	
	
	@RequestMapping(value ="/nav/IndexSet.do", method = RequestMethod.GET)
	public String My3Arlticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		Udate udate= new Udate();
		int userId = U.GetUserId(request);
		if(userId==0){
			return"redirect:/module/usercenter/login.jsp";
		}
		
		lst = navService.IndexBackGround(userId);	
		udate =navService.GetUdate(userId) ;
		map.put("udate", udate);
		map.put("lst", lst);
		return  "/navigation/IndexSet";
	}
	
	
	@RequestMapping(value ="/nav/NavPage.do", method = RequestMethod.GET)
	public String My3A4rlticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		Udate udate= new Udate();
		int userId = U.GetUserId(request);
		if(userId==0){
			return"redirect:/module/usercenter/login.jsp";
		}
		lst = navService.IndexBackGround(userId);	
		udate =navService.GetUdate(userId) ;
		map.put("udate", udate);
		map.put("lst", lst);
		return  "/navigation/NavPage";
	}
	
	
	
	@RequestMapping(value ="/nav/SetPicModle.do", method = RequestMethod.GET)
	public void MyAsrticqle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int picmodel =Integer.parseInt(request.getParameter("value"));
		int userid =U.GetUserId(request);
		int rs  ;
		if(userid==0){
			rs =0 ;
		}else{
			Udate udate =new Udate();
			udate.setPicmodel(picmodel);
			udate.setUserid(userid);
			rs = navService.SetUdate(udate);
		}
		
		response.getWriter().write(rs+"");
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/nav/Setfileon.do", method = RequestMethod.GET)
	public void MyAsrt1icqle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String fileon =request.getParameter("value");
		int userid =U.GetUserId(request);
		int rs  ;
		if(userid==0){
			rs =0 ;
		}else{
			Udate udate =new Udate();
			udate.setUserid(userid);
			rs = navService.UpUdate("fileon", fileon, udate);
		}
		response.getWriter().write(rs+"");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/nav/SetSize.do", method = RequestMethod.POST)
	public void MyAsrt1i2cqle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String hei =request.getParameter("hei");
		String wid =request.getParameter("wid");
	//	int userid =UserUtil.getCurrentUser().getUserid();
		int userid =U.GetUserId(request);
		int rs  ;
		if(userid==0){
			rs =0 ;
		}else{
			Udate udate =new Udate();
			udate.setUserid(userid);
			 rs = navService.UpUdate("hei", hei, udate);
			 rs = navService.UpUdate("wid", wid, udate);
		}
		
		response.getWriter().write(rs+"");
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/nav/SaveBg.do", method = RequestMethod.GET)
	public void MyAsrticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String pic =request.getParameter("pic");
		//int userid =UserUtil.getCurrentUser().getUserid();
		int userid =U.GetUserId(request);
		int rs  ;
		if(userid==0){
			rs = 0 ;
		}else{
			rs = navService.SaveBg(userid, pic);
		}
		response.getWriter().write(rs+"");
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/nav/SetBg.do", method = RequestMethod.GET)
	public void MyAsrtiwscle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String pic =request.getParameter("pic");
		int userid =UserUtil.getCurrentUser().getUserid();
		int rs = navService.SetBg(userid, pic);
		response.getWriter().write(rs+"");
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/nav/DelBg.do", method = RequestMethod.GET)
	public void MyAsrtiwcle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int id  = Integer.parseInt(request.getParameter("id"));
		int rs = navService.DelBg(id);
		response.getWriter().write(rs+"");
		response.getWriter().flush();
	}
	

}
