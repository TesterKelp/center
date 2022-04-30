package com.testsystem.backstage.controller;

import java.io.File;
import java.io.IOException;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.UserService;
import com.testsystem.admin.utils.UserUtil;
import com.testsystem.admin.vo.Member;
import com.testsystem.admin.vo.User;
import com.testsystem.article.service.ArticleService;
import com.testsystem.article.service.BlogService;
import com.testsystem.article.service.CateService;
import com.testsystem.article.service.TopicService;
import com.testsystem.article.vo.Article;
import com.testsystem.article.vo.Cate;
import com.testsystem.article.vo.Topic;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.backstage.service.TagService;
import com.testsystem.backstage.vo.Item;
import com.testsystem.backstage.vo.PageList;
import com.testsystem.backstage.vo.Tag;
import com.testsystem.helper.Cookies;
import com.testsystem.helper.JsonAndString;
import com.testsystem.navigation.service.NavService;
import com.testsystem.navigation.vo.Udate;
import com.testsystem.site.service.SiteService;
import com.testsystem.site.vo.Site;
import com.testsystem.utils.Constants;

import net.sf.json.JSONObject;

@Controller
public class ItemController {

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
	private UserService userService ;
	
	@Autowired
	private SiteService siteService ;
	
	
	
	private List moduleList;
	private List lst ;
	private List menuList ;
	private List mList ;
	private List tagLst ;
	private List topicList ;
	String address="default";
	String kuo="do" ;
	
		
	/**
	 * -------------------------------------------------	文章系统后台  -------------------------------------------------
	 *   文章系统后台
	 *
	 */
	
	@RequestMapping(value ="/backstage/ItemList.do", method = RequestMethod.GET)
	public void MyArticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		lst=itemService.ItemList();
		String  jsonstr =  JsonAndString.ListToJsonToString(lst);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/backstage/ItemManage.do", method = RequestMethod.GET)
	public String GetTrasks(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		return  "/module/backstage/ItemManage";
	}
	
