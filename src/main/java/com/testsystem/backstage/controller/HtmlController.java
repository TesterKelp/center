package com.testsystem.backstage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.testsystem.admin.utils.SysInfoUtil;
import com.testsystem.article.service.ArticleService;
import com.testsystem.article.service.CateService;
import com.testsystem.article.service.TopicService;
import com.testsystem.article.util.HtmlBirth;
import com.testsystem.article.util.HtmlChannel;
import com.testsystem.article.util.HtmlChannelA;
import com.testsystem.article.util.HtmlChannelB;
import com.testsystem.article.util.HtmlChannelC;
import com.testsystem.article.util.HtmlChannelD;
import com.testsystem.article.util.HtmlChannelE;
import com.testsystem.article.util.HtmlChannelF;
import com.testsystem.article.util.HtmlFactory;
import com.testsystem.article.util.HtmlGenerator;
import com.testsystem.article.vo.BlogSetting;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.backstage.service.SpecialService;
import com.testsystem.backstage.service.TagService;
import com.testsystem.backstage.vo.Item;
import com.testsystem.defect.service.BitsService;
import com.testsystem.exception.BaseController;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.U;
import com.testsystem.name.service.NameService;
import com.testsystem.name.tools.P;
import com.testsystem.site.service.SiteService;
import com.testsystem.utils.Log;

import net.sf.json.JSONObject;
@Controller
public class HtmlController  extends BaseController{

	@Autowired
	private NameService nameService;
	@Autowired
	private SiteService siteService ;

