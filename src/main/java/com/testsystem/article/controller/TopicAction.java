package com.testsystem.article.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.article.service.ArticleService;
import com.testsystem.article.service.TopicService;
import com.testsystem.article.vo.Topic;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.backstage.vo.Item;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.U;

import net.sf.json.JSONObject;

@Controller
public class TopicAction {
	@Autowired
	private TopicService topicService ;
	@Autowired
	private  ArticleService articleService ;
	
	@Autowired
	private ItemService itemService ;
	private List topicList;
	private List moduleList;
	String msg ="";
	
	
	
	
	@RequestMapping(value ="/backstage/TopicCreateInitTemplateJs.do", method = RequestMethod.GET)
	public  void TopicAwdd(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		
		int item_id=Integer.parseInt(request.getParameter("dir"));
		Item item =this.itemService.GetItemById(item_id);
		List ltlst = this.GetTopicTemplate(item.getItem_template());
		String  j2 =  JsonAndString.ListToJsonToString(ltlst);
		String  j="{lt:"+j2+"}" ;
		System.out.println(j);
		response.getWriter().write(j);
		response.getWriter().flush();
	}
	
	
	public List  GetTopicTemplate(String template){
		List<String> files = new ArrayList<String>();
		List<String> directorys = new ArrayList<String>();
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");		
		if(webappRoot.contains(":")){
			//	Log.error("windows", webappRoot);	
			}else{
				webappRoot="/"+webappRoot ;
			//	Log.error("liunx", webappRoot);	
			}
		String path=webappRoot+"/template"+"/"+template ;
        File file = new File(path);
        File[] tempList = file.listFiles();
        for (int i = 0; i < tempList.length; i++) {
            if (tempList[i].isFile()) {
            	if(tempList[i].getName().contains(".jsp")&&tempList[i].getName().contains("topiccover")){
          		  files.add(tempList[i].getName());
          	   }
            	
               // files.add(tempList[i].toString());
                //文件名，不包含路径
                //String fileName = tempList[i].getName();
            }
            if (tempList[i].isDirectory()) {
                //这里就不递归了，
            	System.out.println(tempList[i].getName());
            	directorys.add(tempList[i].getName());
            }
        }
		return files;
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/module/share/TopicAllList.do", method = RequestMethod.GET)
	public String GetArticleListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		topicList = topicService.TopicAllList();
		System.out.println("topic:"+topicList );
		map.put("topicList",topicList);
		return "/wz/Topic";
	}
	@RequestMapping(value ="/topic/TopicCreate.do", method = RequestMethod.GET)
	public String GetArtListByCate(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	

		
		List itemst=itemService.ItemList();
		map.put("tlst", itemst) ;

		return "/module/share/TopicCreate";
	}
	
	
	@RequestMapping(value ="/module/share/TopicAdd.do", method = RequestMethod.POST)
	public  void TopicAdd(Topic topic ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		topic.setTemplatecover("topiccover"+topic.getSkin());
		topic.setTemplatedetail("topicdetail"+topic.getSkin());
		int userid ;
		userid = U.GetUserId(request);
		if(userid == 0){
			msg="failed";
		}else{
			topic.setUserid(userid);
			topic.setTop(2);
			topic.setSort(1);
			topicService.TopicAdd(topic);
			msg="ok";	
		}
		response.getWriter().write(msg);
		response.getWriter().flush();
//		return"redirect:/module/share/MyTopic.do";
	}
	@RequestMapping(value ="/module/share/edittopic.do", method = RequestMethod.GET)
	public String EditTopic(Topic topic ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		topic=	topicService.GetTopicById(topic.getTopicid()) ;
		map.put("topicname",topic.getTopicname());
		map.put("topicimage",topic.getTopicimage());
		map.put("topicintro",topic.getTopicintro());
		map.put("topicid",topic.getTopicid());
		map.put("userid",topic.getUserid());
		map.put("topic",topic);
		
		
		Item item =this.itemService.GetItemById(topic.getItemid());
		List ltlst = this.GetTopicTemplate(item.getItem_template());
		
		map.put("ltlst", ltlst) ;
		
		List itemst=itemService.ItemList();
		map.put("tlst", itemst) ;
		
		return"/module/share/TopicEdit";
	}
	
	@RequestMapping(value ="/module/share/TopicEdit.do", method = RequestMethod.POST)
	public  void TopicEdit(Topic topic ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int userid;
		userid = U.GetUserId(request);
		if(userid == 0){
			msg="failed";
		}else{
			topic.setTemplatecover("topiccover"+topic.getSkin());
			topic.setTemplatedetail("topicdetail"+topic.getSkin());
			topic.setUserid(userid);
			topicService.TopicEdit(topic);
			msg="ok";	
		}
		response.getWriter().write(msg);
		response.getWriter().flush();
	}
	
	
		@RequestMapping(value ="/module/share/ArticleTopicSelcet.do", method = RequestMethod.GET)
		public  void ArticleTopicSelcet(ModelMap map, HttpServletResponse response,
				HttpServletRequest request) throws IOException{	
			int userid ;
			userid = U.GetUserId(request);
			String html="" ;
			if(userid == 0){
				msg="failed";
			}else{
				moduleList =topicService.GetTopicSelect(userid);
					html ="<option value='0'>不使用专题</option>" ;
				for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
					JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
					html = html+"<option value='"+ob.getString("topicid")+"'>"+ob.getString("topicname")+"</option> ";
				}    
				String msg="save category succfully !";	
			}
			response.getWriter().write(html);
			response.getWriter().flush();
		}
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/module/share/MyTopic.do", method = RequestMethod.GET)
	public String MyTopic(Topic topic ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int userid ;
		userid = U.GetUserId(request);
		String html="" ;
		if(userid == 0){
			msg="failed";
		}else{	
			topicList = topicService.MyTopic(userid);
			System.out.println("topic:"+topicList );
			map.put("topicList",topicList);		
		}
		return "module/share/MyTopic";
	}
	

	@RequestMapping(value ="/module/share/topiccover.do", method = RequestMethod.GET)
	public String MyTpic(Topic topic ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
    	topic=	topicService.GetTopicById(topic.getTopicid()) ;
		map.put("topicname",topic.getTopicname());
		map.put("topicimage",topic.getTopicimage());
		map.put("topicintro",topic.getTopicintro());
		map.put("userid",topic.getUserid());
		topicList = articleService.ArticleByTopicId(topic.getTopicid()) ;
		map.put("topicList",topicList);
		System.out.println("topic:"+topicList );
		return "module/share/topiccover";
	}
	
	
	
	@RequestMapping(value ="/module/share/deltopic.do", method = RequestMethod.GET)
	public String DelTopic(Topic topic ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int userid = UserUtil.getCurrentUserinfo().getUserid();
		topicService.DelTopic(topic.getTopicid());
		return"redirect:/module/share/MyTopic.do";
	}
	
	
	
	@RequestMapping(value ="/topic/SetTopicTop.do", method = RequestMethod.POST)
	public  void TopicSet(Topic topic ,ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		int rs =topicService.SetTopicTop(topic);
		response.getWriter().write(rs);
		response.getWriter().flush();
	}
	
	
	
	

}
