package com.testsystem.site.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.UserService;
import com.testsystem.article.service.ArticleService;
import com.testsystem.article.service.BlogService;
import com.testsystem.article.service.CateService;
import com.testsystem.article.service.TopicService;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.backstage.service.TagService;
import com.testsystem.backstage.vo.PageList;
import com.testsystem.helper.JsonAndString;
import com.testsystem.name.service.NameService;
import com.testsystem.name.service.NameWapService;
import com.testsystem.name.tools.P;
import com.testsystem.navigation.service.NavService;
import com.testsystem.site.service.SiteService;
import com.testsystem.utils.Log;

import net.sf.json.JSONObject;

@Controller
public class SiteMapController {

	@Autowired
	private ItemService itemService ;
	
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private TagService tagService;
	
	@Autowired
	private TopicService topicService ;
	
	@Autowired 
	private NavService navService ;
	
	@Autowired 
	private CateService cateService ;

	private List commentList;
	@Autowired
	private BlogService blogService;
	
	@Autowired
	private NameService nameService ;
	
	
	
	@Autowired
	private SiteService siteService ;
	
	
	@Autowired
	private NameWapService nameWapService ;
	
//	 sitemap.xml
	@RequestMapping(value ="/sitemap/c.do", method = RequestMethod.GET)
	public String MyArticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
	
		List<String> listStr=new ArrayList<String>();

		listStr.add("/index.html");
		listStr.add("/name/sesx.do");
		listStr.add("/name/wnl/today.do");
		listStr.add("/name/wnl/Wnlscbz.do");
		
		listStr.add("/name/suanming/index.do");
		listStr.add("/name/suanming/indexchenggu.do");
		
		listStr.add("/name/divine/index.do");
		listStr.add("/name/divine/1/index.do");
		listStr.add("/name/divine/3/index.do");
		listStr.add("/name/divine/4/index.do");
		listStr.add("/name/divine/5/index.do");
		listStr.add("/name/divine/6/index.do");
		listStr.add("/name/divine/7/index.do");
		listStr.add("/name/divine/8/index.do");
		listStr.add("/name/divine/9/index.do");
		
		listStr.add("/name/hehun/index.do");
		listStr.add("/name/hehun/benminggua/index.do");
		listStr.add("/name/hehun/lvcai/index.do");
		listStr.add("/name/hehun/shengxiao/index.do");
		listStr.add("/name/hehun/xingzuo/index.do");
		listStr.add("/name/hehun/xuexing/index.do");
		
		listStr.add("/name/hehun/xingzuoxuexing/index.do");
		listStr.add("/name/hehun/shengxiaoxuexing/index.do");
		listStr.add("/name/hehun/xingzuoshengxiao/index.do");
		
		
		listStr.add("/name/number/index.do");
		listStr.add("/name/number/telephone/index.do");
		listStr.add("/name/number/dianhua/index.do");
		listStr.add("/name/number/qq/index.do");
		listStr.add("/name/number/che/index.do");
		 
		listStr.add("/name/zgjm/index.do");
		listStr.add("/name/NameFree.do");
		listStr.add("/name/NameTest.do");
		listStr.add("/name/NameAll.do");
		
		
		
		
		List nt =   nameService.GetAllName() ;
		for(int p=0;p<nt.size();p++){	
			JSONObject n1 = (JSONObject) JsonAndString.ListToJsonArray(nt).get(p);
			int nameid = n1.getInt("nameid");
			listStr.add("/name/"+nameid+"/name.html");
		    P n=	nameService.GetFullNamePageById(nameid, 1);
			for(int r=1;r<n.getTotalPage()+1;r++){
				listStr.add("/name/"+nameid+"/name_"+r+".html");
			}

	    }