	@RequestMapping(value ="/backstage/ItemCreate.do", method = RequestMethod.GET)
	public String ItemCreate(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		List lst = GetTemplate() ;
		map.put("tlst", lst) ;
		return  "/module/backstage/ItemCreate";
	}
	@RequestMapping(value ="/backstage/SaveItem.do", method = RequestMethod.POST)
	public void SaveItem(ModelMap map, HttpServletResponse response, HttpServletRequest request ,Item item) throws IOException{
		item.setItem_userid(UserUtil.getCurrentUserinfo().getUserid());
		Format format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		item.setItem_time(format.format(new Date()));
		itemService.SaveItem(item);
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	
	
	
	
		@RequestMapping(value ="/backstage/AlterItem.do", method = RequestMethod.POST)
		public void AlterItem(ModelMap map, HttpServletResponse response, HttpServletRequest request ,Item item) throws IOException{
			item.setItem_userid(UserUtil.getCurrentUserinfo().getUserid());
			Format format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			item.setItem_time(format.format(new Date()));
			itemService.AlterItem(item);
			response.getWriter().write("ok");
			response.getWriter().flush();
		}
	
	
	
	
	
	@RequestMapping(value ="/backstage/{item}/ItemEdit.do", method = RequestMethod.GET)
	public String ItemEdit(ModelMap map, HttpServletResponse response,HttpServletRequest request, @PathVariable String item ) throws IOException{	
		Item m =new Item();
		m=itemService.GetItem(item);
		List lst = GetTemplate() ;
		map.put("m", m) ;
		map.put("tlst", lst) ;
		return  "/module/backstage/ItemEdit";
	}
	
	public List  GetTemplate(){
	
		List<String> files = new ArrayList<String>();
		List<String> directorys = new ArrayList<String>();
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");		
		String path=webappRoot+"/template" ;
        File file = new File(path);
        File[] tempList = file.listFiles();
        for (int i = 0; i < tempList.length; i++) {
            if (tempList[i].isFile()) {
                files.add(tempList[i].toString());
                //文件名，不包含路径
                //String fileName = tempList[i].getName();
            }
            if (tempList[i].isDirectory()) {
                //这里就不递归了，
            	System.out.println(tempList[i].getName());
            	directorys.add(tempList[i].getName());
            }
        }
		return directorys;
	}
	
	
	
	
	@RequestMapping(value ="/backstage/TopicList.do", method = RequestMethod.GET)
	public void Topice(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		lst=itemService.TopicList();
		String  jsonstr =  JsonAndString.ListToJsonToString(lst);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/backstage/TopicManage.do", method = RequestMethod.GET)
	public String TopicManage(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		return  "/module/backstage/TopicManage";
	}
	
	
	
	
	
	
	/**
	 * ------------------------------------------------- 文章系统前台  -------------------------------------------------
	 *  文章系统前台
	 *
	 */
	
	//zhuanti
	@RequestMapping(value ="/{item}/topic.do", method = RequestMethod.GET)
	public String GedddddtTrasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item) throws IOException{	
		System.out.println("item==================================="+item);
		//根据id 取出不同的频频道地址	
		kuo		   = itemService.ItemHtmlorDo(item);
		menuList   = itemService.ArticleItemCate(item)  ;
		moduleList = itemService.ItemAllArticle(item);
		address    = itemService.ItemList(item) ;
		Site site =siteService.GetSite();
		map.put("site",site);
		
		topicList = topicService.TopicAllList(item);
		System.out.println("topic:"+topicList );
		map.put("topicList",topicList);
		
		Item m =new Item();
		m=itemService.GetItem(item);
		map.put("m", m) ;
		
		map.put("clst",moduleList);
		map.put("menuList",menuList);
		map.put("item",item);
		map.put("kuo", kuo);
		return  "/template/"+address+"/topic";
	}
	
	@RequestMapping(value ="/{item}/topiccover_{id}.do", method = RequestMethod.GET)
	public String MyTpic(Topic topic ,@PathVariable String item ,@PathVariable int id ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		address    = itemService.ItemList(item) ;
		menuList   = itemService.ArticleItemCate(item)  ;
		Site site =siteService.GetSite();
		map.put("site",site);
		Item m=itemService.GetItem(item);
		map.put("m", m) ;
		
		map.put("kuo", kuo);
		map.put("item",item);
		map.put("menuList",menuList);
    	topic=	topicService.GetTopicById(id) ;
		map.put("topic",topic);
		
		Member member =userService.GetMemberByUserId(topic.getUserid());
		map.put("member",member);

		topicList = articleService.ArticleByTopicId(topic.getTopicid()) ;	
		map.put("topicList",topicList);
		System.out.println("topic:"+topicList );
		return "/template/"+address+"/"+topic.getTemplatecover();
	}
	
	
	@RequestMapping(value ="/{item}/{topicid}/topic_{id}.do", method = RequestMethod.GET)
	public String MyTpiqc(Topic topic ,@PathVariable String item ,@PathVariable int id ,@PathVariable int topicid ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		Site site =siteService.GetSite();
		map.put("site",site);
		menuList   = itemService.ArticleItemCate(item)  ;
		Item m	=itemService.GetItem(item);
		Article article =articleService.ArticleById(id) ;	
    	topic=	topicService.GetTopicById(topicid) ;
		Member member =userService.GetMemberByUserId(topic.getUserid());
		topicList = articleService.ArticleByTopicId(topic.getTopicid());
		
		map.put("item",item);  //  可以弃用
		map.put("m", m) ;
		map.put("menuList",menuList);
		map.put("article",article);
		map.put("topic",topic);
		map.put("member",member);
		map.put("topicList",topicList);

		return "/template/"+m.getItem_template()+"/"+topic.getTemplatedetail();
	}
	
	

	
//	  频道门户页
	@RequestMapping(value ="/{item}/portal.do", method = RequestMethod.GET)
	public String GeddtTrasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item) throws IOException{	
		System.out.println("item==================================="+item);
		Site site =siteService.GetSite();
		map.put("site",site);
		kuo		   = itemService.ItemHtmlorDo(item);
		menuList   = itemService.ArticleItemCate(item)  ;
		moduleList = itemService.ItemAllArticle(item);
		address    = itemService.ItemList(item) ;
		List Flst  = itemService.FuLi() ;
		List tagLst= tagService.ItemTag(item);
		topicList = topicService.TopicAllList(item);
		System.out.println("topic:"+topicList );
		System.out.println("artile totali:"+moduleList.size());
		Item m =new Item();
		m=itemService.GetItem(item);
		System.out.println("item:"+m.getItem_name()+m.getKeyword());
		int islogin;
		if(UserUtil.getCurrentUser() == null) {
			islogin  =0 ; 
		}else{
			islogin  =1; 
		}
		map.put("m", m) ;
		
		map.put("islogin",islogin);
		map.put("topicList",topicList);
		map.put("clst",moduleList);
		map.put("menuList",menuList);
		map.put("Flst",Flst);
		map.put("tagLst",tagLst);
		map.put("item",item);
		map.put("kuo", kuo);
		return  "/template/"+address+"/portal";
	}
	
//	  频道门户页作为站点首页
	@RequestMapping(value ="/{item}/index.do", method = RequestMethod.GET)
	public String GeddtTreasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item) throws IOException{	
		System.out.println("item==================================="+item);
		Site site =siteService.GetSite();
		map.put("site",site);
		kuo		   = itemService.ItemHtmlorDo(item);
		menuList   = itemService.ArticleItemCate(item)  ;
		moduleList = itemService.ItemAllArticle(item);
		address    = itemService.ItemList(item) ;
		List Flst  = itemService.FuLi() ;
		List tagLst= tagService.ItemTag(item);
		topicList = topicService.TopicAllList(item);
		System.out.println("topic:"+topicList );
		System.out.println("artile totali:"+moduleList.size());
		Item m =new Item();
		m=itemService.GetItem(item);
		System.out.println("item:"+m.getItem_name()+m.getKeyword());
		int islogin;
		if(UserUtil.getCurrentUser() == null) {
			islogin  =0 ; 
		}else{
			islogin  =1; 
		}
		map.put("m", m) ;
		map.put("islogin",islogin);
		map.put("topicList",topicList);
		map.put("clst",moduleList);
		map.put("menuList",menuList);
		map.put("Flst",Flst);
		map.put("tagLst",tagLst);
		map.put("item",item);
		map.put("kuo", kuo);
		return  "/template/"+address+"/portal";
	}	
	
	
	
