package com.testsystem.backstage.controller;

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

import com.testsystem.article.service.CateService;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.backstage.service.TagService;
import com.testsystem.backstage.vo.Item;
import com.testsystem.backstage.vo.Tag;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.U;
import com.testsystem.site.service.SiteService;
import com.testsystem.site.vo.Site;

import net.sf.json.JSONObject;

@Controller
public class TagController {

	
	@Autowired
	private TagService tagService;
	
	@Autowired
	private ItemService itemService ;
	
	@Autowired
	private CateService cateService;

	@Autowired
	private SiteService siteService ;
	
	private List alst;
	private List menuList ;
	private List lst ;
	private List tagLst ;
	String address="default";
	String kuo="do" ;
	
	/**
	 * -------------------------------------------------	文章系统后台标签管理  -------------------------------------------------
	 *   文章系统后台
	 *
	 */
	
	@RequestMapping(value ="/backstage/TagManage", method = RequestMethod.GET)
	public String MyArticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
	  List  itemlist =	itemService.ItemList();
	  map.put("itemlist",itemlist);
	  return  "/module/backstage/TagManage";
	}
	
	@RequestMapping(value ="/{item}/tag_{id}.do", method = RequestMethod.GET)
	public String MyAsrticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request , @PathVariable String item , @PathVariable int id) throws IOException{
		int  tagid=id ;
		alst = tagService.TagArticle(tagid);
		String address    = itemService.ItemList(item) ;
		String kuo		   = itemService.ItemHtmlorDo(item);
		List menuList   = itemService.ArticleItemCate(item);
		List  ilst =tagService.ItemTag(item) ;
		String tagName= tagService.TagName(tagid);
		map.put("menuList",menuList);
		map.put("item",item);
		map.put("tagName",tagName);
		map.put("kuo", kuo);
		map.put("ilst",ilst);
		map.put("alst",alst);
		map.put("item",item);
		return  "/template/"+address+"/tag";
	}
	
	
	@RequestMapping(value ="/TagItem.do", method = RequestMethod.GET)
	public void MyArt2icle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String  item =  request.getParameter("dir");
		List lst=tagService.ItemTagAndNumber(item);
		String  jsonstr =  JsonAndString.ListToJsonToString(lst);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	@RequestMapping(value ="/tag/MyTag_js.do", method = RequestMethod.GET)
	public void MyArtdd2icle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		int cateid = Integer.parseInt(request.getParameter("cateid"));
		int itemid = cateService.CateById(cateid).getItemid();
		int userid=U.GetUserId(request);
		List moduleList=tagService.Mytag(userid, itemid);
		String html="" ;
		for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			html = html+"<a value=\""+ob.getString("tagid")+"\" title=\""+ob.getString("tagname")+"\" href=\"javascript:void(0);\"><span>"+ob.getString("tagname")+"</span><em></em></a>";
		}    

		response.getWriter().write(html);
		response.getWriter().flush();
	}
	
	
	
	
	
	
	

	
	
//	tag列表页
	@RequestMapping(value ="/{item}/tag/{id}.do", method = RequestMethod.GET)
	public String GeddtfTrdfasbks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item,@PathVariable int id) throws IOException{	
		Site site =siteService.GetSite();
		map.put("site",site);
		int tagid = id ;
		int pageNum = id;
		Item m =new Item();
		m=itemService.GetItem(item);
		map.put("m", m) ;
		menuList = itemService.ArticleItemCate(item);
		map.put("menuList",menuList);
		//根据id 取出不同的频频道地址	
	    address =itemService.ItemList(item) ;
	    map.put("item",item);
	    map.put("kuo", kuo);
//	    根据频道目录，标签id 来获取频道下的文章  
	    lst=tagService.GetTagArticle(item, tagid);
	    map.put("lst",lst);
	    Tag tag =  tagService.GetTagById(tagid);
	    map.put("tag", tag);
		return  "/template/"+address+"/tag/taglist";
	}	
	
//	tag主页
	@RequestMapping(value ="/{item}/tag/index.do", method = RequestMethod.GET)
	public String GeddtfTrdfasbdks(ModelMap map, HttpServletResponse response,HttpServletRequest request,@PathVariable String item) throws IOException{	
		Site site =siteService.GetSite();
		map.put("site",site);
		Item m =new Item();
		m=itemService.GetItem(item);
		map.put("m", m) ;
		menuList = itemService.ArticleItemCate(item);
		map.put("menuList",menuList);
		//根据id 取出不同的频频道地址	
	    address =itemService.ItemList(item) ;
	    map.put("item",item);
	    map.put("kuo", kuo);
	    lst=tagService.GetTagByItemId(m.getItem_id());
	    map.put("lst",lst);
		return  "/template/"+address+"/tag/tagindex";
	}		
	
	
	
	
	
	
	
	
	
	
	
	
}
