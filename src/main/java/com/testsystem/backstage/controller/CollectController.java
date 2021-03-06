package com.testsystem.backstage.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.article.util.GetPicAddress;
import com.testsystem.backstage.collect.Page;
import com.testsystem.backstage.service.CollectService;
import com.testsystem.helper.JsonAndString;
import com.testsystem.utils.Constants;

@Controller
public class CollectController {
	
	
	@Autowired
	private CollectService collectService ;
	
	private List moduleList ;
	private List articleList ;
	
	
	@RequestMapping(value ="/Collect_ItemManage.do", method = RequestMethod.GET)
	public String GetTask(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		return  Constants.COLLECTDIR+"Collect_ItemManage";
	}
	
	
	@RequestMapping(value ="/Collect_GetCate.do", method = RequestMethod.GET)
	public String GetTaffsk(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		int itemid=Integer.parseInt(request.getParameter("itemid"));
		moduleList = collectService.GetItemCate(itemid);
		map.put("moduleList", moduleList);
		
		articleList = collectService.GetItemWenZhang(itemid) ;
		map.put("articleList", articleList);
		return  Constants.COLLECTDIR+"Collect_ItemCate";
	}
	
	@RequestMapping(value ="/Collect_Start.do", method = RequestMethod.GET)
	public void getCompanyIdnfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
		List ls = new ArrayList()  ;
		String url=request.getParameter("url");
		int id=Integer.parseInt(request.getParameter("id"));
		int start=Integer.parseInt(request.getParameter("start"));
		int end=Integer.parseInt(request.getParameter("end"));
		String temp ;
		String tem = "" ;
		for(int i=start ;i<end+1;i++){
			temp =url ;
			temp =temp.replace("@", i+"");
			tem=tem +temp ;
			System.out.println("?????????:"+temp);
			ls.add(temp);
		}
		
		// ls ????????? ??????????????????
		for (int i = 0; i < ls.size(); i++) {
			List art = new ArrayList()  ;
			String siteUrl = (String) ls.get(i);
			//
			// ??????????????????
			List li = Page.GetPageUrl(siteUrl, id);
			for (int j = 0; j < li.size(); j++) {
				String Url = (String) li.get(j);
				Url=Url.substring(1);
				Url=Url.substring(0,Url.length()-1) ;
				String rl="http://www.jk51.com"+Url ;
		//		System.out.println("rl="+rl);
//				String sour = Page.GetPageSource(rl, "");// ???????????????
				System.out.println("??????"+rl+"?????????");
			  art =  Page.GetPageContent(rl, id);
				
//			String 	sql="insert into article_collect_content ( cid,url,title,con,addcode  )values("+id+",'"+rl+"','"+art.get(0)+"','"+art.get(1)+"','0') "
//					+ "ON DUPLICATE KEY UPDATE url=url" ;
		//	System.out.println("sql"+sql);
			 
			// String con =Page.delHTMLTag(art.get(1).toString());
			String con = art.get(1).toString() ;
			con =con.substring(1);
			con =con.replace("></script>", "");
			con =con.replace("</DIV>", "");
			con =con.replace("MsoNormal", "cline");
			con =con.replace("stitle", "ctitle");
			con=con.replaceAll("<img[^>]*>", " "); // https://blog.csdn.net/QT1E2/article/details/100669726
			
			String 	sqll="	insert into article_collect_content ( cid,url,title,con,addcode  ) "
			+"SELECT '"+id+"','"+rl+"','"+art.get(0)+"','"+con+"','0' from DUAL WHERE NOT EXISTS(select url  from  article_collect_content  where url ='"+rl+"')"  ;
//			System.out.println("sql"+sqll);
			collectService.AddDataToCollectContent(sqll);
				// ????????????
				// ????????????
				// ????????????
				// ????????????
			}
		}
		response.getWriter().write("ok");
		response.getWriter().flush();
	}
	

	
	
	@RequestMapping(value ="/Collect_CateArticleToArticle.do", method = RequestMethod.GET)
	public void getCdompanyIdnfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		
		int userid =UserUtil.getCurrentUserinfo().getUserid();
		int cateid = Integer.parseInt(request.getParameter("cateid"));
		int topicid = 0;
		int blogcateid = 0;
		
		
		
		int cid = Integer.parseInt(request.getParameter("cid"));
		 articleList = collectService.GetCollectCateWenZhang(cid);
