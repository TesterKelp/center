package com.testsystem.backstage.collect;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.springframework.util.StringUtils;





public class Page {
	
	
	static HttpClient httpClient = null; //HttpClient实例
	static GetMethod getMethod =null; //GetMethod实例
	BufferedWriter fw = null;
	static String page = null;
	String webappname = null;
	static BufferedReader br = null;
	static InputStream in = null;
	static StringBuffer sb = null;
	static String line = null;
	static String  str=null ;
	String  y="";
	String tar="";
	static String url="";
	
	
	
	
	
	public static  String  GetPageSource(String siteUrl ,String encode){
		String c="";
		String urlStr = siteUrl; // 网址
		try {
            //创建一个url对象来指向要采集信息的网址
            URL url = new URL(urlStr);
            //将读取到的字节转化为字符
//            InputStreamReader inStrRead = new InputStreamReader(url.openStream(),"gb2312");
            InputStreamReader inStrRead = new InputStreamReader(url.openStream(),"utf-8");
            //读取InputStreamReader转化成的字符
            BufferedReader bufRead = new BufferedReader(inStrRead); 
            //读到的内容不为空
            while (bufRead.readLine() != null) {
            	c=c+bufRead.readLine();	
            }
            bufRead.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(c);
		return c ;
	}


	
	
	public static   String  GetPageSource1(String siteUrl ,String encode) throws IOException{
		int statusCode = 0;	
		url =siteUrl ;
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
		if (statusCode!=200) {
			System.out.println("返回 非200");
		}else{
			//读取解析结果
			sb = new StringBuffer();
			in = getMethod.getResponseBodyAsStream();
		//	System.out.println("dfdfddddddddddd"+in);
	
			byte[] ba = getMethod.getResponseBody();
			 str= new String(ba,"UTF-8");  //得到指定编码格式的字符串
			// System.out.println("sssss开始"+str);
			br = new BufferedReader(new InputStreamReader(in));
			while((line=br.readLine())!=null){
				sb.append(line+"\n");
			}
		
			if(br!=null)br.close();
			page = sb.toString();
	//		System.out.println("+++++++++++++"+page);
			//将页面中的相对路径替换成绝对路径，以确保页面资源正常访问
//			str = formatPage(str);
		}
		
			return str ;	
	}
	
	
	
	
	
	public static String delHTMLTag(String htmlStr){ 
        String regEx_script="<script[^>]*?>[\\s\\S]*?<\\/script>"; //����script��������ʽ 
        String regEx_style="<style[^>]*?>[\\s\\S]*?<\\/style>"; //����style��������ʽ 
        String regEx_html="<[^>]+>"; //����HTML��ǩ��������ʽ 
         
        Pattern p_script=Pattern.compile(regEx_script,Pattern.CASE_INSENSITIVE); 
        Matcher m_script=p_script.matcher(htmlStr); 
        htmlStr=m_script.replaceAll(""); //����  
         
        Pattern p_style=Pattern.compile(regEx_style,Pattern.CASE_INSENSITIVE); 
        Matcher m_style=p_style.matcher(htmlStr); 
        htmlStr=m_style.replaceAll(""); //����style��ǩ 
         
        Pattern p_html=Pattern.compile(regEx_html,Pattern.CASE_INSENSITIVE); 
        Matcher m_html=p_html.matcher(htmlStr); 
        htmlStr=m_html.replaceAll(""); //����html��ǩ 

        return htmlStr.trim(); //�����ı��ַ� 
    }
	
	
	
	
	
	
	
	
	
	
	
	public  static  String  DelPageLink(String str){
		
		Pattern pattern1 = Pattern.compile("<a[^<]*?>");
		Matcher matcher1 = pattern1.matcher(str);
		str = matcher1.replaceAll("");

		Pattern pattern2 = Pattern.compile("</a>");
		Matcher matcher2 = pattern2.matcher(str);
		str = matcher2.replaceAll("");

		return str;
	}
	
	

	public  static List GetPageUrl(String url ,int id) throws IOException{
		
		List ls = new ArrayList() ;
		String temp = GetPageSource1(url ,"");
		String result ;
	//	System.out.println("1====="+temp);

		temp =   temp.replace("> <dl>", "@@@@@") ;
		temp =   temp.replace("pagelist", "=====");
		
	     int strStartIndex = temp.indexOf("@@@@@");
	     int strEndIndex = temp.indexOf("=====");
	  //   System.out.println("strStartIndex="+strStartIndex  +"  strEndIndex=="+strEndIndex);
		if(!(strStartIndex<0)&&!(strEndIndex<0)){
			 temp = temp.substring(strStartIndex, strEndIndex).substring(5);
	//		 System.out.println("2====="+temp);
		}

		temp = temp.trim() ;
		temp = temp.replace(" ",""); 
	//	System.out.println("3====="+temp);

		//String ss = "<a[^>]*>([^<]*)</a>";
		String ss =	"<a[^>]*href=(\\\"([^\\\"]*)\\\"|\\'([^\\']*)\\'|([^\\\\s>]*))[^>]*>(.*?)</a>" ;
		Pattern ATTR_PATTERN = Pattern.compile(ss, Pattern.CASE_INSENSITIVE);
		if (StringUtils.hasText(temp)) {
			Matcher matcher = ATTR_PATTERN.matcher(temp);
			int i=1;
			while (matcher.find()) {
				String s= matcher.group(1) ;
				if(ls.contains(s))
				{   
				}else{
					System.out.println("文章页："+s);
					ls.add(s);
				}
			}
		}
//		for 获取数据库内容 进行的操作 ，比如1.是获取圆满 2.去空格 3.截取字符串 列表链接中的字符串  4.对字符串中的文章链接进行提取5.结果封装到list中
//		for(){	
//		}

		return ls;
	}
	

	
	
	public  static List GetPageContent(String url ,int id) throws IOException{
		List ls = new ArrayList() ;
		String temp = GetPageSource1(url ,"");
		String tem =temp;
		
	//	System.out.println("ttttttttttt:"+temp);
		
		temp =   temp.replace("<TITLE>", "@@@@@") ;
		temp =   temp.replace("_健康无忧网</TITLE>", "=====");
		
	     int strStartIndex = temp.indexOf("@@@@@");
	     int strEndIndex = temp.indexOf("=====");
	   // System.out.println("strStartIndex="+strStartIndex  +"  strEndIndex=="+strEndIndex);
		if(!(strStartIndex<0)&&!(strEndIndex<0)){
			 temp = temp.substring(strStartIndex, strEndIndex).substring(5);
			 System.out.println("标题"+temp);
			 ls.add(temp);
		}

		tem =   tem.replace("art_l.js", "@@@@@") ;
		
		if(!(tem.indexOf("该文章")<0)){
			tem =   tem.replace("该文章", "=====");
			System.out.println("该文章");
		}else if(!(tem.indexOf("class=cupage")<0)){
			tem =   tem.replace("class=cupage", "=====");
//			System.out.println("免责声明");
		}else{
			System.out.println("未定位到");
		}
		
	     int strStartIndex1 = tem.indexOf("@@@@@");
	     int strEndIndex1 = tem.indexOf("=====");
	     System.out.println("strStartIndex1="+strStartIndex1  +"  strEndIndex1=="+strEndIndex1+" all:"+tem.length());
		if(!(strStartIndex1<0)&&!(strEndIndex1<0)){
			
			tem = tem.substring(strStartIndex1, strEndIndex1) ;
//			 tem = tem.substring(strStartIndex1, strEndIndex1).substring(5);
		//	 System.out.println("content=="+tem);
			 ls.add(tem);
		}

		return ls;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
