package com.testsystem.name.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.api.common.ListFormatToString;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.backstage.vo.Item;
import com.testsystem.helper.JsonAndString;
import com.testsystem.name.love.AnShiNumber;
import com.testsystem.name.love.BaShiYi;
import com.testsystem.name.love.JavaLuozhuangtestnameClass;
import com.testsystem.name.love.LuozhuangNameClass;
import com.testsystem.name.love.LuozhuangNametogetherTestClass;
import com.testsystem.name.love.Luozhuangnamewuxing;
import com.testsystem.name.love.ShuLi;
import com.testsystem.name.love.TestPinyin4jCsdn;
import com.testsystem.name.love.TianShengLiZhi;
import com.testsystem.name.love.XingGe;
import com.testsystem.name.service.BaseService;
import com.testsystem.name.service.NameService;
import com.testsystem.name.service.NameTopicService;
import com.testsystem.name.service.WordService;
import com.testsystem.name.tools.P;
import com.testsystem.name.vo.Kangxi;
import com.testsystem.site.service.SiteService;
import com.testsystem.site.vo.Site;

import net.sf.json.JSONObject;

@Controller
public class NameController {
	
	@Autowired
	private NameService nameService;
	
	@Autowired
	private BaseService baseService;
	
	@Autowired
	private NameTopicService nameTopicService;
	
	@Autowired
	private ItemService itemService ;
	
	@Autowired
	private WordService wordService ;
	
	@Autowired
	private SiteService siteService ;
	
	LuozhuangNameClass myName;
	
