package com.testsystem.backstage.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
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
public class HtmlPage  extends BaseController{
	@Autowired
	private CateService cateService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private  BitsService  bitsService ;
	@Autowired
	private TopicService topicService ;
	@Autowired
	private ItemService itemService ;
	@Autowired
	private NameService nameService;
	@Autowired
	private SpecialService specialService ;
	
	@Autowired
	private TagService tagService ;
	
	
	@Autowired
	private SiteService siteService ;
	
	
	private List catelst;
	private List tlst ;
	private List articlelst;
	HtmlGenerator h = new HtmlGenerator("");
	HtmlFactory   ht = new HtmlFactory("");
	HtmlBirth     hb = new HtmlBirth("");
	HtmlChannel   hc = new HtmlChannel("");
	
	/** 后台 菜单导航   **/
	@RequestMapping(value = "/backstage/HtmlPage_menu.do", method = RequestMethod.GET)
	public  String  PageHtml_menu(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		tlst=itemService.ItemList();
		map.put("lst",tlst);
		return "/module/backstage/SetHtml";
	}
	
	
	
	@RequestMapping(value = "/backstage/Html_SingleItemIndex.do", method = RequestMethod.GET)
	public  String  PageHtml_index(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
//	本来是站点首页 + 多频道首页  当只有一个频道时站点首页 和单频道首页有些不适宜，所以讲站点首页 和 单频道首页一样。
		map.put("info","恭喜，生成单频道首页成功！");
		tlst=itemService.ItemList();
		map.put("lst",tlst);
		h.GeneratorSingleItemIndex();
		return "/module/backstage/SetHtml";	
	}
	
	@RequestMapping(value = "/backstage/Html_MultipleItemIndex.do", method = RequestMethod.GET)
	public  String  PageHtmld_index(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
//	本来是站点首页 + 多频道首页   讲index的html页面复制到站点首页位置
		System.out.print("shengchengshouye");
		map.put("info","恭喜，生成单频道首页成功！");
		tlst=itemService.ItemList();
		map.put("lst",tlst);
		h.GeneratorMultipleItemIndex();
		return "/module/backstage/SetHtml";	
	}
	
	public void copyFile(String oldPath, String newPath) { 
		try { 
		int bytesum = 0; 
		int byteread = 0; 
		File oldfile = new File(oldPath); 
		if (oldfile.exists()) { //文件存在时 
		InputStream inStream = new FileInputStream(oldPath); //读入原文件 
		FileOutputStream fs = new FileOutputStream(newPath); 
		byte[] buffer = new byte[1444]; 
		int length; 
		while ( (byteread = inStream.read(buffer)) != -1) { 
		bytesum += byteread; //字节数 文件大小 
		System.out.println(bytesum); 
		fs.write(buffer, 0, byteread); 
		} 
		inStream.close(); 
		} 
		} 
		catch (Exception e) { 
		System.out.println("复制单个文件操作出错"); 
		e.printStackTrace();
		}
		}
	
	
	
	
	
	
	
	
	
	

	@RequestMapping(value = "/backstage/Html_Portal.do", method = RequestMethod.GET)
	public  String  PageHtml_portal(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
	//	h.GeneratorPortal();
		// this index  is  ajax   
		map.put("info","恭喜，生成频道首页成功！");
		tlst=itemService.ItemList();
		map.put("lst",tlst);
		return "/module/backstage/SetHtml";
	}
	
//  生成sitemap	
	@RequestMapping(value = "/backstage/sitemaphtml.do", method = RequestMethod.GET)
	public  String  PageHtml1_portal(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		h.GeneratorSitemap();
		map.put("info","恭喜，生成站点地图成功！");
		tlst=itemService.ItemList();
		map.put("lst",tlst);
		return "/module/backstage/SetHtml";
	}
	
//	生成频道首页
	@RequestMapping(value = "/backstage/Html_Item.do", method = RequestMethod.GET)
	public  String  PageHtml_Item(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		
		String dir=request.getParameter("dir");
		
		Log.error("操作", "生成频道首页html静态页"+dir);
		h.GeneratorItem(dir);
		Item ite = itemService.GetItem(dir);
		
		map.put("info","恭喜，生成频道 - "+ite.getItem_name()+" -首页成功！");
		tlst=itemService.ItemList();
		map.put("lst",tlst);
		return "/module/backstage/SetHtml";
	}
	
//	生成栏目页 及栏目列表

