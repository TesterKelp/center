package com.testsystem.article.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;

import com.testsystem.admin.utils.SysInfoUtil;
import com.testsystem.helper.HtmlCompressor;
import com.testsystem.helper.JsonAndString;
import com.testsystem.utils.Log;

import net.sf.json.JSONObject;




public class HtmlChannelF {
	HttpClient httpClient = null; //HttpClient实例
	GetMethod getMethod =null; //GetMethod实例
	BufferedWriter fw = null;
	String page = null;
	String webappname = null;
	BufferedReader br = null;
	InputStream in = null;
	StringBuffer sb = null;
	String line = null;
	String  str=null ;
	String  y="";
	String  yy="";
	String tar="";
	String url="";
	//构造方法
	public HtmlChannelF(String webappname){
		this.webappname = webappname;
		
	}
	

	public  void  GetWebDir(int htmltype,List  list){
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
//		webappRoot=SysInfoUtil.getSysInfo().getHtmlloc();
		url=SysInfoUtil.getSysInfo().getUrl();
		if(htmltype==1){
			for (int i = 0; i < JsonAndString.ListToJsonArray(list).size(); i++) {
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(list).get(i);
				int cateid = Integer.parseInt(ob.getString("cateid"));
				 y = url + "/wz/TestList.do?cateid=" + cateid;
			    tar = webappRoot + "/wz/TL_" + cateid + ".html";
				createHtmlPage(y, tar);
			}
			
		}
		if(htmltype==2){
			for (int i = 0; i < JsonAndString.ListToJsonArray(list).size(); i++) {
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(list).get(i);
				int articleid = Integer.parseInt(ob.getString("articleid"));
				 y = url + "/wz/TestDetail.do?articleid=" + articleid;
				 tar = webappRoot + "/wz/TD_" + articleid + ".html";
				createHtmlPage(y, tar);
			}
		}
		
	}

	public  void  GetWebDir(int htmltype,int  id){
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
//		webappRoot=SysInfoUtil.getSysInfo().getHtmlloc();
		url=SysInfoUtil.getSysInfo().getUrl();
		if (htmltype == 1) {
			y = url + "/wz/TestList.do?cateid=" + id;
			tar = webappRoot + "/wz/TL_" + id + ".html";
		}
		if (htmltype == 2) {
			 y = url + "/wz/TestDetail.do?articleid=" + id;
			tar = webappRoot + "/wz/TD_" + id + ".html";
		}
		System.out.println("yyyyyyyyyyyyyyy"+y);
		System.out.println("yyyyyyyyyyyyyyy"+tar);
		createHtmlPage(y, tar);
	}
	
	public  void  GeneratorIndex(){
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		url=SysInfoUtil.getSysInfo().getUrl();
			y = url + "/wz/htmlindex.do" ;
			tar = webappRoot + "wz/index.html";
		System.out.println("yyyyyyyyyyyyyyy"+y);
		System.out.println("yyyyyyyyyyyyyyy"+tar);
		createHtmlPage(y, tar);
	}

	
	public  void  GeneratorPortal(){
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		url=SysInfoUtil.getSysInfo().getUrl();
			y = url + "/index.do" ;
			tar = webappRoot + "index.html";
		System.out.println("生成页面"+y+"静态html页面"+tar);
		createHtmlPage(y, tar);
	}
//sitemap	
	public  void  GeneratorSitemap(){
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		if(webappRoot.contains(":")){
			Log.error("This os  is  windows", webappRoot);	
		}else{
			webappRoot="/"+webappRoot ;
			Log.error("This os  is  liunx", webappRoot);	
		}
		url=SysInfoUtil.getSysInfo().getUrl();
			y = url + "/sitemap.do" ;
			tar = webappRoot + "sitemap.html";
		System.out.println("生成页面"+y+"静态html页面"+tar);
		createHtmlPage(y, tar);
	}
	
	
//姓名列表页	
	public  void  GeneratorName(String dir,int i,int page,String url){
		 	    dir= dir +"/"+i+"/" ;
		        String temp=this.BasePath(dir)  ;   
				y = url +"/"+ "name/"+i+"/name_"+page+".do" ;    
				tar = temp+"name_"+page+".html";
		    //    System.out.println("生成名字页面"+y+"静态html页面"+tar);
		        createHtmlPage(y, tar);
		        if(page==1){
			        String	 yy = url +"/"+ "name/"+i+"/name.do" ;    
				    String   tar1 = temp+"name.html";	
			    //    System.out.println("生成名字页面"+y+"静态html页面"+tar);
			        createHtmlPage(yy, tar1);
		        }

	}
	