//	  频道门户页
	@RequestMapping(value ="/{item}/portal2.do", method = RequestMethod.GET)
	public String GeddtTrasbddks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item) throws IOException{	
		System.out.println("item==================================="+item);
		
		kuo		   = itemService.ItemHtmlorDo(item);
		menuList   = itemService.ArticleItemCate(item)  ;
		moduleList = itemService.ItemAllArticle(item);
		address    = itemService.ItemList(item) ;
		List Flst  = itemService.FuLi() ;
		List tagLst= tagService.ItemTag(item);
		topicList = topicService.TopicAllList(item);
		System.out.println("topic:"+topicList );
		System.out.println("artile totali:"+moduleList.size());
		Item m =new Item();
		m=itemService.GetItem(item);
		System.out.println("item:"+m.getItem_name()+m.getKeyword());
		int islogin;
		if(UserUtil.getCurrentUser() == null) {
			islogin  =0 ; 
		}else{
			islogin  =1; 
		}
		map.put("m", m) ;
		
		map.put("islogin",islogin);
		map.put("topicList",topicList);
		map.put("clst",moduleList);
		map.put("menuList",menuList);
		map.put("Flst",Flst);
		map.put("tagLst",tagLst);
		map.put("item",item);
		map.put("kuo", kuo);
		return  "/template/"+address+"/portal2";
	}
	
	
	