	@RequestMapping(value = "/backstage/Html_Item_Cate.do", method = RequestMethod.GET)
	public  void  PageHtml_Cate(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String dir=request.getParameter("dir");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String ss="";
		tlst=itemService.ItemCate(dir);
		int k ;
		for(int i=0;i<tlst.size();i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(tlst).get(i);
			String pdir = ob.getString("pdir");
			String  dirs = ob.getString("catedirectory") ;
			String fdir ;
			if(pdir.equals(dir)){
				fdir = dir+"/" + dirs;
				System.out.println("二级目录:"+fdir);
			}else{
				fdir = dir+"/" + pdir+"/"+ dirs;
				System.out.println("三级级目录:"+fdir);
			}	
			int pagesize =specialService.SpecialPageSize(dirs);
			k = itemService.CatePage(dirs, pagesize) ;	
			if(k==0){k=1;}
			for(int j=1;j<k+1;j++){
				ss="生成栏目页"+fdir+"/list_"+j+".html完成";	
		    h.GeneratorItemCate(fdir, j);
	    	out.println("<script>document.write('<div>"+ss+"</div>');</script>");
	        out.flush();
			} 
		}
		out.println(" <script> document.write('恭喜，栏目页完成');</script>");
//    	out.println("</script>");
        out.flush();
	}
		
//	生成内容页
	@RequestMapping(value = "/backstage/Html_Item_Content.do", method = RequestMethod.GET)
	public void  PageHtml_Content(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String dir=request.getParameter("dir");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String ss="";
//		频道下文章列表 然后for循环生成
		tlst=itemService.ItemCateArticleHtml(dir);
		int a=0;
		String n="";
		for(int i=0;i<tlst.size();i++){
			
			if(a==0){
				a++ ;
				n=a+i+"";
				out.println("<script> document.write('<div id=\""+n+"\">');</script>");
			}
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(tlst).get(i);
			String pdir = ob.getString("pdir");
			String dirs = ob.getString("catedirectory") ;
			String fdir ;
			int articleid=ob.getInt("articleid");
			if(pdir.equals(dir)){
				fdir = dir+"/" + dirs;
				System.out.println("二级目录:"+fdir+"/"+articleid);
			}else{
				fdir = dir+"/" + pdir+"/"+ dirs;
				System.out.println("三级级目录:"+fdir+"/"+articleid);
			}
			ss="生成文章页"+fdir+"/article_"+articleid+".html完成";
		    h.GeneratorItemCateArticle(fdir, articleid);

			out.println("<script> document.write('<div id=\"123\">"+ss+"</div>');</script>");
	    	if((i+1)%25==0){
	    		a=0;
	    		out.println("<script> document.write('</div>');</script>");
	    		out.println(" <script> function tb(v) {     var a=  document.getElementById(\""+n+"\");    a.style.display='none';    } </script>");
	    		out.println(" <script> tb('ffffff')  ;</script>");
	    	}else{
	    	
	    	}
	    	out.flush();    
		}

    	out.println(" <script> document.write('恭喜，文章内容页完成');</script>");
    	out.flush();
    	out.close();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	生成专题首页                                                
	@RequestMapping(value = "/backstage/Html_Item_Topic.do", method = RequestMethod.GET)
	public  void PageHtml_topic(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String dir=request.getParameter("dir");
		Item ite = itemService.GetItem(dir);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		h.GeneratorTopic(dir);
		out.println("<script>");
    	out.println("document.write('恭喜，生成专题首页完成');");
    	out.println("</script>");
        out.flush();
	}	
	
	
	
	
	
	
	
//	生成专题封面首页
	@RequestMapping(value = "/backstage/Html_Item_Cover.do", method = RequestMethod.GET)
	public  void  PageHtml_cover(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String dir=request.getParameter("dir");
		List topicList = topicService.TopicAllList(dir);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String ss="" ;
		for(int i=0;i<topicList.size();i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(topicList).get(i);
			int topicid = Integer.parseInt(ob.getString("topicid")) ;
			h.GeneratorCover(dir, topicid);
			 ss="生成专题封面页/"+dir+"/topiccover_"+topicid+".html";
			 try {
					out.println("<script>");
			    	out.println("document.write('<div>"+ss+"</div>');");
			    	out.println("</script>");
			        out.flush();
					Thread.sleep(100);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		out.println("<script>");
    	out.println("document.write('恭喜，生成封面页完成');");
    	out.println("</script>");
        out.flush();
	}
	
	
	
	
	
	
	
	
	
//	生成专题详情首页
//	@RequestMapping(value = "/backstage/Html_Item_CoverDetail.do", method = RequestMethod.GET)
//	public  String  PageHtml_coverDetail(ModelMap map, HttpServletResponse response, HttpServletRequest request)
//			throws IOException {
//		String dir=request.getParameter("dir");
//		List topicList = topicService.TopicAllList(dir);
//		String temp="";
//		for(int i=0;i<topicList.size();i++){
//			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(topicList).get(i);
//			int topicid = Integer.parseInt(ob.getString("topicid")) ;
//			temp=dir+"/"+topicid ;
//			List topicArt = articleService.ArticleByTopicId(topicid);
//			h.GeneratorCoverDetail(temp, topicid, topicArt);
//		}
//		map.put("info","恭喜，生成专题详情页成功！");
//		tlst=itemService.ItemList();
//		map.put("lst",tlst);
//		return "/module/backstage/SetHtml";
//	}	
	
	@RequestMapping(value = "/backstage/Html_Item_CoverDetail.do", method = RequestMethod.GET)
	public  void  PageHtml_coverDetail(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String dir=request.getParameter("dir");
		List topicList = topicService.TopicAllList(dir);
		String temp="";
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String ss="" ;
		for(int i=0;i<topicList.size();i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(topicList).get(i);
			int topicid = Integer.parseInt(ob.getString("topicid")) ;
			temp=dir+"/"+topicid ;
			List topicArt = articleService.ArticleByTopicId(topicid);
			h.GeneratorCoverDetail(temp, topicid, topicArt);
			 ss=dir+"生成专题/"+ob.getString("topicname")+"/详情页成功";
			 try {
					out.println("<script>");
			    	out.println("document.write('<div>"+ss+"</div>');");
			    	out.println("</script>");
			        out.flush();
					Thread.sleep(100);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		out.println("<script>");
    	out.println("document.write('恭喜，生成专题详情页完成');");
    	out.println("</script>");
        out.flush();
	}	
	
	
//	生成名字列表页
	@RequestMapping(value = "/backstage/Html_Item_NameList.do", method = RequestMethod.GET)
	public  void  PageHtml_name(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		String dir=request.getParameter("dir");
		int startnameid  =Integer.parseInt(request.getParameter("id"));
		List lst =   nameService.GetNameId(startnameid);
	//	List namelst =   nameService.GetMoreName() ;
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script> document.write('<div>"+lst.size()+"</div>');</script>");
		int size= lst.size() ;
		int nameid  ;
		int n ;
    	String url=SysInfoUtil.getSysInfo().getUrl();
	//	String url="http://127.0.0.1:8080";
		long  startTime = 0 ;
		for(int i=0;i<size;i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(lst).get(i);
			nameid= Integer.parseInt(ob.getString("nameid")) ;
			System.out.println("nameid="+nameid);
			n= nameService.GetNameTotal(nameid)+1 ;
			String temp=h.BasePath("name/"+nameid+"/")  ;
			for(int r=1;r<n;r++){h.GeneratorName(temp,nameid,r,url);}
		}
		out.println(" <script> document.write('恭喜，名字列表页完成');</script>");
    	out.flush();
	}	

//	按照输入id生成分析页
	@RequestMapping(value = "/backstage/Html_Item_NameDetail.do", method = RequestMethod.GET)
	public  void  PageHtml_ndame(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{
//	int  nameId= Integer.parseInt(request.getParameter("id"));
		htmlh() ;
	}	
	
	public   void htmlh(){
		int  maxhtml= nameService.GetNameHtmlMax();
		int nameId = nameService.GetNameIdNoHtml(maxhtml);
		List na =      nameService.GetFullNameById(nameId) ;
		int number =0 ;
		int size= na.size() ;
		int pagesize =500;
		int start ;
		String nameid =nameId+"" ;
		int id ;
		int siz=0;
		String url=SysInfoUtil.getSysInfo().getUrl();
//		String url="http://127.0.0.1:8080";
		long startTime = System.currentTimeMillis(); 
		nameService.SetNameHtmlMax(nameId, 0);
		String dir ="name/"+ nameId +"/" ;
		String  tar =h.BasePath(dir)  ; 
		for(int n=0;n*500<size;n++){
		    start = n * pagesize ;
			List name =    nameService.GetFullNameByIdPage(start, pagesize, nameId) ;
			siz=name.size();
			for(int i=0;i<siz;i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(name).get(i);
				id = Integer.parseInt(ob.getString("id")) ;
				h.GeneratorNameTest(tar,nameid, id ,url);
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
				htmlh() ;
			}
		}
		
		
	}
	
	
	
	
	
	
	
	
	
//	按照输入id生成分析页2
	@RequestMapping(value = "/backstage/Html_Item_NameDetail2.do", method = RequestMethod.GET)
	public  void  PageHtml_ndame2(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{
//	int  nameId= Integer.parseInt(request.getParameter("id"));
		htmlht() ;
	}
	
	
	public   void htmlht(){
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
		//String url="http://127.0.0.1:8080";
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
				ht.GeneratorNameTest(nameid, id ,url);
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
				htmlht() ;
			}
		}
		
	}
	
	
	
	
	
	
	
	

	

//	按照输入id生成分析页3
	@RequestMapping(value = "/backstage/Html_Item_NameDetail3.do", method = RequestMethod.GET)
	public  void  PageHtml_ndame3(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException{
//		int  nameId= Integer.parseInt(request.getParameter("id"));
		 htmlhb() ;
		
	}	

	public   void htmlhb(){
		
		int  maxhtml= nameService.GetNameHtmlMax();
		int nameId = nameService.GetNameIdNoHtml(maxhtml);
		List na =      nameService.GetFullNameById(nameId) ;
		int number =0 ;
		int size=	 na.size() ;
		int pagesize =500;
		int start ;
		String nameid ;
		int id ;
		int siz=0;
		String url=SysInfoUtil.getSysInfo().getUrl();
//		String url="http://127.0.0.1:8080";
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
				hb.GeneratorNameTest(nameid, id ,url);
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
				htmlhb(); 
			}
		}
		
		
		
	}
	
	
	



//	一键生成名字分析页
	@RequestMapping(value = "/backstage/Html_Item_NameAnalyse.do", method = RequestMethod.GET)
	public  void  PageH1tml_name(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		System.out.println("ddd");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();	
		this.SetName();
		out.println(" <script> document.write('恭喜，开始一键生成名字分析页');</script>");
    	out.flush();
	}	
	public   void  SetName(){
		int  maxhtml= nameService.GetNameHtmlMax();
		String url=SysInfoUtil.getSysInfo().getUrl();
		System.out.println( " maxhtml"+maxhtml);
		
		int  nameId=0;
		nameId = nameService.GetNameIdNoHtml(maxhtml);
		System.out.println( " nameId"+nameId);
		List na =      nameService.GetFullNameById(nameId) ;
		int number =0 ;
		int size=	 na.size() ;
		System.out.println(size);
		int pagesize =500;
		int start ;
		int nameid ;
		int id ;
		nameService.SetNameHtmlMax(nameId, 0);
		for(int n=0;n*500<size;n++){
		    start = n * pagesize ;
			List name =    nameService.GetFullNameByIdPage(start, pagesize, nameId) ;
			for(int i=0;i<name.size();i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(name).get(i);
				nameid = Integer.parseInt(ob.getString("nameid")) ;
				id = Integer.parseInt(ob.getString("id")) ;
				hc.GeneratorNameTest(nameid+"", id ,url);
				number ++ ;
			}
		}
		nameService.SetNameHtmlMax(nameId, maxhtml);
		
		if(siteService.GetSite().getAutohtml()==1){
			List  lt =nameService.GetListNoHtml(maxhtml);
			if(lt.size()==0){
				System.out.println("全部生成结束");
			}else{
				SetName(); 
			}
		}	
			
			
		
	}
	
	
	
	
	
	
	
	
	
// 生成标签页		
	@RequestMapping(value = "/backstage/Html_Item_tag.do", method = RequestMethod.GET)
	public  void  PageHtml_tddopic(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String dir=request.getParameter("dir");
		h.GeneratorTagIndex(dir+"/tag");
		out.println("<script>");
    	out.println("document.write('恭喜，生成标签主页完成');");
    	out.println("</script>");
        out.flush();
	}
	
	
	
//生成标签列表页	
	
	@RequestMapping(value = "/backstage/Html_Item_taglist.do", method = RequestMethod.GET)
//	public  String  PageHtml_tospic(ModelMap map, HttpServletResponse response, HttpServletRequest request)
	public   void PageHtml_tospic(ModelMap map, HttpServletResponse response, HttpServletRequest request)throws IOException {
		String dir=request.getParameter("dir");	
		Item m =new Item();
		m=itemService.GetItem(dir);
		List tlst = tagService.GetTagByItemId(m.getItem_id());
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String ss="" ;
		for(int i=0;i<tlst.size();i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(tlst).get(i);
			int id = ob.getInt("tagid");
			 ss=dir+"生成页面/tag/"+id+".html成功";
			h.GeneratorTagList(dir+"/tag", id);
			try {
				out.println("<script>");
		    	out.println("document.write('<div>"+ss+"</div>');");
		    	out.println("</script>");
		        out.flush();
				Thread.sleep(100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		
		out.println("<script>");
    	out.println("document.write('恭喜，生成标签列表完成');");
    	out.println("</script>");
        out.flush();
		
		
		
//		map.put("info","恭喜，生成标签列表也成功！");
//		tlst=itemService.ItemList();
//		map.put("lst",tlst);
//		return "/module/backstage/SetHtml";
	}
	
	
	
	
	@RequestMapping(value ="/backstage/Html_Item_taglist_js.do", method = RequestMethod.GET)
	public void AddCate(ModelMap map, HttpServletResponse response,HttpServletRequest request ) throws IOException{
//		String dir=request.getParameter("dir");	
		String dir="softtest";
		Item m =new Item();
		m=itemService.GetItem(dir);
		List tlst = tagService.GetTagByItemId(m.getItem_id());
	
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();//从response 获取 out流bai
		String ss="" ;
		for(int i=0;i<tlst.size();i++){	
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(tlst).get(i);
			int id = ob.getInt("tagid");
			System.out.println("idddddddddddddddddd="+id);	
			//	h.GeneratorTagList(dir+"/tag", id);
				 ss=dir+"/tag/"+id+".html";
				System.out.println(ss+"\n");	
			try {
				out.println("<script>");
		    	out.println("document.write('<div>"+ss+"</div>');");
		    	out.println("</script>");
		        out.flush();
				Thread.sleep(100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	out.close();

	}
	
	
	

	
	
	
	
	
	
//	实时显示消息到端
	@RequestMapping(value ="/backstage/Html_Item_taglist_js2.do", method = RequestMethod.GET)
	public void AddCddate(ModelMap map, HttpServletResponse response,HttpServletRequest request ) throws IOException{
	response.setContentType("text/html; charset=UTF-8");
	PrintWriter out = response.getWriter();
	while(true){
		    try {
		    	out.println("<script>");
		    	out.println("document.write('<div>输出内容</div>');");
		    	out.println("</script>");
		        out.flush();
		        Thread.sleep(100);
		    } catch (Exception e) {
	        e.printStackTrace();
		    }
	}
	
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@ResponseBody
    @RequestMapping(value="/backstage/Html_Item_taglist_1js.do",produces="text/event-stream;charset=utf-8")
    public   String push() {
		String dir="softtest";
		Item m =new Item();
		m=itemService.GetItem(dir);
		List tlst = tagService.GetTagByItemId(m.getItem_id());
		String ss="" ;
		for(int i=0;i<tlst.size();i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(tlst).get(i);
			int id = ob.getInt("tagid");
			h.GeneratorTagList(dir+"/tag", id);
			 ss="生成"+dir+"/tag/"+id+".html成功";
		}
		return "data:Testing 1,2,3" + ss +"\n\n";	
    }

	
	
	
}