	//姓名分析页	
		public  void  GeneratorNameTest(String dir,int i,String url){
			   dir ="name/"+ dir +"/" ;
			   tar =this.BasePath(dir)  ;     
			   tar = tar+i+"_N.html";	
				y = url+"/" +dir+i+"_N.do" ;
//				Log.error("Request Page:", y);	
//				Log.error("HTML    Page:", tar);
			createHtmlPage(y, tar);
		}	
	
	
	
//	频道首页	
	public  void  GeneratorItem(String dir){
        
		tar =this.BasePath(dir)  ; 
		        url=SysInfoUtil.getSysInfo().getUrl();
				y = url +"/"+ dir+"/portal.do" ;   
			tar = tar+"/portal.html";	
		Log.error("Request Page ：", y);
		Log.error("GeneratorHtmlPage：", tar);
		createHtmlPage(y, tar);
	}
	
	
//	栏目页
	public  void  GeneratorItemCate(String dir,int i){
  
		    tar =this.BasePath(dir)  ; 
		    String tar1 = tar+"/index.html" ;
			url=SysInfoUtil.getSysInfo().getUrl();
			y = url +"/"+ dir+"/list_"+i+".do" ;
			yy = url +"/"+ dir+"/index.do" ;
			tar = tar+"/list_"+i+".html";
		System.out.println("生成页面"+y+"静态html页面"+tar);
		createHtmlPage(y, tar);
		if(i==1){
			createHtmlPage(yy, tar1);	
		}	
	}
	
	
	
// 文章内容页	
	public  void  GeneratorItemCateArticle(String dir,int i){

		        tar =this.BasePath(dir)  ;        
		        
				url=SysInfoUtil.getSysInfo().getUrl();
				y = url +"/"+ dir+"/article_"+i+".do" ;    
			tar = tar+"/article_"+i+".html";
		System.out.println("生成页面"+y+"静态html页面"+tar);
		createHtmlPage(y, tar);
	}
	
	
//	专题首页	
	public  void  GeneratorTopic(String dir){
 
		tar =this.BasePath(dir)  ;        
		url=SysInfoUtil.getSysInfo().getUrl();
		y = url +"/"+ dir+"/topic.do" ;    
			tar = tar+"/topic.html";	
		System.out.println("生成页面"+y+"静态html页面"+tar);
		createHtmlPage(y, tar);
	}	
	
	
//	专题封面页	
	public  void  GeneratorCover(String dir ,int topicid){  
		    tar =this.BasePath(dir)  ;  
			url=SysInfoUtil.getSysInfo().getUrl();
			y = url +"/"+ dir+"/topiccover_"+topicid+".do" ;   
			tar = tar+"/topiccover_"+topicid+".html";	
		System.out.println("生成页面"+y+"静态html页面"+tar);
		createHtmlPage(y, tar);
	}
	
//	专题详情页	
	public  void  GeneratorCoverDetail(String dir ,int topicid ,List lst){

		     Log.error("chuangjianmulu:", dir);  
		    tar =this.BasePath(dir)  ;  
			url=SysInfoUtil.getSysInfo().getUrl();
			String b ="" ;
			for(int i=0;i<lst.size();i++){
				y="";
				b="" ;
				JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(lst).get(i);
				int id = Integer.parseInt(ob.getString("articleid")) ;
				y = url +"/"+ dir+"/topic_"+id+".do" ;   
				b = tar+"/topic_"+id+".html";	
				createHtmlPage(y, b);
				System.out.println("生成页面"+y+"静态html页面"+b);
			}

	
	}
	
	
	
	
	public  void  GeneratorTopic(){
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		url=SysInfoUtil.getSysInfo().getUrl();
			y = url + "/module/share/TopicAllList.do" ;
			tar = webappRoot + "/wz/topic.html";
		System.out.println("yyyyyyyyyyyyyyy"+y);
		System.out.println("yyyyyyyyyyyyyyy"+tar);
		createHtmlPage(y, tar);
	}
	