//	  栏目主页  (已经废弃改为了 频道门户)
	@RequestMapping(value ="/{item}/index.do", method = RequestMethod.GET)
	public String GeddtddTrasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item) throws IOException{	
		
		
		System.out.println("item==================================="+item);
		kuo		   = itemService.ItemHtmlorDo(item);
		menuList   = itemService.ArticleItemCate(item)  ;
		moduleList = itemService.ItemAllArticle(item);
		address    = itemService.ItemList(item) ;
		
		map.put("clst",moduleList);
		map.put("menuList",menuList);
		map.put("item",item);
		map.put("kuo", kuo);
		return  "/template/"+address+"/index";
	}
	
//	分类列表主页
	@RequestMapping(value ="/{item}/{cate}/index.do", method = RequestMethod.GET)
	public String GeddtTtrdasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item,@PathVariable String cate) throws IOException{	
//		先判断是分类页 还是有栏目的分类页  有栏目分类页显示  index  即频道主页。如果没有子栏目 自己显示列表页第一页 
		Site site =siteService.GetSite();
		map.put("site",site);
		
		System.out.println("目录="+cate ); 
		 Cate k=new Cate();
			k=cateService.CateInfo(cate);
			 System.out.println("目录ming="+k.getCatename() ); 
		if(itemService.HaveSubCate(cate)){
			
			kuo		   = itemService.ItemHtmlorDo(item);
			menuList   = itemService.ArticleItemCate(item);
			moduleList = itemService.ItemCateSubArticle(cate);
			mList      = itemService.ItemCateSub(cate);
			System.out.println("menuList="+menuList);
			System.out.println("mList="+mList);
			System.out.println("moduleList="+moduleList);
			List tagLst= tagService.CateTag(cate);
			map.put("tagLst",tagLst);
			address    = itemService.ItemList(item) ;
			Item m =new Item();
			m=itemService.GetItem(item);
			map.put("m", m) ;
			map.put("c", k) ;
			map.put("mList",mList);
			map.put("clst",moduleList);
			map.put("menuList",menuList);
			map.put("item",item);
			map.put("cate", cate);
			map.put("kuo", kuo);
			return  "/template/"+address+"/"+k.getListtemplate();
			
		}else{
			
		  	PageList ls ;
//			lst = itemService.ArticleList(cate);
			ls = itemService.ArticleList(cate,1); //fen ye
		   String catename =itemService.ItemCateName(cate);
		   System.out.println("catename="+catename);
			List tagLst= tagService.CateTag(cate);
			map.put("tagLst",tagLst);
		    map.put("pageNum",ls.getPageNum());
		    map.put("pages",ls.getPages());
		    map.put("totalRecord",ls.getTotalRecord());
		    System.out.println("ppppppppppppppppppppppppppppppppppp:"+ls.getList());
		    map.put("lst",ls.getList());
		    kuo=itemService.ItemHtmlorDo(item);
			menuList = itemService.ArticleItemCate(item);
			map.put("menuList",menuList);
		    address =itemService.ItemList(item) ;
			Item m =new Item();
			m=itemService.GetItem(item);
			k=cateService.CateInfo(cate);
			map.put("m", m) ;
			map.put("c", k) ;
		    map.put("item",item);
		    map.put("kuo", kuo);
		    map.put("catename", catename);
		    map.put("cate", cate) ;
			return  "/template/"+address+"/"+k.getListtemplate();
			
		}
		
		
		

	}	
	
		
	