//		 https://bbs.csdn.net/topics/250029995?list=2190488
//		 https://www.cnblogs.com/xiaowangba/p/6314142.html
		 Iterator it = articleList.iterator();   
		 while(it.hasNext()) {   
		     Map userMap = (Map) it.next();   
		    String url = userMap.get("url").toString();
		    String title =      userMap.get("title").toString();
		    String articlecontent =    userMap.get("con").toString();
			String picaddress= GetPicAddress.GetPicId(articlecontent);
			String inn=	GetPicAddress.delHTMLTag(articlecontent);
			String articleitd ;
				if(inn.length()<=300){
					articleitd=inn.substring(0, inn.length());
				}else{
					articleitd=inn.substring(0, 300);
				}
				Format format = new SimpleDateFormat("yyyy-MM-dd");
			    String time=	format.format(new Date()) ;

		        String sql="insert into  article_content (cateid , articletitle , articlecontent , userid , blogcateid ,creattime ,articletype ,topicid, picaddress,articleitd , html    ) "
		        		+ "values ('"+cateid+"','"+title+"','"+articlecontent+"','"+userid+"','0','"+time+"','1','0','"+picaddress+"','"+articleitd+"','"+url+"')" ;
		        collectService.AddCollectToArticle(sql);
		 } 

        
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	????????????????????????
	@RequestMapping(value ="/Collect_WenZhang.do", method = RequestMethod.GET)
	public String GetTassffsk(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		int wid=Integer.parseInt(request.getParameter("wid"));
		System.out.println("wid============"+wid);
		moduleList = collectService.GetCollectWenZhang(wid);
		map.put("moduleList", moduleList);
		return  Constants.COLLECTDIR+"Collect_WenZhang";
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/Collect_ItemList.do", method = RequestMethod.GET)
	public void getCompanyInfo(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		moduleList = collectService.CollectItemList();
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	
	
	@RequestMapping(value ="/backstage/article_collect.do", method = RequestMethod.GET)
	public String GetTrddasks(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		
		
		return null;	
	}
	
	
	
	
	
	
	
	
	
	
	
	

	@RequestMapping(value ="/backstage/collect.do", method = RequestMethod.GET)
	public String GetTrasks(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
			String c="";
		 String urlStr = "http://www.hxzxs.cn/view-11130-1.html"; // ??????
	        try {
	            //????????????url???????????????????????????????????????
	            URL url = new URL(urlStr);
	            //????????????????????????????????????
	            InputStreamReader inStrRead = new InputStreamReader(url.openStream(),"gb2312");
	            //??????InputStreamReader??????????????????
	            BufferedReader bufRead = new BufferedReader(inStrRead); 
	            //????????????????????????
	            while (bufRead.readLine() != null) {
	            	c=c+bufRead.readLine();	
//	                System.out.println(bufRead.readLine());
	            }
	            bufRead.close();
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	        System.out.println(c);
		
		String a = c;
		a = a.replace("<div class=\"viewbox\">", "@@@@@");
		a = a.replace("<!-- /title -->", "=====");
		int st = a.indexOf("@@@@@");
		int en = a.indexOf("=====");
		a = a.substring(st + 5, en);
		   
	     c=   c.replace("jumpToArccontent", "@@@@@");
	     c=   c.replace("<!-- /content -->", "====="); 
	     int start= c.indexOf("@@@@@");  
	     int end  = c.indexOf("=====");   
	     c=c.substring(start+7,end);
	     
		String str = "";
		String  s ="<a[^>]*>([^<]*)</a>" ;
		
		Pattern ATTR_PATTERN = Pattern.compile("<img[^<>]*?\\ssrc=['\"]?(.*?)['\"]?\\s.*?>", Pattern.CASE_INSENSITIVE);
		if (StringUtils.hasText(c)) {
			Matcher matcher = ATTR_PATTERN.matcher(c);
			while (matcher.find()) {
				str += matcher.group(1) + ",";
			}
		}
	
//1.?????? ??????c????????????	  //	    https://ask.csdn.net/questions/680953	
		
	Pattern pattern1= Pattern.compile("<a[^<]*?>")	;
	Matcher matcher1 = pattern1.matcher(c) ;
		c=matcher1.replaceAll("");
		
		Pattern pattern2= Pattern.compile("</a>")	;
		Matcher matcher2 = pattern2.matcher(c) ;	
		c= matcher2.replaceAll("");
		
		
//2.?????????????????????wiki??????		  //		https://blog.csdn.net/QT1E2/article/details/100669726
//		https://www.iteye.com/blog/suiu-1188993

		
		String contentString = "sdfsd abc---abc <a href='http://www.hao123.com'>" +  
	            "http://www.hao123.com</a><img title='img' src='abc' />" +  
	            "sdfsdfds";  
	    contentString=contentString.replaceAll("<a href[^>]*>", "");  
	    contentString=contentString.replaceAll("</a>", "");  
	    
	    contentString=contentString.replaceAll("<img[^>]*/>", " ");  
	    contentString=contentString.replaceAll("<img[^>]* src=\'/images/??????.png\'/>", " "); 
	    System.out.println(contentString);
		
		c=c.replaceAll("<img[^>]* src=\'/images/??????.png\'/>", " ");// ??????????????????
		

		
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		

	//  file ?????????????????? ????????????/pic/	????????????????????????c??????pic???  ??????????????????????????????   ??????webappRoot?????????
		String baiduLogoUrl = "https://www.baidu.com/img/bd_logo1.png";
		String  rt = webappRoot+"pic/col/" + "bd_logo1.png" ;
		File localFile = new File(rt);
		this.downloadImage(baiduLogoUrl, "png", localFile);

	    map.put("str", str) ; 
		map.put("c", c) ;
		map.put("a", a) ;
		map.put("rt", rt) ;
		return  "/module/backstage/collect";
	}
	
	
	
	
	
	
	@RequestMapping(value ="/backstage/GetContent.do", method = RequestMethod.GET)
	public void GetTrassks(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
			
		String urlStr = request.getParameter("htmlurl");
		
		 String c="";
//		  urlStr = "http://www.hxzxs.cn/view-11130-1.html"; // ??????
	        try {
	            //????????????url???????????????????????????????????????
	            URL url = new URL(urlStr);
	            //????????????????????????????????????
	            InputStreamReader inStrRead = new InputStreamReader(url.openStream(),"gb2312");
	            //??????InputStreamReader??????????????????
	            BufferedReader bufRead = new BufferedReader(inStrRead); 
	            //????????????????????????
	            while (bufRead.readLine() != null) {
	            	c=c+bufRead.readLine();	
//	                System.out.println(bufRead.readLine());
	            }
	            bufRead.close();
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	        System.out.println(c);
		
		String a = c;
		a = a.replace("<div class=\"viewbox\">", "@@@@@");
		a = a.replace("<!-- /title -->", "=====");
		int st = a.indexOf("@@@@@");
		int en = a.indexOf("=====");
		a = a.substring(st + 5, en);
		   
		a=a.trim().replace("<h2>", "");
		a=a.trim().replace("</h2>", "");
	     c=   c.replace("jumpToArccontent", "@@@@@");
	     c=   c.replace("<!-- /content -->", "====="); 
	     int start= c.indexOf("@@@@@");  
	     int end  = c.indexOf("=====");   
	     c=c.substring(start+5,end);
	     
		String str = "";
		Pattern ATTR_PATTERN = Pattern.compile("<img[^<>]*?\\ssrc=['\"]?(.*?)['\"]?\\s.*?>", Pattern.CASE_INSENSITIVE);
		if (StringUtils.hasText(c)) {
			Matcher matcher = ATTR_PATTERN.matcher(c);
			while (matcher.find()) {
				str += matcher.group(1) + ",";
			}
		}
	
//1.?????? ??????c????????????	  //	    https://ask.csdn.net/questions/680953	
		
	Pattern pattern1= Pattern.compile("<a[^<]*?>")	;
	Matcher matcher1 = pattern1.matcher(c) ;
		c=matcher1.replaceAll("");
		
		Pattern pattern2= Pattern.compile("</a>")	;
		Matcher matcher2 = pattern2.matcher(c) ;	
		c= matcher2.replaceAll("");
		
		
//2.?????????????????????wiki??????		  //		https://blog.csdn.net/QT1E2/article/details/100669726
//		https://www.iteye.com/blog/suiu-1188993

		
		String contentString = "sdfsd abc---abc <a href='http://www.hao123.com'>" +  
	            "http://www.hao123.com</a><img title='img' src='abc' />" +  
	            "sdfsdfds";  
	    contentString=contentString.replaceAll("<a href[^>]*>", "");  
	    contentString=contentString.replaceAll("</a>", "");  
	    contentString=contentString.replaceAll("<img[^>]*/>", " ");  
	    contentString=contentString.replaceAll("<img[^>]* src=\'/images/??????.png\'/>", " "); 
	    System.out.println(contentString);
		
		c=c.replaceAll("<img[^>]* src=\'/images/??????.png\'/>", " ");// ??????????????????
		

		
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		

	//  file ?????????????????? ????????????/pic/	????????????????????????c??????pic???  ??????????????????????????????   ??????webappRoot?????????
		String baiduLogoUrl = "https://www.baidu.com/img/bd_logo1.png";
		String  rt = webappRoot+"pic/col/" + "bd_logo1.png" ;
		File localFile = new File(rt);
		this.downloadImage(baiduLogoUrl, "png", localFile);

	    map.put("str", str) ; 
		map.put("c", c) ;
		map.put("a", a) ;
		map.put("rt", rt) ;
		
//		?????? ??????json ?????? title (string  a) ???content (string  c)  ?????? 
		
		String cc =c.replace("\"", "&quot;") ;  //&quot;?????????????????????????????????????????????????????????????????? ?????????????????? ???????????????????????? ??????????????????
		String  s="{\"title\":\""+a+"\" ,\"con\":\""+cc+"\"}";
		 System.out.println(s);
		
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(s);
		response.getWriter().flush();
	}
	
	
	

	
	public static boolean downloadImage(String imageUrl, String formatName, File localFile) {
		boolean isSuccess = false;
		URL url = null;
		try {
			url = new URL(imageUrl);
			isSuccess = ImageIO.write(ImageIO.read(url), formatName, localFile);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("isSuccess : "+isSuccess);
		return isSuccess;
	}

	
	
	
	
	
	
	
}