	public  void  GeneratorTagList(String  dir,int id){
		
		Log.error("chuangjianmulu:", dir); 
		url=SysInfoUtil.getSysInfo().getUrl();
		 tar =this.BasePath(dir)  ;
		 
			y = url+"/"+ dir+"/"+id+".do";
		    tar = tar + "/"+id+".html";
			createHtmlPage(y, tar);
	}
	
	
	public  void  GeneratorTagIndex(String  dir){
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		Log.error("chuangjianmulu:", dir); 
		url=SysInfoUtil.getSysInfo().getUrl();
		 tar =this.BasePath(dir)  ;
		 
			y = url+"/"+ dir+"/index.do";
		    tar = tar + "/index.html";
			createHtmlPage(y, tar);
		
	}
	
	
	
	
	

	public  String  BasePath(String dir){
		
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");
		if(webappRoot.contains(":")){
		//	Log.error("windows", webappRoot);	
		}else{
			webappRoot="/"+webappRoot ;
		//	Log.error("liunx", webappRoot);	
		}
		tar = webappRoot + dir  ;
	//	Log.error("create file:", tar);	
		  File file = new File(tar);
	        if (!file.exists()) {
	            file.mkdirs(); 
	        }
		return tar;
	}
	
	

	
	
	
	
	
	