//	分类列表页2级
	@RequestMapping(value ="/{item}/{cate}/list_{id}.do", method = RequestMethod.GET)
	public String GeddtTrdasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item,@PathVariable String cate,@PathVariable int id) throws IOException{	
		Site site =siteService.GetSite();
		map.put("site",site);
		
		int pageNum = id;
	  	PageList ls ;
		Item m =new Item();
		m=itemService.GetItem(item);
		map.put("m", m) ;
		 Cate k=new Cate();
		k=cateService.CateInfo(cate);
		System.out.println("moban=============="+k.getListtemplate());
		
		map.put("c", k) ;
//		lst = itemService.ArticleList(cate);
		ls = itemService.ArticleList(cate,id); //fen ye
	   String catename =itemService.ItemCateName(cate);
	   System.out.println("catename="+catename);
		List tagLst= tagService.CateTag(cate);
		map.put("tagLst",tagLst);
	    map.put("pageNum",ls.getPageNum());
	    map.put("pages",ls.getPages());
	    map.put("lst",ls.getList());
	    map.put("totalRecord",ls.getTotalRecord());
	    kuo=itemService.ItemHtmlorDo(item);
		menuList = itemService.ArticleItemCate(item);
		map.put("menuList",menuList);
		//根据id 取出不同的频频道地址	
	    address =itemService.ItemList(item) ;
	    map.put("item",item);
	    map.put("kuo", kuo);
	    map.put("catename", catename);
	    map.put("cate", cate) ;
		return  "/template/"+address+"/"+k.getListtemplate() ;
	}
	
//	分类列表页3级
	@RequestMapping(value ="/{item}/{cate}/{cat}/list_{id}.do", method = RequestMethod.GET)
	public String GeddtTrdfasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item,@PathVariable String cate,@PathVariable String cat,@PathVariable int id) throws IOException{	
		 Cate k=new Cate();
		k=cateService.CateInfo(cat);
		map.put("c", k) ;
		int pageNum = id;
		
		Item m =new Item();
		m=itemService.GetItem(item);
		map.put("m", m) ;
		Site site =siteService.GetSite();
		map.put("site",site);
	  	PageList ls ;
//		lst = itemService.ArticleList(cate);
//		ls = itemService.ArticleList(cat,id); //fen ye
		ls =itemService.SubCateArticleList(cat, id);
	   String catename =itemService.ItemCateName(cat);
	   String lanmuname =itemService.ItemCateName(cate);
	   System.out.println("catename="+catename);
	   
	    map.put("pageNum",ls.getPageNum());
	    map.put("pages",ls.getPages());
	    map.put("lst",ls.getList());
	    map.put("totalRecord",ls.getTotalRecord());
	    kuo=itemService.ItemHtmlorDo(item);
		menuList = itemService.ArticleItemCate(item);
		map.put("menuList",menuList);
		//根据id 取出不同的频频道地址	
	    address =itemService.ItemList(item) ;
	    map.put("item",item);
	    map.put("kuo", kuo);
	    map.put("catename", catename);
	    map.put("lanmuname", lanmuname);
	    map.put("cate", cate) ;
	    map.put("cat", cat) ;
		return  "/template/"+address+"/"+k.getListtemplate();
	}	
	
	
//	分类列表主页 兼容3级分类页没有index.do 页面
	@RequestMapping(value ="/{item}/{cate}/{cat}/index.do", method = RequestMethod.GET)
	public String GeddtTrdfasbkds(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item,@PathVariable String cate,@PathVariable String cat) throws IOException{	
		Site site =siteService.GetSite();
		map.put("site",site);
		
		int pageNum = 1;
	  	PageList ls ;
		ls =itemService.SubCateArticleList(cat, pageNum);
	   String catename =itemService.ItemCateName(cat);
	   String lanmuname =itemService.ItemCateName(cate);
	   System.out.println("catename="+catename);
	   
	    map.put("pageNum",ls.getPageNum());
	    map.put("pages",ls.getPages());
	    map.put("lst",ls.getList());
	    kuo=itemService.ItemHtmlorDo(item);
		menuList = itemService.ArticleItemCate(item);
		map.put("menuList",menuList);
		//根据id 取出不同的频频道地址	
	    address =itemService.ItemList(item) ;
	    map.put("item",item);
	    map.put("kuo", kuo);
	    map.put("catename", catename);
	    map.put("lanmuname", lanmuname);
	    map.put("cate", cate) ;
	    map.put("cat", cat) ;
	    
	    Cate k=new Cate();
		k=cateService.CateInfo(cat);
		map.put("c", k) ;
		
		Item m =new Item();
		m=itemService.GetItem(item);
		map.put("m", m) ;
		
		return  "/template/"+address+"/"+k.getListtemplate();
	}	
	
	
	
