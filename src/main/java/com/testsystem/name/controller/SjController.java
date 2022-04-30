package com.testsystem.name.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
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

import com.testsystem.backstage.service.ItemService;
import com.testsystem.name.love.AnShiNumber;
import com.testsystem.name.love.BaShiYi;
import com.testsystem.name.love.ShuLi;
import com.testsystem.name.love.TestPinyin4jCsdn;
import com.testsystem.name.love.TianShengLiZhi;
import com.testsystem.name.love.XingGe;
import com.testsystem.name.service.NameService;
import com.testsystem.name.service.NameWapService;
import com.testsystem.name.service.WordService;
import com.testsystem.name.tools.P;
import com.testsystem.name.vo.Kangxi;
import com.testsystem.site.service.SiteService;

@Controller
public class SjController {

	@Autowired
	private NameService nameService;
	
	@Autowired
	private SiteService siteService ;
	
	@Autowired
	private ItemService itemService ;
	
	@Autowired
	private WordService wordService ;
	
	@Autowired
	private NameWapService nameWapService ;
	
	
	@RequestMapping(value ="/name/sj/index.do", method = RequestMethod.GET)
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
		map.put("item", item) ;
		map.put("lst", lst) ;
		map.put("namelst", namelst) ;
		return "/template/name/sj/index";
	}
	

	@RequestMapping(value ="/name/sj/{id}_{page}.do", method = RequestMethod.GET)
	public String GeddttTrfqdasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable int id,@PathVariable int page) throws IOException{	
		int nameId  = id ;
		List namelst =   nameService.GetNameInfoById(nameId);
		String firstName = nameService.GetFirestName(nameId);
		int pagesize=600 ;
		P p=nameWapService.GetSjName(pagesize, page, nameId);
		if(page==1){
			 Integer min = 1;
			 Integer max = p.getTotalPage();
			 Random random = new  Random();
			 int result = random.nextInt(max) % (max-min+1) + min;
			 p=nameWapService.GetSjName(pagesize, result, nameId);	
		}
		
		
		
		
		map.put("namelst", namelst) ;
		map.put("name", p.getList()) ;
		map.put("pages", p.getTotalPage()) ;
		map.put("page", page) ;
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
		map.put("item", item) ;
		map.put("nameid", nameId);
		map.put("firstName", firstName) ;
		return "/template/name/sj/List";
	}
	
	
	
	
	
	@RequestMapping(value ="/name/sj/{nameid}/{id}_NameDetail.do", method = RequestMethod.GET)
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
		System.out.print("-"+name );
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

		return "/template/name/sj/NameDetail";
	}
	
	
	public  List  dd(String name){
		List lt =new ArrayList();
	 String chinese = "1！啊绿baidu1色空zhi3间12大dao";
    String regex = "[\\u4e00-\\u9fa5]";
    Pattern pattern = Pattern.compile(regex);
    Matcher matcher = pattern.matcher(name);
    int count=0;
    while (matcher.find()) {
    System.out.println();	
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
	
	
	
	
	
/**
 * 
 * 
 * 
 * 
 */
	
	
	@RequestMapping(value ="/name/sj/NameTest.do", method = RequestMethod.GET)
	public String GetddA1ggredeticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		return "/template/name/sj/NameTest";
	}
	
	@RequestMapping(value ="/name/sj/NameFree.do", method = RequestMethod.GET)
	public String GetddAd1reeticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		return "/template/name/sj/NameFree";
	}
	
	
	
	@RequestMapping(value ="/name/sj/NameTestResult.do", method = RequestMethod.GET)
	public String FindNafmedddBdddylikeName(ModelMap map, HttpServletResponse response,HttpServletRequest request ) throws IOException{	
		String name = request.getParameter("name");
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
		return "/template/name/sj/NameTestResult";
	}
	
	
	
	
	
	
	@RequestMapping(value ="/name/sj/NameSearch.do", method = RequestMethod.GET)
	public String FindNssameBylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String name = request.getParameter("name");
		String name1 = request.getParameter("name1");
		String name2 = request.getParameter("name2");
		int page =Integer.parseInt(request.getParameter("page")) ;
		List namelst = null ;
		boolean hava= true ;
		int total =0;
		total=Integer.parseInt(request.getParameter("tota")) ;
   		 if(name1==null||name1.equals("")){ 
   		 }else{
   			hava= false ;
   			namelst = nameService.SearchNameSecondName(name1, page);
   			total  = nameService.GetNameTotal(2, name1) ;
   		 }
   		 
   		 if(name2==null||name2.equals("")){ 
   		 }else{
   			hava= false ;
   			namelst = nameService.SearchNamelastName(name2, page);
   			total  = nameService.GetNameTotal(3, name2);
   		 }
   		 
 		if(name==null||name.equals("")){
 		 }else{ 
 			if(hava){
 			namelst = nameService.SearchName(page);
 			total  = nameService.GetNameTotal(1, "");
 			} 
 		 }

	    
		map.put("namelst",  namelst) ;
		map.put("firstName",  name) ;
		map.put("name1",  name1) ;
		map.put("name2",  name2) ;
		map.put("page",  page+1) ;
		map.put("total",  total) ;
		
		String item ="name";
		List	menuList   = itemService.ArticleItemCate(item)  ;
		map.put("menuList",menuList);
		map.put("item", item) ;
		
		return "/template/name/sj/NameSearch";
	}
	
	
	
	
	
	
}
