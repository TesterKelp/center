package com.testsystem.wx.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

import org.testng.annotations.Test;

import com.alibaba.fastjson.JSONObject;
import com.testsystem.wx.menu.AccessToken;
import com.testsystem.wx.menu.CommonUtil;
import com.testsystem.wx.menu.MyX509TrustManager;
import com.testsystem.wx.menu.WeixinUtil;




public class TokenTest {

//    @Test
    public void testGetToken1() throws Exception {
        String tokenUrl = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wxe51fe1418d9cad91&secret=c0ca5e39e1c969a33cac8c186d23ff29";
        // 建立连接
        URL url = new URL(tokenUrl);
        HttpsURLConnection httpUrlConn = (HttpsURLConnection) url.openConnection();

        // 创建SSLContext对象，并使用我们指定的信任管理器初始化
        TrustManager[] tm = { new MyX509TrustManager() };
        SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
        sslContext.init(null, tm, new java.security.SecureRandom());
        // 从上述SSLContext对象中得到SSLSocketFactory对象
        SSLSocketFactory ssf = sslContext.getSocketFactory();

        httpUrlConn.setSSLSocketFactory(ssf);
        httpUrlConn.setDoOutput(true);
        httpUrlConn.setDoInput(true);

        // 设置请求方式（GET/POST）
        httpUrlConn.setRequestMethod("GET");

        // 取得输入流
        InputStream inputStream = httpUrlConn.getInputStream();
        InputStreamReader inputStreamReader = new InputStreamReader(
                inputStream, "utf-8");
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        // 读取响应内容
        StringBuffer buffer = new StringBuffer();
        String str = null;
        while ((str = bufferedReader.readLine()) != null) {
            buffer.append(str);
        }
        bufferedReader.close();
        inputStreamReader.close();
        // 释放资源
        inputStream.close();
        httpUrlConn.disconnect();
        // 输出返回结果
        System.out.println(buffer);
    }

//    @Test
    public void testGetToken2() {
//        AccessToken token = CommonUtil.getToken("appID","appsecret");
        AccessToken token = CommonUtil.getToken("wxe51fe1418d9cad91","c0ca5e39e1c969a33cac8c186d23ff29");
        System.out.println("access_token:"+token.getAccessToken());
        System.out.println("expires_in:"+token.getExpiresin());
    }
    
    @Test
    public  void  TES(){
    	
    	// 第三方用户唯一凭证
    			String appId = "wxe51fe1418d9cad91";
    			// 第三方用户唯一凭证密钥
    			String appSecret = "c0ca5e39e1c969a33cac8c186d23ff29";
    			// 调用接口获取access_token
    			AccessToken at = WeixinUtil.getAccessToken(appId, appSecret);
    	
    	 final String access_token_url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";
    	
    	 String menu_get_url = "https://api.weixin.qq.com/cgi-bin/menu/get?access_token=ACCESS_TOKEN";
    	    
    	  String url = menu_get_url.replace("ACCESS_TOKEN", at.getAccessToken());
    	  JSONObject jsonObject = WeixinUtil.httpRequest(url, "GET", "dddd");
    	 
    	 System.out.println(jsonObject);
    	
    	 
    	 
    	 
    }
    
    
    
    
    
}