		List lt  =	itemService.ItemListShow() ;
	    for(int i=0;i<lt.size();i++){	
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(lt).get(i);
			String  item = ob.getString("item_directorie");
			int  itemid = ob.getInt("item_id");
			listStr.add("/"+item+"/portal.html");
			listStr.add("/"+item+"/topic.html");
			listStr.add("/"+item+"/tag/index.html");
			List t1	=topicService.TopicAllList(item);
			 for(int j=0;j<t1.size();j++){	
					JSONObject o1 = (JSONObject) JsonAndString.ListToJsonArray(t1).get(j);
					String  id = o1.getString("topicid");
					listStr.add("/"+item+"/topiccover_"+id+".html");
//					该专题下的文章页
					this.articletopiclist(listStr, "/"+item+"/"+id+"/", Integer.parseInt(id));
			 }
	  
			List t2 = tagService.GetTagByItemId(itemid);
			for(int n=0;n<t2.size();n++){	
				JSONObject o2 = (JSONObject) JsonAndString.ListToJsonArray(t2).get(n);
				String  id = o2.getString("tagid");
				listStr.add("/"+item+"/tag/"+id+".html");
		    }
			
			List  t3 =  cateService.GetItemCate(item);
			for(int m=0;m<t3.size();m++){	
				JSONObject o3 = (JSONObject) JsonAndString.ListToJsonArray(t3).get(m);
				int  id = o3.getInt("catetype") ;
				int  pagesize =o3.getInt("pagesize");
				String cate=o3.getString("catedirectory");
				String pdir=o3.getString("pdir");
				if(id==5){listStr.add("/"+item+"/"+cate+"/index.html");
				//生成栏目列表
				listStr = this.catelist(listStr, cate,"/"+item+"/"+cate+"/", pagesize);
				}	
				if(id==7){
					listStr.add("/"+item+"/"+pdir+"/"+cate+"/index.html");
					listStr = this.catelist(listStr, cate, "/"+item+"/"+pdir+"/"+cate+"/", pagesize);
				//生成栏目列表	
				}
		    }
			
          //			 缺少文章页	
	    }	
	String xmlurl = "";
	Element urlset = new Element("urlset"); 
	Document document = new Document(urlset);
	System.out.println("一共页面有："+listStr.size());
	int i=1;
	 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
	 String  d =df.format(new Date()) ;
	for (String str : listStr) {
		str= siteService.GetSite().getWww()+str ;
		System.out.println(str+"生成中..."+i);
		i++;
		//<!--必填标签,这是具体某一个链接的定义入口，每一条数据都要用<url>和</url>包含在里面，这是必须的 -->
		Element url = new Element("url");
		//<!--必填,URL链接地址,长度不得超过256字节-->
		Element loc = new Element("loc");
		loc.setText(str);
		url.addContent(loc);
		//<!--可以不提交该标签,用来指定该链接的最后更新时间-->
		Element lastmod = new Element("lastmod");

		lastmod.setText(d);
		url.addContent(lastmod);
		//<!--可以不提交该标签,用这个标签告诉此链接可能会出现的更新频率 -->
		Element changefreq = new Element("changefreq");
		changefreq.setText("daily");
		url.addContent(changefreq);
		//<!--可以不提交该标签,用来指定此链接相对于其他链接的优先权比值，此值定于0.0-1.0之间-->
		Element priority = new Element("priority");
		priority.setText("1.0");
		url.addContent(priority);
		urlset.addContent(url);
	}
	XMLOutputter XMLOut = new XMLOutputter();  
	try {
		Format f = Format.getPrettyFormat();  
		f.setEncoding("UTF-8");//default=UTF-8
		XMLOut.setFormat(f); 
		
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		//String path = "c://sitemap.xml";
		if(webappRoot.contains(":")){
			Log.error("This os  is  windows", webappRoot);	
		}else{
			webappRoot="/"+webappRoot ;
			Log.error("This os  is  liunx", webappRoot);	
		}
		String path = webappRoot+"/map/sitemap.xml" ;
		System.out.println(path);

		XMLOut.output(document, new FileOutputStream(path));
	} catch (Exception e) {  
		e.printStackTrace();  
	}
	

	  return  "/module/backstage/TagManage";
		}
	
	
	
	
	
	
	
	public   List<String> catelist(List<String> t ,String cate ,String fil ,int pagesize ){
//		计算出页数
		PageList ls ;
		ls = itemService.ArticleList(cate,1);
		int pages = ls.getPages() ;
		for(int i=1;i<pages+1;i++){
		t.add(fil+"list_"+i+".html");
		}
	   List  ta =	 itemService.ArticleList(cate);	
	   for(int i=0;i<ta.size();i++){
			JSONObject o1 = (JSONObject) JsonAndString.ListToJsonArray(ta).get(i);
			String  id = o1.getString("articleid");
			t.add(fil+"article_"+id+".html");	
		}
		return t;
	}
	
	
	public   List<String> articletopiclist(List<String> t , String fil ,int topicid ){
		List att =articleService.ArticleByTopicId(topicid) ;
			for(int i=0;i<att.size();i++){
				JSONObject o1 = (JSONObject) JsonAndString.ListToJsonArray(att).get(i);
				String  id = o1.getString("articleid");
				t.add(fil+"topic_"+id+".html");	
			}	
		return t;
	}
	
	
