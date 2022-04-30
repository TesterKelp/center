package com.testsystem.name.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

public class DownPic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			
		
		String  urlString ="";
		for(int i=1;i<51;i++){
			
		//	urlString ="http://www.ibazi.cn/free/chouqian/data/images/hdx/"+i+".jpg" ;
			//urlString ="http://www.ibazi.cn/free/chouqian/data/images/mz/1.jpg";
			urlString ="http://www.ibazi.cn/free/chouqian/data/images/wg/"+i+".png";
			//urlString ="https://i.zgjm.org/chouqian/img/zhuge.jpg";
			
			try {
				download(urlString,  i);
				System.out.println("down:"+urlString);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
			
		}
		
		
		 	
		
		
		
		
		
		
		
		
		
	}

	
	public static void download(String urlString, int i) throws Exception {
	       // 构造URL
	       URL url = new URL(urlString);
	       // 打开连接
	       URLConnection con = url.openConnection();
	       // 输入流
	       InputStream is = con.getInputStream();
	       // 1K的数据缓冲
	       byte[] bs = new byte[1024];
	       // 读取到的数据长度
	       int len;
	       // 输出的文件流
	       String filename = "c:\\ppp/" + i + ".jpg";  //下载路径及下载图片名称
	       File file = new File(filename);
	       FileOutputStream os = new FileOutputStream(file, true);
	       // 开始读取
	       while ((len = is.read(bs)) != -1) {
	           os.write(bs, 0, len);
	       }
	       System.out.println(i);
	       // 完毕，关闭所有链接
	       os.close();
	       is.close();
	   }
	
	
	
	
	
	
	
	
	
}
