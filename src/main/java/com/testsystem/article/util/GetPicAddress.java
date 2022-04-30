package com.testsystem.article.util;

import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GetPicAddress {

	

	public  static String   GetPicId(String s){  // feiqi
String rs="";
	int i=0 ;
	 Pattern p=Pattern.compile("src=['\"]?(.*?)['\"]");
	//	 Pattern p=Pattern.compile("<img[^<>]*?\\ssrc=['\"]?(.*?)['\"]?\\s.*?>");
		 System.out.println();
		 Matcher m=p.matcher(s);
		 while(m.find()){      
			  rs=m.group().substring(5, m.group().length()-1)  ;
			}
		 if(i==0){
			 String[] temp = {"/pic/0.jpg","/pic/1.jpg","/pic/3.jpg","/pic/4.jpg","/pic/5.jpg","/pic/6.jpg","/pic/7.jpg" };
			 int index = (int) (Math.random() * temp.length);// �����������鳤�ȣ���ô���ȡֵ����0-length֮��
			 System.out.println(temp[index]);
			 rs=temp[index] ;
			 
			    Integer min = 1;
			    Integer max = 412;
			    Random random = new  Random();
			    int result = random.nextInt(max) % (max-min+1) + min;
			 
			 rs="/pic/de/"+result+".jpg";
		 }
		return  rs;
	}
	
	
	
	
	
	
	
	
	public  static String   GetPicId(String s ,String f){
		String rs="";
			int i=0 ;
			 Pattern p=Pattern.compile("src=['\"]?(.*?)['\"]");
			//	 Pattern p=Pattern.compile("<img[^<>]*?\\ssrc=['\"]?(.*?)['\"]?\\s.*?>");
				 System.out.println();
				 Matcher m=p.matcher(s);
				 
				 while(m.find()){    
					 String temp ;
					 rs=m.group().substring(5, m.group().length()-1)  ;
					 if(rs.indexOf("http:")==0) {
						 System.out.println("网络图片不要"+rs );
					 }else{
						    temp=f+rs ;
						    File file=new File(temp);  
						    if(file.exists())  
						    {   i++;
					            System.out.println("图片文件"+temp +"存在");
					            break;
						    } else {
						    	System.out.println("图片文件"+temp +"不存在");
						    } 
					 }
					}
				 
				 if(i==0){
					 String[] temp = {"/pic/0.jpg","/pic/1.jpg","/pic/3.jpg","/pic/4.jpg","/pic/5.jpg","/pic/6.jpg","/pic/7.jpg" };
					 int index = (int) (Math.random() * temp.length);// �����������鳤�ȣ���ô���ȡֵ����0-length֮��
					 System.out.println(temp[index]);
					 rs=temp[index] ;
					 
					    Integer min = 1;
					    Integer max = 412;
					    Random random = new  Random();
					    int result = random.nextInt(max) % (max-min+1) + min;
					   rs="/pic/de/"+result+".jpg";
					 
				 }
				 
				return  rs;
			}
			
	
	
	
	
	
	
	
	public  static  String  GetArtilcleDelHtml(String kkk){
		
//		kkk = "<font color=red ><b><u>AA</u></b></font>,HEHE,BSADBA<font color='red' ><b><u>CC</u></b></font>";
		kkk = kkk.replaceAll("<[A-z/ =']*>", "");
		System.out.println(kkk);
		
		return kkk;	
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
    public static String delSpace(String htmlStr){ 
        htmlStr = htmlStr.replaceAll("\n", "");
        htmlStr = htmlStr.replaceAll("\t", "");
        return htmlStr.trim(); //�����ı��ַ� 
    }

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