	@RequestMapping(value ="/name/AllName.do", method = RequestMethod.GET)
	public String GetA1rticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List lst =   nameService.GetAllName() ;
		List namelst =   nameService.GetMoreName() ;
		System.out.println(lst.toString());
		map.put("lst", lst) ;
		map.put("namelst", namelst) ;
		List topiclst =   nameTopicService.GetAllNameTopic();
		map.put("topiclst",  topiclst) ;
		return "module/name/allname";
	}
	
	
	@RequestMapping(value ="/name/portal.do", method = RequestMethod.GET)
	public String GetAr1rticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		List lst =   nameService.GetAllName() ;
		List namelst =   nameService.GetMoreName() ;
		System.out.println(lst.toString());
		List moduleList = itemService.ItemAllArticle(item);
		Site site =siteService.GetSite();
		System.out.println("Singleitem=="+site.getSingleitem());
		
		Item m =new Item();
		m=itemService.GetItem(item);
		map.put("m", m) ;
		
	    map.put("site",site);
		map.put("clst",moduleList);
		map.put("lst", lst) ;
		map.put("menuList",menuList);
		map.put("namelst", namelst) ;
		map.put("item", item) ;
		return "/template/name/portal";
	}
	

	
	
	@RequestMapping(value ="/name/NameAll.do", method = RequestMethod.GET)
	public String GeetAr1rticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List lst =   nameService.GetAllName() ;
		List namelst =   nameService.GetMoreName() ;
		
		
		int n = siteService.GetSite().getHtml();
		String  suffix="html";
		String  hhtml="";
		if(n==1){
			suffix="html";
			hhtml="1" ;
		}else{
			suffix="do";
			hhtml="0" ;
		}
		map.put("suffix", suffix) ;
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		
		map.put("lst", lst) ;
		map.put("namelst", namelst) ;
		return "/template/name/NameAll";
	}
	

	
	
	
	
	
	@RequestMapping(value ="/name/NameDetail.do", method = RequestMethod.GET)
	public String GetA1reeticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int nameId  = Integer.parseInt(request.getParameter("nameId"));
		List namelst =   nameService.GetNameInfoById(nameId);
		List name =      nameService.GetFullNameById(nameId) ;
		String firestname = nameService.GetFirestName(nameId);
		map.put("namelst", namelst) ;
		map.put("name", name) ;
		map.put("firestname", firestname) ;
		
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		return "module/name/NameDetail";
	}
	
	@RequestMapping(value ="/name/namefree/index.do", method = RequestMethod.GET)
	public String GetddA1reeticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		return "/template/name/NameFree";
	}
	

	@RequestMapping(value ="/name/nametest/index.do", method = RequestMethod.GET)
	public String GetddA1ggreeticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		return "/template/name/NameTest";
	}
	

	
	
	@RequestMapping(value ="/name/NameTestResult.do", method = RequestMethod.GET)
	public String FindNafmedddBdddylikeName(ModelMap map, HttpServletResponse response,HttpServletRequest request ) throws IOException{	
//		String name = request.getParameter("name");
		String name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
		System.out.print("name is ="+name);
		List lt ;
		lt =dd(name);
		Map<Integer,String> m = new HashMap<Integer,String>();
		System.out.println("size==="+lt.size());
//		mp 为名字中每个字的解释
		Map mp = new HashMap();
		List<Kangxi> ltt = new ArrayList<Kangxi>() ;
		List<Integer> bhlst  = new ArrayList<Integer>() ;
		String wwxx="" ;
		for(int i=0;i<lt.size();i++){
			String key = lt.get(i).toString() ;
			String Word = nameService.GetZiJiShi(lt.get(i).toString()) ;
			mp.put(key, Word);
			int bh = nameService.GetBiHua(key);
			bhlst.add(bh);
			String wu =  nameService.GetWuXing(key);
			wwxx= wwxx + wu +"  " ;
			Kangxi kangxi =wordService.GetKeyByWord(key);
			if(kangxi!=null){
				System.out.println(kangxi.getId()+kangxi.getJtz());
				ltt.add(kangxi);
			}

			
		}
		
		System.out.println(ltt);
		map.put("ltttt",ltt); 
		
		int tian = 0 ;
		int ren = 0 ;
		int di = 0 ;
		int wai = 0 ;
		int zong = 0 ;
		
		String ttian ;
		String rren ;
		String ddi ;
		String wwai ;
		String zzong ;
		boolean isdoubleFirstName = false ;
		if(lt.size()==3){
			String Firstname =lt.get(0).toString() + lt.get(1).toString() ;
			if(nameService.IsDoubleFirstName(Firstname)){
				isdoubleFirstName = true ;
			}
		}else if(lt.size()==2){
			isdoubleFirstName = false  ;
		}else if(lt.size()==4){
			String Firstname =lt.get(0).toString() + lt.get(1).toString() ;
			if(nameService.IsDoubleFirstName(Firstname)){
				isdoubleFirstName = true ;
			}
		}
		
		
	if(!isdoubleFirstName){	// 非复姓
		
		if(bhlst.size()==3){	
		tian =	bhlst.get(0) +1  ;
		ren  =  bhlst.get(0) +bhlst.get(1)  ;
		di   = 	bhlst.get(1) +bhlst.get(2) ;
		zong =  bhlst.get(0)  + bhlst.get(1) + bhlst.get(2) ;
		wai  =  zong - ren +1 ;	
		}else if(bhlst.size()==2){
			tian =	bhlst.get(0) + 1  ;
			ren  = bhlst.get(0) + bhlst.get(1)  ;
			di   = 	bhlst.get(1) + 1 ;
			zong =  bhlst.get(0)  + bhlst.get(1) ;
			wai  =  2 ;
		}
	}else {  // 复姓
		
		if(bhlst.size()==3){	
			tian =	bhlst.get(0) +bhlst.get(1)  ;
			ren  =  bhlst.get(1) +bhlst.get(2)  ;
			di   = 	bhlst.get(2) +1 ;
			zong =  bhlst.get(0)  + bhlst.get(1) + bhlst.get(2) ;
			wai  =  zong - ren +1 ;	
			
		}
		
		
		if(bhlst.size()==4){	
			tian =	bhlst.get(0) +bhlst.get(1)  ;
			ren  =  bhlst.get(1) +bhlst.get(2)  ;
		
			di   = 	bhlst.get(2) +bhlst.get(3) ;
			zong =  bhlst.get(0)  + bhlst.get(1) + bhlst.get(2) + bhlst.get(3) ;
			wai  =  zong - ren  ;
			
		}
		
		
		
	}	
	
	
	
	
	
		
		
		
		ttian = BaShiYi.GetDesc(tian);
		rren  = BaShiYi.GetDesc(ren);
		ddi   = BaShiYi.GetDesc(di);
		wwai  = BaShiYi.GetDesc(wai);
		zzong = BaShiYi.GetDesc(zong);
		
		String  BiHua="";
		String pin  =     TestPinyin4jCsdn.getAllPinyin(name);     

		int size = bhlst.size() ;
		int[] A  = new int[size];
		for(int n=0;n<size;n++){
			BiHua =BiHua + bhlst.get(n)+"  " ;
			A[n] = bhlst.get(n) ;
		}
		
		
		
		
		
		String wxtian = WX(tian);
		String wxren  = WX(ren); 
		String wxdi   = WX(di);
		String wxwai = WX(wai);
		String wxzong = WX(zong);
		
		
		String tiann =nameService.GetDetail(tian);
		String renn  = nameService.GetDetail(ren); 
		String dii   = nameService.GetDetail(di);
		String waii = nameService.GetDetail(wai);
		String zongg =nameService.GetDetail(zong);
		
		
		String  sc =  wxtian+wxren+wxdi ;
		System.out.println("三才="+sc);
		String  rs =  nameService.GetXiongJi(sc) ;
		String  scdetail = nameService.GetDetail(sc) ;
		String zzzong = ShuLi.ShuLiDetail(zong) ;
		String  xingge = XingGe.NameXingGe(ren)  ;
        String tttian= AnShiNumber.GetDesc(tian) ;
        String dddi= AnShiNumber.GetDesc(di) ;
        String rrren= AnShiNumber.GetDesc(ren) ;
        String wwwai= AnShiNumber.GetDesc(wai) ;
	    String beautfully =TianShengLiZhi.Beautfully(A);
		
		
		
//		-------------------输出-----------------------

	    
	    
	    
	    
		    map.put("name",name);		//		姓名
			map.put("pin", pin);      	//拼音	
			map.put("mp",mp);           //		名字中每个字的解释
			map.put("BiHua",BiHua);		// 笔画
//		  	  五格数		
			map.put("tian",tian); 
			map.put("ren",ren); 
			map.put("di",di); 
			map.put("zong",zong); 
			map.put("wai",wai); 		
				
//		  	  五格数
			map.put("tiann",tiann); 
			map.put("renn",renn); 
			map.put("dii",dii); 
			map.put("zongg",zongg); 
			map.put("waii",waii); 
			
//	                    五格概述		
			map.put("ttian",ttian); 
			map.put("rren",rren); 
			map.put("ddi",ddi); 
			map.put("zzong",zzong); 
			map.put("wwai",wwai); 

			map.put("sc",sc);  // 三才
			map.put("rs",rs);  //  吉凶
			map.put("scdetail",scdetail);  //三才 概述
			map.put("zzzong",zzzong);  // 总格 数理详解
			map.put("xingge",xingge);  //10 种性格
			
//	         五格数理					
			map.put("tttian",tttian); 
			map.put("rrren",rrren); 
			map.put("dddi",dddi); 
			map.put("wwwai",wwwai);	
			
			map.put("beautfully",beautfully);	 // 天生丽质

			
			String item ="name";
			List	menuList   = itemService.ArticleItemCate(item)  ;
			map.put("menuList",menuList);
			map.put("item", item) ;
			
			
			
			
			
//		 Luozhuangnamewuxing my = new Luozhuangnamewuxing();	
//		 int[] temp =   my.getnameliborder(name);
//	     int[] wuxing = my.getnameWX(temp);
	     map.put("wwxx",wwxx);	
//		map.put("wx", my.pringst(my.getnameWXarray(wuxing)));
		return "/template/name/NameTestResult";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	@RequestMapping(value ="/name/{id}/name.do", method = RequestMethod.GET)
//	public String GeddtTrqdasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable int id) throws IOException{	
//		int nameId  = id ;
//		List namelst =   nameService.GetNameInfoById(nameId);
//		List name =      nameService.GetFullNameById(nameId) ;
//		String firstName = nameService.GetFirestName(nameId);
//
//		map.put("namelst", namelst) ;
//		map.put("name", name) ;
//		
//		map.put("nameId", nameId);
//		map.put("firstName", firstName) ;
//		return "/template/name/article";
//	}
	
	
	@RequestMapping(value ="/name/{id}/name_{pageNumber}.do", method = RequestMethod.GET)
	public String GeddttTrqdasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable int id,@PathVariable int pageNumber) throws IOException{	
		int nameId  = id ;
		List namelst =   nameService.GetNameInfoById(nameId);
		P p =nameService.GetFullNamePageById(nameId, pageNumber);
		// List name =      nameService.GetFullNameById(nameId) ;
		List name = p.getList();
		String firstName = nameService.GetFirestName(nameId);
		map.put("namelst", namelst) ;
		map.put("name", name) ;
		map.put("pageNumber", pageNumber) ;
		map.put("pages", p.getTotalPage()) ;
		map.put("TotalRecord", p.getTotalRecord()) ;
		int n = siteService.GetSite().getHtml();
		String  suffix="html";
		String  hhtml="";
		if(n==1){
			suffix="html";
			hhtml="1" ;
		}else{
			suffix="do";
			hhtml="0" ;
		}
		map.put("suffix", suffix) ;
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		map.put("nameId", nameId);
		map.put("firstName", firstName) ;
		return "/template/name/NameList";
	}
	
	
	
	
	@RequestMapping(value ="/name/{id}/name.do", method = RequestMethod.GET)
	public String GeddttTrqddasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable int id) throws IOException{	
		int nameId  = id ;
		List namelst =   nameService.GetNameInfoById(nameId);
		P p =nameService.GetFullNamePageById(nameId, 1);
		// List name =      nameService.GetFullNameById(nameId) ;
		List name = p.getList();
		String firstName = nameService.GetFirestName(nameId);
		map.put("namelst", namelst) ;
		map.put("name", name) ;
		map.put("pages", p.getTotalPage()) ;
		map.put("TotalRecord", p.getTotalRecord()) ;
		int n = siteService.GetSite().getHtml();
		String  suffix="html";
		String  hhtml="";
		if(n==1){
			suffix="html";
			hhtml="1" ;
		}else{
			suffix="do";
			hhtml="0" ;
		}
		map.put("suffix", suffix) ;
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		map.put("nameId", nameId);
		map.put("firstName", firstName) ;
		return "/template/name/NameList";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/name/NameSearch.do", method = RequestMethod.GET)
	public String FindNssameBylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
//		String name = request.getParameter("name");
		String name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
	    System.out.println("nnnnnnn:" + name);
	    int searchType;
	    if ((name.contains("x")) || (name.contains("X")))
	      searchType = 2;
	    else {
	      searchType = 1;
	    }
	    char[] namechar = name.toCharArray();
   		 String firstname =  String.valueOf(namechar[0])  ; 
	    List namelst =   nameService.GetSearchNameResult(name, searchType);
		map.put("namelst",  namelst) ;
		map.put("firstName",  firstname) ;
		map.put("SearchName",  name) ;
		
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		
		return "/template/name/NameSearch";
	}
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/name/SourceList.do", method = RequestMethod.GET)
	public String GetttA1reeticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		
		int pageNumber =Integer.parseInt(request.getParameter("pagenumber"));
		int pageSize = 25 ;
		P p= new P();
		p =      nameService.GEtNameSource(pageSize, pageNumber);
		map.put("namelst", p.getList()) ;
		map.put("totalpage", p.getTotalPage()) ;
		map.put("pagenumber", pageNumber) ;
		return "module/name/SourceList";
	}
	
	@RequestMapping(value ="/name/NameSource.do", method = RequestMethod.GET)
	public String G4etttA1reeticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int nameId  = Integer.parseInt(request.getParameter("nameId"));
		List namelst =   nameService.GetNameInfoById(nameId);
		map.put("namelst", namelst) ;
		return "module/name/NameSource";
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/name/FindName.do", method = RequestMethod.GET)
	public String FindNameBylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int nameId  = Integer.parseInt(request.getParameter("nameId"));
		String name = request.getParameter("name");
		
		if(name.contains("x")){
			name =name.replace("x", "%");
		}
		if(name.contains("X")){
			name =name.replace("X", "%");
		}
		
		System.out.println("fffffffffffff"+name);
		List namelst =   nameService.GetNameInfoById(nameId);
		List fullname =  nameService.GetFullNameByName(name);
		map.put("namelst",  namelst) ;
		map.put("name", fullname) ;
		return "module/name/NameDetail";
	}
	

	@RequestMapping(value ="/name/NamePerson.do", method = RequestMethod.GET)
	public String FindNameBddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int nameId  = Integer.parseInt(request.getParameter("nameId"));
		List namelst =   nameService.GetNameInfoById(nameId);
		map.put("namelst",  namelst) ;
		return "module/name/NamePerson";
	}
	
	
	
	@RequestMapping(value ="/name/DatetTime.do", method = RequestMethod.GET)
	public String DatetTime(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		return "module/name/DatetTime";
	}
	
	
	
	
	@RequestMapping(value ="/name/ContentList.do", method = RequestMethod.GET)
	public String FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int type=11 ;
		List namelst =   nameService.GetContentBytype(type);
		map.put("namelst",  namelst) ;
		return "module/name/ContentList";
	}
	
	@RequestMapping(value ="/name/ContentDetail.do", method = RequestMethod.GET)
	public String FindNameddBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int id  = Integer.parseInt(request.getParameter("id"));
		List namelst =   nameService.GetContentById(id);
		map.put("namelst",  namelst) ;
		return "module/name/ContentDetail";
	}
	
	