//	sitemap_1.xml	
	@RequestMapping(value ="/sitemap/cc.do", method = RequestMethod.GET)
	public void MywAvrticle(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
//		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
		List<String> listStr=new ArrayList<String>();
		int size=  nameService.GetNameTatol() ;
		int number=1;
		int pagesize =250;
		 int start ;
		 int total=0;
		 int page=1;
		 int id ;
		 String nameid ;
		 long  startTime = 0 ;
		 String  www=siteService.GetSite().getWww() ;
		 String  d = "" ;
		 Element urlset = null  ;
		 Document document = null ;
		 int a=0;
		 
			String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
			String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
			if(webappRoot.contains(":")){
			//	Log.error("This os  is  windows", webappRoot);	
			}else{
				webappRoot="/"+webappRoot ;
			//	Log.error("This os  is  liunx", webappRoot);	
			}
			String str ;
		for(int n=0;n*250<size;n++){
			if((number)%10000==1){	
		//	Date date = new Date();
		//	SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		//	System.out.println(dateFormat.format(date)+"no="+number);
			startTime = System.currentTimeMillis(); 
			String xmlurl = "";
			urlset = new Element("urlset"); 
			document = new Document(urlset);
			a=1;
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
			d =df.format(new Date()) ;
			}
		    start = n * pagesize ;
			List name =   nameService.GetNameId(start, pagesize);
			int tt=name.size() ;
			for(int i=0;i<tt;i++){
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(name).get(i);
				 id = ob.getInt("id");
				 nameid=ob.getString("nameid");
				 str= www+"/name/"+nameid+"/"+id+"_N.html"; 
				 number ++ ;
//				 if(a%5000==0){System.out.println(str+"生成中..."+a);}
//					a++;
					Element url = new Element("url");
					Element loc = new Element("loc");
					loc.setText(str);
					url.addContent(loc);
					Element lastmod = new Element("lastmod");
					lastmod.setText(d);
					url.addContent(lastmod);
					Element changefreq = new Element("changefreq");
					changefreq.setText("daily");
					url.addContent(changefreq);
					Element priority = new Element("priority");
					priority.setText("1.0");
					url.addContent(priority);
					urlset.addContent(url);	 
			}
			
			if((number-1)%10000==0){
				// this.AddToXml(listStr ,page );
				XMLOutputter XMLOut = new XMLOutputter();  
				try {
					Format f = Format.getPrettyFormat();  
					f.setEncoding("UTF-8");//default=UTF-8
					XMLOut.setFormat(f); 
					String path = webappRoot+"/map/sitemap_"+page+".xml" ;
				//	System.out.println(path);
					XMLOut.output(document, new FileOutputStream(path));
				} catch (Exception e) {  
					e.printStackTrace();  
				}
				page++;
				//listStr.clear();
				long endTime = System.currentTimeMillis();
			//	Date date = new Date();
			//	SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
				System.out.println("-----程序运行时间：" + (endTime - startTime)  + "s    "+number  ); 
				System.gc();
			}
			
		}	
		

	}
	
	
	
	
	
	
	
	
	public void  AddToXml(List<String> listStr ,int page ){
		
		String xmlurl = "";
		Element urlset = new Element("urlset"); 
		Document document = new Document(urlset);
		int i=1;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		 String  d =df.format(new Date()) ;
		 String  www=siteService.GetSite().getWww() ;
		for (String str : listStr) {
			 str=www +str ;
			if(i%2000==0){System.out.println(str+"生成中..."+i);}
			i++;
			Element url = new Element("url");
			Element loc = new Element("loc");
			loc.setText(str);
			url.addContent(loc);
			Element lastmod = new Element("lastmod");
			lastmod.setText(d);
			url.addContent(lastmod);
			Element changefreq = new Element("changefreq");
			changefreq.setText("daily");
			url.addContent(changefreq);
			Element priority = new Element("priority");
			priority.setText("1.0");
			url.addContent(priority);
			urlset.addContent(url);
		}
		XMLOutputter XMLOut = new XMLOutputter();  
		try {
			Format f = Format.getPrettyFormat();  
			f.setEncoding("UTF-8");//default=UTF-8
			XMLOut.setFormat(f); 
			String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
			String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
			if(webappRoot.contains(":")){
			//	Log.error("This os  is  windows", webappRoot);	
			}else{
				webappRoot="/"+webappRoot ;
			//	Log.error("This os  is  liunx", webappRoot);	
			}
			String path = webappRoot+"/map/sitemap_"+page+".xml" ;
			System.out.println(path);
			XMLOut.output(document, new FileOutputStream(path));
		} catch (Exception e) {  
			e.printStackTrace();  
		}
		
	}
	
	
