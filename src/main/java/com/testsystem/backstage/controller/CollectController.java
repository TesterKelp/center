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
			System.out.println("列表页:"+temp);
			ls.add(temp);
		}
		
		// ls 为栏目 中列表的页数
		for (int i = 0; i < ls.size(); i++) {
			List art = new ArrayList()  ;
			String siteUrl = (String) ls.get(i);
			//
			// 获取文章列表
			List li = Page.GetPageUrl(siteUrl, id);
			for (int j = 0; j < li.size(); j++) {
				String Url = (String) li.get(j);
				Url=Url.substring(1);
				Url=Url.substring(0,Url.length()-1) ;
				String rl="http://www.jk51.com"+Url ;
		//		System.out.println("rl="+rl);
//				String sour = Page.GetPageSource(rl, "");// 获取内容页
				System.out.println("获取"+rl+"内容页");
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
				// 去超链接
				// 获取图片
				// 获取标题
				// 获取内容
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	采集文章详情页面
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
		 String urlStr = "http://www.hxzxs.cn/view-11130-1.html"; // 网址
	        try {
	            //创建一个url对象来指向要采集信息的网址
	            URL url = new URL(urlStr);
	            //将读取到的字节转化为字符
	            InputStreamReader inStrRead = new InputStreamReader(url.openStream(),"gb2312");
	            //读取InputStreamReader转化成的字符
	            BufferedReader bufRead = new BufferedReader(inStrRead); 
	            //读到的内容不为空
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
	
//1.思路 去掉c中超链接	  //	    https://ask.csdn.net/questions/680953	
		
	Pattern pattern1= Pattern.compile("<a[^<]*?>")	;
	Matcher matcher1 = pattern1.matcher(c) ;
		c=matcher1.replaceAll("");
		
		Pattern pattern2= Pattern.compile("</a>")	;
		Matcher matcher2 = pattern2.matcher(c) ;	
		c= matcher2.replaceAll("");
		
		
//2.去掉字符串中的wiki图片		  //		https://blog.csdn.net/QT1E2/article/details/100669726
//		https://www.iteye.com/blog/suiu-1188993

		
		String contentString = "sdfsd abc---abc <a href='http://www.hao123.com'>" +  
	            "http://www.hao123.com</a><img title='img' src='abc' />" +  
	            "sdfsdfds";  
	    contentString=contentString.replaceAll("<a href[^>]*>", "");  
	    contentString=contentString.replaceAll("</a>", "");  
	    
	    contentString=contentString.replaceAll("<img[^>]*/>", " ");  
	    contentString=contentString.replaceAll("<img[^>]* src=\'/images/词典.png\'/>", " "); 
	    System.out.println(contentString);
		
		c=c.replaceAll("<img[^>]* src=\'/images/词典.png\'/>", " ");// 去掉词典图片
		

		
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		

	//  file 文件位置问题 目前使用/pic/	可以成功下载到了c盘的pic下  此处需要做相应的处理   通过webappRoot已解决
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
//		  urlStr = "http://www.hxzxs.cn/view-11130-1.html"; // 网址
	        try {
	            //创建一个url对象来指向要采集信息的网址
	            URL url = new URL(urlStr);
	            //将读取到的字节转化为字符
	            InputStreamReader inStrRead = new InputStreamReader(url.openStream(),"gb2312");
	            //读取InputStreamReader转化成的字符
	            BufferedReader bufRead = new BufferedReader(inStrRead); 
	            //读到的内容不为空
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
	
//1.思路 去掉c中超链接	  //	    https://ask.csdn.net/questions/680953	
		
	Pattern pattern1= Pattern.compile("<a[^<]*?>")	;
	Matcher matcher1 = pattern1.matcher(c) ;
		c=matcher1.replaceAll("");
		
		Pattern pattern2= Pattern.compile("</a>")	;
		Matcher matcher2 = pattern2.matcher(c) ;	
		c= matcher2.replaceAll("");
		
		
//2.去掉字符串中的wiki图片		  //		https://blog.csdn.net/QT1E2/article/details/100669726
//		https://www.iteye.com/blog/suiu-1188993

		
		String contentString = "sdfsd abc---abc <a href='http://www.hao123.com'>" +  
	            "http://www.hao123.com</a><img title='img' src='abc' />" +  
	            "sdfsdfds";  
	    contentString=contentString.replaceAll("<a href[^>]*>", "");  
	    contentString=contentString.replaceAll("</a>", "");  
	    contentString=contentString.replaceAll("<img[^>]*/>", " ");  
	    contentString=contentString.replaceAll("<img[^>]* src=\'/images/词典.png\'/>", " "); 
	    System.out.println(contentString);
		
		c=c.replaceAll("<img[^>]* src=\'/images/词典.png\'/>", " ");// 去掉词典图片
		

		
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		

	//  file 文件位置问题 目前使用/pic/	可以成功下载到了c盘的pic下  此处需要做相应的处理   通过webappRoot已解决
		String baiduLogoUrl = "https://www.baidu.com/img/bd_logo1.png";
		String  rt = webappRoot+"pic/col/" + "bd_logo1.png" ;
		File localFile = new File(rt);
		this.downloadImage(baiduLogoUrl, "png", localFile);

	    map.put("str", str) ; 
		map.put("c", c) ;
		map.put("a", a) ;
		map.put("rt", rt) ;
		
//		此处 通过json 返回 title (string  a) 和content (string  c)  即可 
		
		String cc =c.replace("\"", "&quot;") ;  //&quot;是双引号的转义符，在页面渲染时自动将其转换为 单个双引号， 将内容中的双引号 改为转义字符
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