//	分类列表页
	@RequestMapping(value ="/{item}/{cate}/list.do", method = RequestMethod.GET)
	public String GeddtTrdasjbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item,@PathVariable String cate) throws IOException{	
		Site site =siteService.GetSite();
		map.put("site",site);
		lst =itemService.ArticleList(cate);
	   String catename =itemService.ItemCateName(cate);
	   System.out.println("catename="+catename);
	   map.put("catename", catename);
	   kuo=itemService.ItemHtmlorDo(item);
	    map.put("lst",lst);
		menuList = itemService.ArticleItemCate(item);
		map.put("menuList",menuList);
	    address =itemService.ItemList(item) ;
	    map.put("item",item);
	    map.put("kuo", kuo);
		return  "/template/"+address+"/list";
	}
//	文章内容页  https://blog.csdn.net/j15985791987/article/details/54959133
	@RequestMapping(value ="/{item}/{cate}/article_{id}.do", method = RequestMethod.GET)
	public String GeddtTrqdasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item,@PathVariable String cate,@PathVariable int id) throws IOException{	
		Site site =siteService.GetSite();
		map.put("site",site);
		
		int  PreviousId = itemService.GetPreviousId(cate, id);
		int  NextId     = itemService.GetNextId(cate, id) ;
		
		map.put("PreviousId", PreviousId);
		map.put("NextId", NextId);
		
		List taglt  =tagService.GetArticleTag(id);
		map.put("taglt",taglt);
		
		List tlst =itemService.ArticleList(cate);
		map.put("tlst", tlst);

		Article article =articleService.ArticleById(id) ;
		map.put("article",article);
		Member member =userService.GetMemberByUserId(article.getUserid());
		map.put("member",member);
		Cate special = cateService.CateById(article.getCateid());
		map.put("special",special);
		Item m=itemService.GetItem(item);
		map.put("m", m);
		
		
		List blst = itemService.ItemArticleUserBlog(article.getArticleid(),item);
		map.put("blst", blst);
		
		commentList=  blogService.GetComment(article.getArticleid());
		map.put("clst", commentList);
		
		Topic topic =  topicService.GetTopicById(article.getTopicid());
		 map.put("topic",topic);
		
		tagLst =tagService.ArticleTag(id);
		map.put("tagLst",tagLst);

		menuList = itemService.ArticleItemCate(item);
		map.put("menuList", menuList);
		String arttemplate="";
		arttemplate=special.getArticletemplate();
		if(arttemplate==null||arttemplate.equals("")){
			arttemplate="/article";
		}
		
		System.out.println("arttemplate"+arttemplate);
		return "/template/" + m.getItem_template() + arttemplate;
	}
	