//	sitemap 索引页
	@RequestMapping(value ="/sitemap/ccc.do", method = RequestMethod.GET)
	public String MyAddrticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
	
		List<String> listStr=new ArrayList<String>();
		listStr.add("/map/sitemap.xml");
		listStr.add("/map/wapmap.xml");
		int size=  nameService.GetNameTatol() ;
		int pa = ( size / 10000  )+1 ;
		for(int i=1;i<pa+1;i++){
			listStr.add("/map/sitemap_"+i+".xml");	
		}
		
	String xmlurl = "";
	Element sitemapindex = new Element("sitemapindex"); 
	Document document = new Document(sitemapindex);
	System.out.println("一共页面有："+listStr.size());
	int i=1;
	 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
	 String  d =df.format(new Date()) ;
//	 System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
	
	
	for (String str : listStr) {
		str= siteService.GetSite().getWww()+str ;
		System.out.println(str+"生成中..."+i);
		i++;
		//<!--必填标签,这是具体某一个链接的定义入口，每一条数据都要用<url>和</url>包含在里面，这是必须的 -->
		Element url = new Element("url");
		//<!--必填,URL链接地址,长度不得超过256字节-->
		Element loc = new Element("loc");
		loc.setText(str);
		url.addContent(loc);
		//<!--可以不提交该标签,用来指定该链接的最后更新时间-->
		Element lastmod = new Element("lastmod");

		lastmod.setText(d);
		url.addContent(lastmod);
		sitemapindex.addContent(url);
	}
	XMLOutputter XMLOut = new XMLOutputter();  
	try {
		Format f = Format.getPrettyFormat();  
		f.setEncoding("UTF-8");//default=UTF-8
		XMLOut.setFormat(f); 
		
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		if(webappRoot.contains(":")){
			Log.error("This os  is  windows", webappRoot);	
		}else{
			webappRoot="/"+webappRoot ;
			Log.error("This os  is  liunx", webappRoot);	
		}
		String path = webappRoot+"/sitemap.xml" ;
		System.out.println(path);
		
		XMLOut.output(document, new FileOutputStream(path));
	} catch (Exception e) {  
		e.printStackTrace();  
	}
	

	  return  "/module/backstage/TagManage";
		}
	
	
	
	
	
	
	
	
	
	
	/****
	 * 
	 * 
	 *  频道 不含特殊定制的 
	 * 
	 * 
	 */
	
	
	@RequestMapping(value ="/sitemap/itemmap.do", method = RequestMethod.GET)
	public String MyArticdle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		List<String> listStr=new ArrayList<String>();
		listStr.add("/index.html");
		List lt  =	itemService.ItemList() ;
	    for(int i=0;i<lt.size();i++){	
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(lt).get(i);
			String  item = ob.getString("item_directorie");
			int  itemid = ob.getInt("item_id");
			listStr.add("/"+item+"/portal.html");
			listStr.add("/"+item+"/topic.html");
			listStr.add("/"+item+"/tag/index.html");
			List t1	=topicService.TopicAllList(item);
			 for(int j=0;j<t1.size();j++){	
					JSONObject o1 = (JSONObject) JsonAndString.ListToJsonArray(t1).get(j);
					String  id = o1.getString("topicid");
					listStr.add("/"+item+"/topiccover_"+id+".html");
//					该专题下的文章页
					this.articletopiclist(listStr, "/"+item+"/"+id+"/", Integer.parseInt(id));
			 }
	  
			List t2 = tagService.GetTagByItemId(itemid);
			for(int n=0;n<t2.size();n++){	
				JSONObject o2 = (JSONObject) JsonAndString.ListToJsonArray(t2).get(n);
				String  id = o2.getString("tagid");
				listStr.add("/"+item+"/tag/"+id+".html");
		    }
			
			List  t3 =  cateService.GetItemCate(item);
			for(int m=0;m<t3.size();m++){	
				JSONObject o3 = (JSONObject) JsonAndString.ListToJsonArray(t3).get(m);
				int  id = o3.getInt("catetype") ;
				int  pagesize =o3.getInt("pagesize");
				String cate=o3.getString("catedirectory");
				String pdir=o3.getString("pdir");
				if(id==5){listStr.add("/"+item+"/"+cate+"/index.html");
				//生成栏目列表
				listStr = this.catelist(listStr, cate,"/"+item+"/"+cate+"/", pagesize);
				}	
				if(id==7){
					listStr.add("/"+item+"/"+pdir+"/"+cate+"/index.html");
					listStr = this.catelist(listStr, cate, "/"+item+"/"+pdir+"/"+cate+"/", pagesize);
				//生成栏目列表	
				}
		    }
			
          //			 缺少文章页	
	    }	
	String xmlurl = "";
	Element urlset = new Element("urlset"); 
	Document document = new Document(urlset);

	System.out.println("一共页面有："+listStr.size());
	int i=1;
	
	 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
   
	 String  d =df.format(new Date()) ;