//	
//	
//	
//	
//	
//	
	
	@RequestMapping(value ="/name/{nameid}/{id}_N.do", method = RequestMethod.GET)
	public String FindNamedddBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request ,@PathVariable int nameid,@PathVariable int id) throws IOException{	
		String name ="";
		name= nameService.GetFullName(id);
		String firestname = nameService.GetFirestNameByFullNameId(id);
		name = firestname +name ;
		List lt ;
		lt =dd(name);
		Map<Integer,String> m = new HashMap<Integer,String>();
//		System.out.println("size==="+lt.size());
//		mp 为名字中每个字的解释
		Map mp = new HashMap();
		List allname = new ArrayList() ;
		List<Integer> bhlst  = new ArrayList<Integer>() ;
		String wwxx="" ;
		for(int i=0;i<lt.size();i++){
			String key = lt.get(i).toString() ;
			String Word = nameService.GetZiJiShi(lt.get(i).toString()) ;
			if(allname.contains(Word)){
			}else{
				allname.add(Word);
			}
			mp.put(key, Word);
			int bh = nameService.GetBiHua(key);
			bhlst.add(bh);
			String wu =  nameService.GetWuXing(key);
			wwxx= wwxx + wu +"  " ;
//			System.out.println("jjj="+lt.get(i));
//			System.out.println("jjj="+nameService.GetZiJiShi(lt.get(i).toString()));
		}
		int tian = 0 ;
		int ren = 0 ;
		int di = 0 ;
		int wai = 0 ;
		int zong = 0 ;

		String ttian ;
		String rren ;
		String ddi ;
		String wwai ;
		String zzong ;
		boolean isdoubleFirstName = false ;
		if(lt.size()==3){
			String Firstname =lt.get(0).toString() + lt.get(1).toString() ;
			if(nameService.IsDoubleFirstName(Firstname)){
				isdoubleFirstName = true ;
			}
		}else if(lt.size()==2){
			isdoubleFirstName = false  ;
		}else if(lt.size()==4){
			String Firstname =lt.get(0).toString() + lt.get(1).toString() ;
			if(nameService.IsDoubleFirstName(Firstname)){
				isdoubleFirstName = true ;
			}
		}
		
		
	if(!isdoubleFirstName){	// 非复姓
		if(bhlst.size()==3){	
		tian =	bhlst.get(0) +1  ;
		ren  =  bhlst.get(0) +bhlst.get(1)  ;
		di   = 	bhlst.get(1) +bhlst.get(2) ;
		zong =  bhlst.get(0)  + bhlst.get(1) + bhlst.get(2) ;
		wai  =  zong - ren +1 ;	
		}else if(bhlst.size()==2){
			tian =	bhlst.get(0) + 1  ;
			ren  = bhlst.get(0) + bhlst.get(1)  ;
			di   = 	bhlst.get(1) + 1 ;
			zong =  bhlst.get(0)  + bhlst.get(1) ;
			wai  =  2 ;
		}
	}else {  // 复姓
		if(bhlst.size()==3){	
			tian =	bhlst.get(0) +bhlst.get(1)  ;
			ren  =  bhlst.get(1) +bhlst.get(2)  ;
			di   = 	bhlst.get(2) +1 ;
			zong =  bhlst.get(0)  + bhlst.get(1) + bhlst.get(2) ;
			wai  =  zong - ren +1 ;	
		}
		if(bhlst.size()==4){	
			tian =	bhlst.get(0) +bhlst.get(1)  ;
			ren  =  bhlst.get(1) +bhlst.get(2)  ;		
			di   = 	bhlst.get(2) +bhlst.get(3) ;
			zong =  bhlst.get(0)  + bhlst.get(1) + bhlst.get(2) + bhlst.get(3) ;
			wai  =  zong - ren  ;
			
		}
	}	

		ttian = BaShiYi.GetDesc(tian);
		rren  = BaShiYi.GetDesc(ren);
		ddi   = BaShiYi.GetDesc(di);
		wwai  = BaShiYi.GetDesc(wai);
		zzong = BaShiYi.GetDesc(zong);
		
		String  BiHua="";
	//	System.out.print("-"+name );
		String pin  =     TestPinyin4jCsdn.getAllPinyin(name);     
//		System.out.println("拼音:"+pin);
		int size = bhlst.size() ;
		int[] A  = new int[size];
		for(int n=0;n<size;n++){
			BiHua =BiHua + bhlst.get(n)+"  " ;
			A[n] = bhlst.get(n) ;
		}
		String wxtian = WX(tian);
		String wxren  = WX(ren); 
		String wxdi   = WX(di);
		String wxwai = WX(wai);
		String wxzong = WX(zong);
		
		String  sc =  wxtian+wxren+wxdi ;
		String  rs =  nameService.GetXiongJi(sc) ;
		String  scdetail = nameService.GetDetail(sc) ;
		String zzzong = ShuLi.ShuLiDetail(zong) ;
		String  xingge = XingGe.NameXingGe(ren)  ;
        String tttian= AnShiNumber.GetDesc(tian) ;
        String dddi= AnShiNumber.GetDesc(di) ;
        String rrren= AnShiNumber.GetDesc(ren) ;
        String wwwai= AnShiNumber.GetDesc(wai) ;
	    String beautfully =TianShengLiZhi.Beautfully(A);

//		-------------------输出-----------------------
		    map.put("name",name);		//		姓名
			map.put("pin", pin);      	//拼音	
			map.put("mp",mp);           //		名字中每个字的解释
			map.put("BiHua",BiHua);		// 笔画
			map.put("allname", allname);			
//		  	  五格数
			map.put("tian",tian); 
			map.put("ren",ren); 
			map.put("di",di); 
			map.put("zong",zong); 
			map.put("wai",wai); 
			
//	                    五格概述		
			map.put("ttian",ttian); 
			map.put("rren",rren); 
			map.put("ddi",ddi); 
			map.put("zzong",zzong); 
			map.put("wwai",wwai); 

			map.put("sc",sc);  // 三才
			map.put("rs",rs);  //  吉凶
			map.put("scdetail",scdetail);  //三才 概述
			map.put("zzzong",zzzong);  // 总格 数理详解
			map.put("xingge",xingge);  //10 种性格
			
//	         五格数理					
			map.put("tttian",tttian); 
			map.put("rrren",rrren); 
			map.put("dddi",dddi); 
			map.put("wwwai",wwwai);	
			map.put("wwxx",wwxx);
			map.put("beautfully",beautfully);	 // 天生丽质

			
			String item ="name";
			List	menuList   = itemService.ArticleItemCate(item)  ;
			map.put("menuList",menuList);
			map.put("item", item) ;

//		 Luozhuangnamewuxing my = new Luozhuangnamewuxing();	
//		 int[] temp =   my.getnameliborder(name);
//	     int[] wuxing = my.getnameWX(temp);
//
//		map.put("wx", my.pringst(my.getnameWXarray(wuxing)));
		return "/template/name/NameAnalyse";
	}
	
	
	
	
	
	
	@RequestMapping(value = "/name/TwoLove.do", method = RequestMethod.GET)
	public void SetCaseRunnerSucessAndFaileNumber(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		
		String  man = request.getParameter("man");
		String  woman = request.getParameter("woman");
		 LuozhuangNametogetherTestClass my = new LuozhuangNametogetherTestClass();

//		 String  ss  =  my.test("孟祥彬", "孙晓芳");
		 String  ss  =  my.test(man, woman);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(ss);
		response.getWriter().flush();	
	}
	
	
	@RequestMapping(value = "/name/UserSubmitName.do", method = RequestMethod.GET)
	public void SetCaseRunsnerSucessAndFaileNumber(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String  name = request.getParameter("name");
		int rs =nameService.UserSubmitName(name);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs+"");
		response.getWriter().flush();	
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/name/NameDo.do", method = RequestMethod.GET)
	public void SetCaseRunnileNumber(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		List lst =   nameService.GetMoreName() ;
//		List lst =   nameService.GetAllName() ;
		int size =lst.size() ;
		for(int j=0;j<size;j++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(lst).get(j);
			String nameid  =  ob.getString("nameid");
			String name = ob.getString("name");
			nameService.UpdateNameFomrat(name, nameid);
			System.out.print("j="+j+"nameid="+nameid+"name="+name+"sql=");
			
			
		}
		
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("1");
		response.getWriter().flush();	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	 public LuozhuangNameClass getNameClass() {
         return myName;
  
     }
	   public LuozhuangNameClass getMyName() {
	        return myName;
	    }
	
	   
	
	public  List  dd(String name){
		System.out.println("mingzi is  ="+name);
		List lt =new ArrayList();
	 String chinese = "1！啊绿baidu1色空zhi3间12大dao";
    String regex = "[\\u4e00-\\u9fa5]";
    Pattern pattern = Pattern.compile(regex);
    Matcher matcher = pattern.matcher(name);
    int count=0;
    while (matcher.find()) {
    lt.add(matcher.group());
        count++;
        
    }
	return lt;
	}
	
	
	public  String  WX(int i){
		String rs = null ;
		
		if(i%10==1||i%10==2){
			rs ="木";
		}else if(i%10==3||i%10==4){
			
			rs ="火";
		}else if(i%10==5||i%10==6){
			rs ="土";
			
		}else if(i%10==7||i%10==8){
			rs ="金";
			
		}else if(i%10==0||i%10==9){
			
			rs ="水";
		}
		
		
		return rs ;
	}
	
	
	
	
	
//	-------------------康熙字典-------------------------------------
	

	
	
	
	@RequestMapping(value = "/name/{startid}/{endid}/it.do", method = RequestMethod.GET)
	public void SetCa(ModelMap map, HttpServletResponse response, HttpServletRequest request,@PathVariable int startid ,@PathVariable int endid )
			throws IOException {
//		List nst =   nameService.GetAllFullName(startid, endid) ;
//		System.out.println("---"+nst.size()+"--");
		List  key =new ArrayList();
		String	sql = "" ;
		List sq = new ArrayList();
		
		
		for(int m=startid ;m<=endid ;m=m+501){
		List nst =   nameService.GetAllFullName(m, m+501) ;
		
		System.out.println("---"+nst.size()+"--start="+m+"-----end="+(m+501));
		for(int i=0;i<nst.size();i++){
			System.out.print(i);
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(nst).get(i);
		    String name =	ob.getString("fullname");
		    char[] namechararray = name.toCharArray();
		    for (int j = 0; j < namechararray.length; j++) {
		   if(j==0) {
			   String word = String.valueOf(namechararray[0]); 
			   if(key.contains(word)){

		        }else{
				    key.add(word);
				    System.out.println(word+"+++++++++++++");
				    sql=  "insert into life_key ( zi ) SELECT '"+word+"' from DUAL WHERE NOT EXISTS ( select zi  from  life_key  where zi ='"+word+"') " ;
				    sq.add(sql);
		        } 
		   }else{ 
			    String word = String.valueOf(namechararray[j]); 
			    sql=  "insert into life_key ( zi ) SELECT '"+word+"' from DUAL WHERE NOT EXISTS ( select zi  from  life_key  where zi ='"+word+"') " ;
			    sq.add(sql);
		   }
		    }
		    if((i+1)%500==0){
		    System.out.println(i+"-");
		    System.out.println("sql条数="+sq.size());
		    String [] sl =new String [sq.size()];
		    for(int n=0;n<sq.size();n++){
				 sl[n] =sq.get(n).toString() ;
			}
		    System.out.println("---开始插入-");
		    nameService.InsertBatchWord(sl);
		    System.out.println("--插入完成-");
		    sq.clear();
		    }
		}

		}
		
		
		

		
		
		
		
		
		
		
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("1");
		response.getWriter().flush();	
	}
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/name/cmp/it.do", method = RequestMethod.GET)
	public void SetCga(ModelMap map, HttpServletResponse response, HttpServletRequest request )
			throws IOException {
	String sql="select *  from life_key ";
	String sq="select jtz  from content " ;	
	List  t =	baseService.GetInfoList(sq);
		String  ostr ="";
		int size = t.size() ;
		System.out.println("t.size()="+size);
	for(int i=0;i<size;i++){
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(t).get(i);
		ostr = ostr + ob.getString("jtz");
		if(i%100==0){
			System.out.print(i);
		}
	}
	System.out.println(ostr) ;
	List  l =	baseService.GetInfoList(sql);	
	List  key =new ArrayList();
	int si =l.size();
	for(int j=0;j<si;j++){
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(l).get(j);
		String zi  =  ob.getString("zi");
		if(ostr.indexOf(zi)<0){
			key.add(zi);
		}
	}	
	
	System.out.println("content not in key number="+key.size());
	for(int n=0;n<key.size();n++){
		System.out.print(key.get(n));
	}

		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("1");
		response.getWriter().flush();	
	}



@RequestMapping(value = "/name/cmpp/it.do", method = RequestMethod.GET)
public void SetsCga(ModelMap map, HttpServletResponse response, HttpServletRequest request )
		throws IOException {
	
	String  s="咺婍蕋贇汯炣逹悅凱瑔譞躍鎔棟恵栤嵓膤帥蘋崯馡玨禘耹浺業彥琍宧堄傢汭碃嶺囍湀璘漺琾嶽珃銨枻櫘鎛莤璦洆荺瀅渢雋眏粦瑋遹淽厷瑩憇諰巒碄灔笍瞾瑱澋璒铔嬟颎飏崡悎蕎砡嬙徫灝柟珵蓤鍚棫堒讋渏奻蕥澐禠憙椃娢澣兒碁衎菓嫕岺鉦嫻莯窣皝競峣愽璓嶸齊鍹婭浧駒栺伈炤麗姸崟蕍荿鱇锠匯酈唅璕懳夢鈱螢權樂渱硧姈剴烿嫆豐煥賜誌仱紓荢貞劺玵燦楉汮炢嫄諾喬熲爔霂嬨様慶侶煖萲峯濹芉莙碩晽蒨媗孞鈜尓湶騉愢莟佺璿藀銳㼆煈馫琻謡鍒爤。颸珘瑆鉝勝藴嬅鏮瓅溁韾燿琿風湲浄詩艷暥瓊純曉徳 沺糧煋煒湙桭屽錂釿灧矴椀玪岦煣義⑦nul灐俢佂苃埈瓔坵忞洨榟盺毊旼埍塋淜姌顒肸蓂曚浟涊靚泧瀟昞玔靑、帯錅畩禎粻恏洢氿橪苪熺湡棅嶔浳鵁鹍媃澝泆葹煾喣議卐洸媤勄慜烑纙爾樑赩籣榮崊贠暠琞極寊憲兪泝嶏鉊皊槨铚潽蓞厡娸瑃誔愃朩晙鈡坔訮媖晳楟檳師爃倖勁暿東瑧旑榅汣昳嬛晫國嘩峸俤崑讚漒棌聖莔騑妺荁暟湑狀鈞瑢栴孖娰惁斿冘艻翚畑＃吇楒湞賢圽睆颕烇勨寳姳鋐燁潔瑫遠沝幗劼渓鍩浱膧烆鎲舲藝閃畇韻陞黅鉨學峧姁慱潾萊儁頡巖傳甠嶠篟訫滺濦焺鋕鏇潁玬逌湧禇嬊臓潓瓓咲黙飛陽梒匸暦惢蘭渀銛愛薠　蓮檍眀凞幀婌萫昫稏嫃珦掿紹媮綺胐玡鎯運菾砢實愮塰棆`袆滐濽潤昽鮽勻筳長翃漢萬倇茡珆儀娮棛璽旲茥灴栫畄瀶瑘煐壘鋅瑨凎緂冺煵鎬樺鏵纜禮坱苳飴艵忴銥葏蓒泙瀮烺釪珼琓昑縼葉軼鉬欂翧欀谞聲褆霦苙萶寧騰偉億繼濋莐賦浤謋韜倣楙埌暢翙豊書檾熎蕗暚炂鳯箤渙鹓渂镠彣泩茟壵鉫楻薬琣涏楽甡淵嬩鵼禕峮洡洐敘婇曐○‘諆楊奧釘啱懷瀠嵐楓埩媄錱藍斦鳳號莃強煙炵洔璆蕓丼汫峎裬順諭漛珹燑鵬竢媣瑅姕婈馠萳娚珄烵汢藹媌璵嵉標澂菫傹汘邐欽蒄峼墦泇嵆鏡崋譯鎵棏鋞燼垟琝桾郷暉跩妧煠苖橤忔鉻錫钘笒舧銓臺罯湦瞏皐焬叢孌婠塏誠茞湩嶶鏷龘愖の偐垶淔珪甒詠熯霟涭園稆栯靇枬棐筬悰滜罥伝崗嵃汧荶熈萂粛姇鷺【祹餀葓裪畠琩婔郿桽淸兿亠瓃揚僑嫛恆琹慠霅槹啓崬盻銈朶丗惞虒牱袊鴉鮑杙菻悥莊璌】暁姰暃苼？潻忛奷埑眬睶鈭愗堼墪鍄飖玕藠泂眳椗薑鄷琋甹炚錋鍏楡娳烗昸塱珖榣濬瑸駿贒薙連洖祇晅炏秖舤曕與秝靁燡埁鵰烸贊桻箮騏枟晸鈿忼嫤寍姍囗吶謙檹尛鞱菉習瑤鸴濤戨嬭冮皔榃嚜沇崝菎昹榐鳴艓飇秄蓶嬌昦盉蔳堔驲綪靈維暎鏗欗樹銀進聯澭榈徍憶夌垊瑉垳忄鎰樛栒簙囥梱暐栶潩";
		char[] key = s.toCharArray();
		int size = key.length ;
		int totalname = 0;
		int n1=0;
		int n2=0 ;
		int n3=0 ;
		int n4=0 ;
		int n5=0 ;
		int n6=0 ;
		int n7=0 ;
		int n8=0 ;
		int n9=0 ;
		int n10=0 ;
		String a="";

		for (int j = 0; j < size; j++) {
			String word = String.valueOf(key[j]); 
			String sql =" select  id  from life_full_name   where   fullname   like   '%"+word+"%' "  ;   
			List t = baseService.GetInfoList(sql);
			int num =t.size();
			totalname =totalname + num ;
//			if(num==0){
//
//			}else 
			if(num==1){
				n1=n1+1 ;
				String sq ="delete  from  life_full_name where fullname   like   '%"+word+"%' " ;
				baseService.DelInfo(sq);
			}
//				else if(num==2){
//				n2=n2+1 ;
//				String sq ="delete  from  life_full_name where fullname   like   '%"+word+"%' " ;
//				baseService.DelInfo(sq);
//			}else if(num==3){
//				n3=n3+1 ;
//				String sq ="delete  from  life_full_name where fullname   like   '%"+word+"%' " ;
//				baseService.DelInfo(sq);
//			}else if(num==4){
//				n4=n4+1 ;
//				String sq ="delete  from  life_full_name where fullname   like   '%"+word+"%' " ;
//				baseService.DelInfo(sq);
//			}else if(num==5){
//				n5=n5+1 ;
//				String sq ="delete  from  life_full_name where fullname   like   '%"+word+"%' " ;
//				baseService.DelInfo(sq);
//			}else{
//				
//				a=a+ word ;
//				String sq ="delete  from  life_full_name where fullname   like   '%"+word+"%' " ;
//				baseService.DelInfo(sq);
//			}
			System.out.print(j);

			if(j%50==0){
				System.out.println("");
			}
			
		}
		
		System.out.println("");
		System.out.println("总计名字："+totalname +"格");
		System.out.println("1："+n1 +"格");
		System.out.println("2："+n2 +"格");
		System.out.println("3："+n3 +"格");
		System.out.println("4："+n4 +"格");
		System.out.println("5："+n5 +"格");
		System.out.println("");
		System.out.println(a.length());
		System.out.println(a);
		
		
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write("1");
		response.getWriter().flush();
}







}