//	文章内容页  https://blog.csdn.net/j15985791987/article/details/54959133
	@RequestMapping(value ="/{item}/{cate}/{cat}/article_{id}.do", method = RequestMethod.GET)
	public String GddeddtTrqdasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item,@PathVariable String cate,@PathVariable String cat,@PathVariable int id) throws IOException{	
		System.out.println("id==="+id +"cat=="+cat);
		Site site =siteService.GetSite();
		map.put("site",site);
		
		int  PreviousId = itemService.GetPreviousId(cat, id);
		int  NextId     = itemService.GetNextId(cat, id) ;
		
		map.put("PreviousId", PreviousId);
		map.put("NextId", NextId);
		
		List taglt  =tagService.GetArticleTag(id);
		map.put("taglt",taglt);
		
		Article article =articleService.ArticleById(id) ;
		map.put("article",article);
		Member member =userService.GetMemberByUserId(article.getUserid());
		map.put("member",member);
		Cate special = cateService.CateById(article.getCateid());
		map.put("special",special);
//		special is  article 
		 Cate c2=cateService.CateInfo(cate);
		 map.put("c2", c2);

		 Topic topic =  topicService.GetTopicById(article.getTopicid());
		 map.put("topic",topic);
		 
		 Item m=itemService.GetItem(item);
		 map.put("m", m);
		 
		commentList=  blogService.GetComment(article.getArticleid());
		map.put("clst", commentList);

		List blst = itemService.ItemArticleUserBlog(article.getArticleid(),item);
		map.put("blst", blst);
		
		tagLst =tagService.ArticleTag(id);
		map.put("tagLst",tagLst);

		List tlst =itemService.ArticleList(cat);
		map.put("tlst", tlst);

		menuList = itemService.ArticleItemCate(item);
		map.put("menuList", menuList);
		
		
		String arttemplate="";
		arttemplate=special.getArticletemplate();
		if(arttemplate==null||arttemplate.equals("")){
			arttemplate="/article";
		}
		
		
		return "/template/" + m.getItem_template() + arttemplate;
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/default.do", method = RequestMethod.GET)
	public String Geddt1Trdqdddasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
	
		List to =	topicService.TopicAllList();
		 map.put("to",to); 
	    List	tl=tagService.GetTagAll() ;   
	      map.put("tl",tl); 	
	    List lt =	itemService.ItemList() ;
	    map.put("ltt",lt);
	    lst =	cateService.GetCateList() ;
	    map.put("lst",lst);   
		
	    moduleList = itemService.ArticleList();
	     map.put("clst",moduleList);
	     
	    List rlst = itemService.RecommendArticle() ;
	    map.put("rlst",rlst);
	     Site site =siteService.GetSite();
	     map.put("site",site);
		return  "/default/default";	
	}
	
//	门户页
	@RequestMapping(value ="/index.do", method = RequestMethod.GET)
	public String GeddtTwrdqdddasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		 Site site =siteService.GetSite();
		String itemdir =site.getSingleitem()  ;
