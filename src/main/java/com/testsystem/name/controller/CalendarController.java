package com.testsystem.name.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.backstage.service.ItemService;
import com.testsystem.helper.JsonAndString;
import com.testsystem.name.service.CalendarService;
import com.testsystem.name.vo.Wxl;

import net.sf.json.JSONObject;

@Controller
public class CalendarController {
	
	@Autowired
	private CalendarService calendarService ;

	
	@Autowired
	private ItemService itemService ;
	
	

	
	
	
	@RequestMapping(value ="/name/wnl/w.do", method = RequestMethod.GET)
	public String FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List lst =  calendarService.DayAll();
		map.put("lst",  lst) ;
		return "/template/name/Wan";
	}
	
	
	
	
	@RequestMapping(value ="/name/Wnlindex.do", method = RequestMethod.GET)
	public String WanNianLi(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		return "/template/name/Wnlindex";
	}
	
	
	@RequestMapping(value ="/name/WnlAdd.do", method = RequestMethod.GET)
	public String WaanNianLi(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		return "/template/name/WnlAdd";
	}
	
	@RequestMapping(value = "/name/AddWnl.do", method = RequestMethod.GET)
	public void SetCaseRunnileNumber(ModelMap map, HttpServletResponse response,Wxl wxl, HttpServletRequest request)
			throws IOException {
		String  a =wxl.getDaynn();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		int rs =	calendarService.AddCalendar(wxl);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs+"");
		response.getWriter().flush();	
	}
	
	

	
	@RequestMapping(value ="/name/{year}/wnllist.do", method = RequestMethod.GET)
	public String GeddtTrdasjbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String year) throws IOException{	

		List lt  =		calendarService.DayByYear(year);
		map.put("year", year) ;
		map.put("clt", lt) ;
		return  "/template/name/Wnllist";
	}
	
	@RequestMapping(value ="/name/{year}/{id}/wnldetail.do", method = RequestMethod.GET)
	public String GeddtTrdeasjbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String year,@PathVariable int id) throws IOException{	
	    Wxl wxl =   calendarService.GetWxlById(id);
	    Wxl p =   calendarService.PreviousWxlById(id);
	    Wxl n =   calendarService.NextWxlById(id);
		map.put("year", year) ;
		map.put("n", n) ;
		map.put("p", p) ;
		map.put("wxl", wxl) ;
		String sesc = wxl.getSesc();
		String scxj = wxl.getScluck();
		List rxj =new ArrayList();
		rxj.add("青龙"); 											
		rxj.add("明堂");
		rxj.add("天刑");
		rxj.add("朱雀");
		rxj.add("金匮");
		rxj.add("天德");
		rxj.add("白虎");
		rxj.add("玉堂");
		rxj.add("天牢");
		rxj.add("玄武");
		rxj.add("司命");
		rxj.add("勾陈");
		map.put("rxj", rxj) ;
		String[]  aa =sesc.split(",");
		map.put("sesc", aa) ;
		String[]  bb =scxj.split(",");
		map.put("scxj", bb) ;
		return  "/template/name/Wnldetail";
	}
	
	
	@RequestMapping(value ="/name/wnl/index.do", method = RequestMethod.GET)
	public String GeddtTrddeasjbks(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		Date date=new Date();
		Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(calendar.DATE, 0);//如果把0修改为-1就代表昨天
        date = calendar.getTime();
       // SimpleDateFormat format= new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat format= new SimpleDateFormat("yyyyMMdd");
        String dateString = format.format(date);
        System.out.println(dateString);
        String year =dateString.substring(0,3);
		Wxl wxl =   calendarService.WnlByDate(dateString);
	    Wxl p =   calendarService.PreviousWxlById(wxl.getId());
	    Wxl n =   calendarService.NextWxlById(wxl.getId());
		map.put("year", year) ;
		map.put("n", n) ;
		map.put("p", p) ;
		map.put("wxl", wxl) ;
		String sesc = wxl.getSesc();
		String scxj = wxl.getScluck();
		List rxj =new ArrayList();
		rxj.add("青龙"); 											
		rxj.add("明堂");
		rxj.add("天刑");
		rxj.add("朱雀");
		rxj.add("金匮");
		rxj.add("天德");
		rxj.add("白虎");
		rxj.add("玉堂");
		rxj.add("天牢");
		rxj.add("玄武");
		rxj.add("司命");
		rxj.add("勾陈");
		map.put("rxj", rxj) ;
		String[]  aa =sesc.split(",");
		map.put("sesc", aa) ;
		String[]  bb =scxj.split(",");
		map.put("scxj", bb) ;
		return  "/template/name/Wnldetail";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/name/scbz/index.do", method = RequestMethod.GET)
	public String FindNameBdddylidkeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	

		return "/template/name/Wnlscbz";
	}
	
	
	
	@RequestMapping(value ="/name/sesx.do", method = RequestMethod.GET)
	public String FindNameBddddylidkeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List lst = new ArrayList() ;
		for(int i =1876;i<2032;i++){
			lst.add(i);
		}
		
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		
        map.put("lst", lst);
		return "/template/name/sesx";
	}
	
	
	
	
	
	
	
	
	
}