//	 System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
	for (String str : listStr) {
		str= siteService.GetSite().getWww()+str ;
		System.out.println(str+"生成中..."+i);
		i++;
		//<!--必填标签,这是具体某一个链接的定义入口，每一条数据都要用<url>和</url>包含在里面，这是必须的 -->
		Element url = new Element("url");
		//<!--必填,URL链接地址,长度不得超过256字节-->
		Element loc = new Element("loc");
		loc.setText(str);
		url.addContent(loc);
		//<!--可以不提交该标签,用来指定该链接的最后更新时间-->
		Element lastmod = new Element("lastmod");

		lastmod.setText(d);
		url.addContent(lastmod);
		//<!--可以不提交该标签,用这个标签告诉此链接可能会出现的更新频率 -->
		Element changefreq = new Element("changefreq");
		changefreq.setText("daily");
		url.addContent(changefreq);
		//<!--可以不提交该标签,用来指定此链接相对于其他链接的优先权比值，此值定于0.0-1.0之间-->
		Element priority = new Element("priority");
		priority.setText("1.0");
		url.addContent(priority);
		urlset.addContent(url);
	}
	XMLOutputter XMLOut = new XMLOutputter();  
	try {
		Format f = Format.getPrettyFormat();  
		f.setEncoding("UTF-8");//default=UTF-8
		XMLOut.setFormat(f); 
		
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		//String path = "c://sitemap.xml";
		if(webappRoot.contains(":")){
			Log.error("This os  is  windows", webappRoot);	
		}else{
			webappRoot="/"+webappRoot ;
			Log.error("This os  is  liunx", webappRoot);	
		}
		
		
		String path = webappRoot+"/sitemap.xml" ;
		System.out.println(path);
		
		XMLOut.output(document, new FileOutputStream(path));
	} catch (Exception e) {  
		e.printStackTrace();  
	}
	

	  return  "/module/backstage/TagManage";
		}
	
	
	
	
	
	
	
	
	
	
	
//	telephone sitemap
	@RequestMapping(value ="/sitemap/sjmap.do", method = RequestMethod.GET)
	public String MyArtgyicle(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		List<String> listStr=new ArrayList<String>();
		listStr.add("/name/sj/index.do");
		listStr.add("/name/sj/NameFree.do");
		listStr.add("/name/sj/NameTest.do");
		List nt =   nameService.GetAllName() ;
		for(int p=0;p<nt.size();p++){	
			JSONObject n1 = (JSONObject) JsonAndString.ListToJsonArray(nt).get(p);
			int nameid = n1.getInt("nameid");
			int f =nameWapService.GetSjNameTotal(600, nameid)+1;
			for(int v=1;v<f;v++){
				listStr.add("/name/sj/"+nameid+"_"+v+".do");	
			}
	    }
		String xmlurl = "";
		Element urlset = new Element("urlset"); 
		Document document = new Document(urlset);
		System.out.println("一共页面有："+listStr.size());
		int i=1;
		 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		 String  d =df.format(new Date()) ;
		for (String str : listStr) {
			str= siteService.GetSite().getWww()+str ;
			System.out.println(str+"生成中..."+i);
			i++;
			Element url = new Element("url");
			Element loc = new Element("loc");
			loc.setText(str);
			url.addContent(loc);
			Element lastmod = new Element("lastmod");
			lastmod.setText(d);
			url.addContent(lastmod);
			Element changefreq = new Element("changefreq");
			changefreq.setText("daily");
			url.addContent(changefreq);

			Element priority = new Element("priority");
			priority.setText("1.0");
			url.addContent(priority);
			urlset.addContent(url);
		}
		XMLOutputter XMLOut = new XMLOutputter();  
		try {
			Format f = Format.getPrettyFormat();  
			f.setEncoding("UTF-8");//default=UTF-8
			XMLOut.setFormat(f); 
			String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
			String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
			if(webappRoot.contains(":")){
				Log.error("This os  is  windows", webappRoot);	
			}else{
				webappRoot="/"+webappRoot ;
				Log.error("This os  is  liunx", webappRoot);	
			}
			String path = webappRoot+"map/wapmap.xml" ;
			System.out.println(path);
			XMLOut.output(document, new FileOutputStream(path));
		} catch (Exception e) {  
			e.printStackTrace();  
		}
		  return  "/module/backstage/TagManage";
	}
	
	
	
	
	
	
	
	
	
}