//		1.单频道模式   使用default(itemdir ==频道目录)
//		2.windows模式  多频道模式(itemdir  ==100)
//		3.多频道模式   在做个主页  模板	(itemdir ==200)
		System.out.println("itemdir==================================="+itemdir);
		if(itemdir.equals("100")){
			String bg = "/index/bg/win2.jpg" ;
			String temp="";
			List lst = null ;
			int islogin = 0;
			int picmodle = 0 ;
			 String  jsonstr="";
			 Udate udate= new Udate();
			 Subject subject = SecurityUtils.getSubject();
			 System.out.println("subject.isRemembered()==="+subject.isRemembered());
			 System.out.println("subject.isAuthenticated()==="+subject.isAuthenticated());
		        	 if (subject.isRemembered()) {
		        		String  value= Cookies.showCookies("userid", request);
		 	        	System.out.println("记住登录,userid="+value);
		 	        	islogin  =1; 
		 	    		int userid = Integer.parseInt(value);
		 				temp= navService.GetIndexBackGround(userid);
		 				lst = navService.NavList(userid);
		 				 udate =navService.GetUdate(userid) ;
		 				picmodle = navService.GetUdate(userid).getPicmodel();
		 	        }else if (subject.isAuthenticated()){
		 	        	System.out.println("已经登录");
		 	        	islogin  =1; 
		 	    		int a=UserUtil.getCurrentUser().getUserid();
		 				int userid =UserUtil.getCurrentUserinfo().getUserid();
		 			    System.out.println(userid+"fff:"+a);
		 				temp= navService.GetIndexBackGround(userid);
		 				lst = navService.NavList(userid);
		 				udate =navService.GetUdate(userid) ;
		 				picmodle = navService.GetUdate(userid).getPicmodel();
		 	        }else{
		 	        	islogin  =0 ; 
			        	System.out.println("没有登录,没有记住密码");
		 	        }
		        	 System.out.println("picmodle="+picmodle);
		        	 System.out.println("picmodle========"+udate.getPicmodel() +"----------------="+udate.getFileon());
			if(temp==null||temp.equals("")){
				
			}else{
				bg=temp ;
			}
			System.out.println(picmodle+"fff:"+bg);
			map.put("picmodle", picmodle) ;
			map.put("bg", bg) ;
			map.put("udate", udate) ;
			System.out.println(lst);
			map.put("islogin",islogin);
			map.put("lst",lst);
			map.put("site",site);
			return  "/index/index";
			
		}else  if(itemdir.equals("200")){

			List to =	topicService.TopicAllList();
			map.put("to",to); 
		    List	tl=tagService.GetTagAll() ;   
		    map.put("tl",tl); 	
		    List lt =	itemService.ItemList() ;
		    map.put("ltt",lt);
		    lst =	cateService.GetCateList() ;
		    map.put("lst",lst);   
		    moduleList = itemService.ArticleList();
		    map.put("clst",moduleList);
		    map.put("site",site);
			List rlst = itemService.RecommendArticle() ;
			map.put("rlst",rlst);
		     
		     
			return  "/default/default";	

			
		}else {
			String item=itemdir;
			System.out.println("item==================================="+item);
			map.put("site",site);
			kuo		   = itemService.ItemHtmlorDo(item);
			menuList   = itemService.ArticleItemCate(item)  ;
			moduleList = itemService.ItemAllArticle(item);
			address    = itemService.ItemList(item) ;
			List Flst  = itemService.FuLi() ;
			List tagLst= tagService.ItemTag(item);
			topicList = topicService.TopicAllList(item);
			System.out.println("topic:"+topicList );
			System.out.println("artile totali:"+moduleList.size());
			Item m =new Item();
			m=itemService.GetItem(item);
			System.out.println("item:"+m.getItem_name()+m.getKeyword());
			int islogin;
			if(UserUtil.getCurrentUser() == null) {
				islogin  =0 ; 
			}else{
				islogin  =1; 
			}
			map.put("m", m) ;
			map.put("islogin",islogin);
			map.put("topicList",topicList);
			map.put("clst",moduleList);
			map.put("menuList",menuList);
			map.put("Flst",Flst);
			map.put("tagLst",tagLst);
			map.put("item",item);
			map.put("kuo", kuo);
			return  "/template/"+address+"/portal_singleitem";
			
		}
		

	}
	
	
	
	
	
	
//	sitemap主页
	@RequestMapping(value ="/sitemap.do", method = RequestMethod.GET)
	public String GeddtfTrdfasbdkps(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		List to =	topicService.TopicAllList();
		 map.put("to",to); 
	    List	tl=tagService.GetTagAll() ;   
	      map.put("tl",tl); 	
	    List lt =	itemService.ItemList() ;
	       map.put("ltt",lt);
	    lst =	cateService.GetCateList() ;
	     map.put("lst",lst);  
	     Site site =siteService.GetSite(); 
	     map.put("site",site);
	return  "/template/kwz/map/index";
	}	
	
	
	
	

	
//	articleSeach
	@RequestMapping(value ="/{item}/articleSeach.do", method = RequestMethod.GET)
	public String GeddtTrdasbkfs(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item) throws IOException{	
		String word = request.getParameter("word");
		System.out.println("word==="+word);
		Item m =new Item();
		m=itemService.GetItem(item);
		map.put("m", m) ;	
	    List lst = articleService.SearchWordRsList(word, item);
	    kuo=itemService.ItemHtmlorDo(item);
		menuList = itemService.ArticleItemCate(item);
		map.put("menuList",menuList);
		//根据id 取出不同的频频道地址	
	    address =itemService.ItemList(item) ;
	    map.put("item",item);
	    map.put("kuo", kuo);
	    map.put("lst", lst);
		return  "/template/"+address+"/search" ;
	}
	
	
	
	
	
	
	
	
	
	
}