	HtmlChannelA  A = new HtmlChannelA("");
	HtmlChannelB  B = new HtmlChannelB("");
	HtmlChannelC  C = new HtmlChannelC("");
	HtmlChannelD  D = new HtmlChannelD("");
	HtmlChannelE  E = new HtmlChannelE("");
	HtmlChannelF  F = new HtmlChannelF("");
	
//	按照输入id生成分析页
	@RequestMapping(value = "/backstage/Html_Item_NameDetailA.do", method = RequestMethod.GET)
	public  void  PageHtml_ndame(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{htmlA() ;}	
	public   void htmlA(){
		int  maxhtml= nameService.GetNameHtmlMax();
		int nameId = nameService.GetNameIdNoHtml(maxhtml);
		List na =      nameService.GetFullNameById(nameId) ;
		int size= na.size() ;
		int pagesize =500;
		int start ;
		String nameid =nameId+"" ;
		int id ;
		int siz=0;
		String url=SysInfoUtil.getSysInfo().getUrl();
		long startTime = System.currentTimeMillis(); 
		nameService.SetNameHtmlMax(nameId, 0);
		String dir ="name/"+ nameId +"/" ;
		String  tar =A.BasePath(dir)  ; 
		for(int n=0;n*500<size;n++){
		    start = n * pagesize ;
			List name =    nameService.GetFullNameByIdPage(start, pagesize, nameId) ;
			siz=name.size();
			for(int i=0;i<siz;i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(name).get(i);
				id = Integer.parseInt(ob.getString("id")) ;
				A.GeneratorNameTest(nameid, id ,url);
			}
		}
		nameService.SetNameHtmlMax(nameId, maxhtml);
		long endTime = System.currentTimeMillis();
		System.out.println("-----程序运行时间：" + (endTime - startTime)  + "s    " ); 
		System.gc();
		if(siteService.GetSite().getAutohtml()==1){
			List  lt =nameService.GetListNoHtml(maxhtml);
			if(lt.size()==0){
				System.out.println("全部生成结束");
			}else{
				htmlA() ;
			}
		}
	}
	
	@RequestMapping(value = "/backstage/Html_Item_NameDetailB.do", method = RequestMethod.GET)
	public  void  PageHtml_ndame2(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{htmlB() ;}
	public   void htmlB(){
		int  maxhtml= nameService.GetNameHtmlMax();
		int nameId = nameService.GetNameIdNoHtml(maxhtml);
		List na =      nameService.GetFullNameById(nameId) ;
		int number =0 ;
		int size=	 na.size() ;
		System.out.println(nameId);
		int pagesize =500;
		int start ;
		String nameid ;
		int id ;
		int siz=0;
		String url=SysInfoUtil.getSysInfo().getUrl();
		long startTime = System.currentTimeMillis();
		nameService.SetNameHtmlMax(nameId, 0);
		for(int n=0;n*500<size;n++){
		    start = n * pagesize ;
			List name =    nameService.GetFullNameByIdPage(start, pagesize, nameId) ;
			siz=name.size();
			for(int i=0;i<siz;i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(name).get(i);
				nameid =ob.getString("nameid") ;
				id = Integer.parseInt(ob.getString("id")) ;
				B.GeneratorNameTest(nameid, id ,url);
				number ++ ;
			}
		}	
		nameService.SetNameHtmlMax(nameId, maxhtml);
		
		long endTime = System.currentTimeMillis();
		System.out.println("-----程序运行时间：" + (endTime - startTime)  + "s    "+number  ); 
		System.gc();
		
		if(siteService.GetSite().getAutohtml()==1){
			List  lt =nameService.GetListNoHtml(maxhtml);
			if(lt.size()==0){
				System.out.println("全部生成结束");
			}else{
				htmlB() ;
			}
		}
		
	}
	


	@RequestMapping(value = "/backstage/Html_Item_NameDetailC.do", method = RequestMethod.GET)
	public  void  PageHtml_ndame3(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{htmlC() ;}	
	public   void htmlC(){
	    int  maxhtml= nameService.GetNameHtmlMax();
		int  nameId = nameService.GetNameIdNoHtml(maxhtml);
		List na =      nameService.GetFullNameById(nameId) ;
		int  size=	 na.size() ;
		int  pagesize =500;
		int  start ;
		String nameid ;
		int id ;
		int siz=0;
		String url=SysInfoUtil.getSysInfo().getUrl();
		long startTime = System.currentTimeMillis(); 
		nameService.SetNameHtmlMax(nameId, 0);
		for(int n=0;n*500<size;n++){
		    start = n * pagesize ;
			List name =    nameService.GetFullNameByIdPage(start, pagesize, nameId) ;
			siz=name.size();
			for(int i=0;i<siz;i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(name).get(i);
				nameid =ob.getString("nameid") ;
				id = Integer.parseInt(ob.getString("id")) ;
				C.GeneratorNameTest(nameid, id ,url);
			}
		}	
		nameService.SetNameHtmlMax(nameId, maxhtml);
		long endTime = System.currentTimeMillis();
		System.out.println("-----程序运行时间：" + (endTime - startTime)  + "s    " ); 
		System.gc();
		if(siteService.GetSite().getAutohtml()==1){
			List  lt =nameService.GetListNoHtml(maxhtml);
			if(lt.size()==0){
				System.out.println("全部生成结束");
			}else{
				htmlC(); 
			}
		}
	}
	

	@RequestMapping(value = "/backstage/Html_Item_NameDetailD.do", method = RequestMethod.GET)
	public  void  PageHtml_ndameD(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{htmlD() ;}	
	public   void htmlD(){
	    int  maxhtml= nameService.GetNameHtmlMax();
		int  nameId = nameService.GetNameIdNoHtml(maxhtml);
		List na =      nameService.GetFullNameById(nameId) ;
		int  size=	 na.size() ;
		int  pagesize =500;
		int  start ;
		String nameid ;
		int id ;
		int siz=0;
		String url=SysInfoUtil.getSysInfo().getUrl();
		long startTime = System.currentTimeMillis(); 
		nameService.SetNameHtmlMax(nameId, 0);
		for(int n=0;n*500<size;n++){
		    start = n * pagesize ;
			List name =    nameService.GetFullNameByIdPage(start, pagesize, nameId) ;
			siz=name.size();
			for(int i=0;i<siz;i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(name).get(i);
				nameid =ob.getString("nameid") ;
				id = Integer.parseInt(ob.getString("id")) ;
				D.GeneratorNameTest(nameid, id ,url);
			}
		}	
		nameService.SetNameHtmlMax(nameId, maxhtml);
		long endTime = System.currentTimeMillis();
		System.out.println("-----程序运行时间：" + (endTime - startTime)  + "s    " ); 
		System.gc();
		if(siteService.GetSite().getAutohtml()==1){
			List  lt =nameService.GetListNoHtml(maxhtml);
			if(lt.size()==0){
				System.out.println("全部生成结束");
			}else{
				htmlD(); 
			}
		}
	}
	
	
	
	@RequestMapping(value = "/backstage/Html_Item_NameDetailE.do", method = RequestMethod.GET)
	public  void  PageHtml_ndameE(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{htmlE() ;}	
	public   void htmlE(){
	    int  maxhtml= nameService.GetNameHtmlMax();
		int  nameId = nameService.GetNameIdNoHtml(maxhtml);
		List na =      nameService.GetFullNameById(nameId) ;
		int  size=	 na.size() ;
		int  pagesize =500;
		int  start ;
		String nameid ;
		int id ;
		int siz=0;
		String url=SysInfoUtil.getSysInfo().getUrl();
		long startTime = System.currentTimeMillis(); 
		nameService.SetNameHtmlMax(nameId, 0);
		for(int n=0;n*500<size;n++){
		    start = n * pagesize ;
			List name =    nameService.GetFullNameByIdPage(start, pagesize, nameId) ;
			siz=name.size();
			for(int i=0;i<siz;i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(name).get(i);
				nameid =ob.getString("nameid") ;
				id = Integer.parseInt(ob.getString("id")) ;
				E.GeneratorNameTest(nameid, id ,url);
			}
		}	
		nameService.SetNameHtmlMax(nameId, maxhtml);
		long endTime = System.currentTimeMillis();
		System.out.println("-----程序运行时间：" + (endTime - startTime)  + "s    " ); 
		System.gc();
		if(siteService.GetSite().getAutohtml()==1){
			List  lt =nameService.GetListNoHtml(maxhtml);
			if(lt.size()==0){
				System.out.println("全部生成结束");
			}else{
				htmlE(); 
			}
		}
	}
	
	
	
	@RequestMapping(value = "/backstage/Html_Item_NameDetailF.do", method = RequestMethod.GET)
	public  void  PageHtml_ndameF(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{htmlF() ;}	
	public  void  htmlF(){
	    int  maxhtml= nameService.GetNameHtmlMax();
		int  nameId = nameService.GetNameIdNoHtml(maxhtml);
		List na =      nameService.GetFullNameById(nameId) ;
		int  size=	 na.size() ;
		int  pagesize =500;
		int  start ;
		String nameid ;
		int id ;
		int siz=0;
		String url=SysInfoUtil.getSysInfo().getUrl();
		long startTime = System.currentTimeMillis(); 
		nameService.SetNameHtmlMax(nameId, 0);
		for(int n=0;n*500<size;n++){
		    start = n * pagesize ;
			List name =    nameService.GetFullNameByIdPage(start, pagesize, nameId) ;
			siz=name.size();
			for(int i=0;i<siz;i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(name).get(i);
				nameid =ob.getString("nameid") ;
				id = Integer.parseInt(ob.getString("id")) ;
				F.GeneratorNameTest(nameid, id ,url);
			}
		}	
		nameService.SetNameHtmlMax(nameId, maxhtml);
		long endTime = System.currentTimeMillis();
		System.out.println("-----程序运行时间：" + (endTime - startTime)  + "s    " ); 
		System.gc();
		if(siteService.GetSite().getAutohtml()==1){
			List  lt =nameService.GetListNoHtml(maxhtml);
			if(lt.size()==0){
				System.out.println("全部生成结束");
			}else{
				htmlF(); 
			}
		}
	}
	
	
	
	
	
	
	
	
	
}