	/** 根据模版及参数产生静态页面 */
	public boolean createHtmlPage(String url,String htmlFileName){
		boolean status = false;	
		int statusCode = 0;				
		try{
			//创建一个HttpClient实例充当模拟浏览器
			httpClient = new HttpClient();
			//设置httpclient读取内容时使用的字符集
			httpClient.getParams().setParameter(HttpMethodParams.HTTP_CONTENT_CHARSET,"utf-8");			
			//创建GET方法的实例
			getMethod = new GetMethod(url);
			//使用系统提供的默认的恢复策略，在发生异常时候将自动重试3次
			getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER, new DefaultHttpMethodRetryHandler());
			//设置Get方法提交参数时使用的字符集,以支持中文参数的正常传递
			getMethod.addRequestHeader("Content-Type","text/html;charset=utf-8");
			//执行Get方法并取得返回状态码，200表示正常，其它代码为异常
			statusCode = httpClient.executeMethod(getMethod);
		//	Log.error("Response Code:", statusCode);
			if (statusCode!=200) {
			//	System.out.println("静态页面引擎在解析"+url+"产生静态页面"+htmlFileName+"时出错!");
				Log.error(url,"createHtmlPage"+htmlFileName+"is error!");
			}else{
				//读取解析结果
				sb = new StringBuffer();
				in = getMethod.getResponseBodyAsStream();
				byte[] ba = getMethod.getResponseBody();
				 str= new String(ba,"UTF-8");  //得到指定编码格式的字符串
				br = new BufferedReader(new InputStreamReader(in));
				while((line=br.readLine())!=null){
					sb.append(line+"\n");
				}
				if(br!=null)br.close();
				page = sb.toString();

				//将页面中的相对路径替换成绝对路径，以确保页面资源正常访问
				Map<String ,String> mp =new HashMap<String ,String>();
				mp =blogDate(str) ;
				if(mp.size()>0){
					String ty=blogPage(str);
					str = formatPage(ty);
				    str = blogPage(mp ,str);
				}else{
					str = formatPage(str);
				}

				
				//将解析结果写入指定的静态HTML文件中，实现静态HTML生成	
				writeHtml(htmlFileName,page);
//				writeHtml(htmlFileName,str);
				status = true;
			}			
		}catch(Exception ex){
			//System.out.println("静态页面引擎在解析"+url+"产生静态页面"+htmlFileName+"时出错:"+ex.getMessage());
			Log.error(url,"createHtmlPage"+htmlFileName+"is error !"+"This  Exception  info is ："+ex.getMessage());
        }finally{
        	//释放http连接
        	getMethod.releaseConnection();
        }
		return status;
	}
	
	//将解析结果写入指定的静态HTML文件中
	private synchronized void writeHtml(String htmlFileName,String content) {
		String ss = "" ;
		try {
			ss= HtmlCompressor.compress(str)  ;
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try {  
			FileOutputStream	fileOutputStream = new FileOutputStream(htmlFileName); 
			FileChannel fileChannel = fileOutputStream.getChannel();
			  ByteBuffer byteBuffer = ByteBuffer.wrap(ss.getBytes());
		        try {
					fileChannel.write(byteBuffer);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        try {
					fileOutputStream.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
      
     		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
	}
	
	//将页面中的相对路径替换成绝对路径，以确保页面资源正常访问
	private String formatPage(String page){		
		page = page.replaceAll("\\.\\./\\.\\./\\.\\./", webappname+"/");
		page = page.replaceAll("\\.\\./\\.\\./", webappname+"/");
		page = page.replaceAll("\\.\\./", webappname+"/");	
		page = page.replace("loginPage.do", "@@@@@@");
//		page = page.replaceFirst("index.do", "@888@");
//		page = page.replace("/index.do\">网站首页", "@11111@");
		
		page = page.replace("NameFree.do", "@10000@");
		page = page.replace("NameTest.do", "@10000@");
		page = page.replace("sesx.do", "@10001@");
		page = page.replace("today.do", "@10002@");
		page = page.replace("Wnlscbz.do", "@10003@");
		page = page.replace("bx.do", "@10004@");
		page = page.replace("indexchenggu.do", "@10005@");
		page = page.replace("NameAll.do", "@10006@");
		page = page.replace("zgjm/index.do", "@10007@");
		page = page.replace("number/index.do", "@10008@");
		page = page.replace("che/index.do", "@10009@");
		page = page.replace("telephone/index.do", "@10010@");
		page = page.replace("qq/index.do", "@10011@");
		page = page.replace("dianhua/index.do", "@10012@");
		
		page = page.replace("suanming/index.do", "@10013@");
		page = page.replace("divine/index.do", "@10014@");
		page = page.replace("hehun/index.do", "@10015@");
		
		page = page.replace("usercenter/index.do", "@10020@");
		page = page.replace("/blog/BlogSettingPage.do", "@10021@");
		page = page.replace("module/share/MyTopic.do", "@10022@");
		page = page.replace("NavManage.do", "@10023@");
		page = page.replace("IndexSet.do", "@10024@");
		
		page = page.replace("sx.do", "@10031@");
//		page = page.replace("name.do", "@10032@");
		page = page.replace("TwoLove.do", "@10033@");
		

		page = page.replace("NameTestResult.do", "@10040@");
		page = page.replace("NameSearch.do", "@10041@");
		
		page = page.replace("divine/7/index.do", "@10042@");
		page = page.replace("divine/1/index.do", "@10043@");
		page = page.replace("divine/4/index.do", "@10044@");
		page = page.replace("hehun/xingzuo/index.do", "@10045@");
		page = page.replace("hehun/lvcai/index.do", "@10046@");
		page = page.replace("hehun/shengxiao/index.do", "@10047@");
		page = page.replace("hehun/benminggua/index.do", "@10048@");

		page = page.replace(".do", ".html");

		page = page.replace("@10042@", "divine/7/index.do");
		page = page.replace("@10043@", "divine/1/index.do");
		page = page.replace("@10044@", "divine/4/index.do");
		page = page.replace("@10045@", "hehun/xingzuo/index.do");
		page = page.replace("@10046@", "hehun/lvcai/index.do");
		page = page.replace("@10047@", "hehun/shengxiao/index.do");
		page = page.replace("@10048@", "hehun/benminggua/index.do");
		
		page = page.replace("@10040@", "NameTestResult.do");
		page = page.replace("@10041@", "NameSearch.do");
		
		page = page.replace("@10031@", "sx.do");
	//	page = page.replace("@10032@", "name.do");
		page = page.replace("@10033@", "TwoLove.do");
		
		page = page.replace("@10020@", "usercenter/index.do");
		page = page.replace("@10021@", "/blog/BlogSettingPage.do");
		page = page.replace("@10022@", "module/share/MyTopic.do");
		page = page.replace("@10023@", "NavManage.do");
		page = page.replace("@10024@", "IndexSet.do");
		
		
		
		
		page = page.replace("@10000@", "NameFree.do");
		page = page.replace("@10000@", "NameTest.do");
		page = page.replace("@10001@", "sesx.do");
		page = page.replace("@10002@", "today.do");
		page = page.replace("@10003@", "Wnlscbz.do");
		page = page.replace("@10004@", "bx.do");
		page = page.replace("@10005@", "indexchenggu.do");
		page = page.replace("@10006@", "NameAll.do");
		page = page.replace("@10007@", "zgjm/index.do");
		page = page.replace("@10008@", "number/index.do");
		page = page.replace("@10009@", "che/index.do");
		page = page.replace("@10010@", "telephone/index.do");
		page = page.replace("@10011@", "qq/index.do");
		page = page.replace("@10012@", "dianhua/index.do");
		page = page.replace("@10013@", "suanming/index.do");
		page = page.replace("@10014@", "divine/index.do");
		page = page.replace("@10015@", "hehun/index.do");
		
	//	page = page.replace("@11111@", "/index.do\">网站首页");
		page = page.replace("@@@@@@", "loginPage.do");	
	//	page = page.replace("@888@", "index.do");
		return page;
	}
	

	
	//将页面中的相对路径替换成绝对路径，以确保页面资源正常访问
		private String blogPage(String page){
			Map<String ,String> mp =new HashMap<String ,String>();
			String k="@@@@@";
			int n=0;

			while(true){
				
				if(page.indexOf("blog/")<0){
					break ;
				}else{
					int a =page.indexOf("blog/");
					String temp =page.substring(a, page.length()) ;
					int b =temp.indexOf(".do");
					
					String te= temp.substring(0, b+3);
					String t=k+n ;
					mp.put(t, te);
					page =page.replace(te, t);	
					n++ ;
				}
			}
			return page;	
		}
		
		private Map<String ,String> blogDate(String page){
			Map<String ,String> mp =new HashMap<String ,String>();
			String k="@@@@@";
			int n=0;
	//		System.out.println("dddddddddddddddddddddddddd");
			while(true){
				if(page.indexOf("blog/")<0){
					break ;
				}else{
					int a =page.indexOf("blog/");
					String temp =page.substring(a, page.length()) ;
					int b =temp.indexOf(".do");
					
					
					String te= temp.substring(0, b+3);
					String t=k+n ;
					mp.put(t, te);
					page =page.replace(te, t);	
					n++ ;
				}
			}
			return mp;	
		}
	
	
		
		
		
		private String blogPage(Map<String ,String> m ,String str){
			for(Map.Entry<String, String> entry : m.entrySet()){
			    String mapKey = entry.getKey();
			    String mapValue = entry.getValue();
			    str =str.replace(mapKey, mapValue);	
			//    System.out.println(mapKey+":"+mapValue);
			}	
			return str;	
		}
		
		
	
}
