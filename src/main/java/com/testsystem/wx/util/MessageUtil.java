package com.testsystem.wx.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.testsystem.wx.vo.TextMessage;
import com.thoughtworks.xstream.XStream;

public class MessageUtil {
    
    /** 
     * 返回消息类型：文本 
     */  
    public static final String RESP_MESSAGE_TYPE_TEXT = "text";  
  
    /** 
     * 返回消息类型：音乐 
     */  
    public static final String RESP_MESSAGE_TYPE_MUSIC = "music";  
  
    /** 
     * 返回消息类型：图文 
     */  
    public static final String RESP_MESSAGE_TYPE_NEWS = "news";  
  
    /** 
     * 请求消息类型：文本 
     */  
    public static final String REQ_MESSAGE_TYPE_TEXT = "text";  
  
    /** 
     * 请求消息类型：图片 
     */  
    public static final String REQ_MESSAGE_TYPE_IMAGE = "image";  
  
    /** 
     * 请求消息类型：链接 
     */  
    public static final String REQ_MESSAGE_TYPE_LINK = "link";  
  
    /** 
     * 请求消息类型：地理位置 
     */  
    public static final String REQ_MESSAGE_TYPE_LOCATION = "location";  
  
    /** 
     * 请求消息类型：音频 
     */  
    public static final String REQ_MESSAGE_TYPE_VOICE = "voice";  
  
    /** 
     * 请求消息类型：推送 
     */  
    public static final String REQ_MESSAGE_TYPE_EVENT = "event";  
  
    /** 
     * 事件类型：subscribe(订阅) 
     */  
    public static final String EVENT_TYPE_SUBSCRIBE = "subscribe";  
  
    /** 
     * 事件类型：unsubscribe(取消订阅) 
     */  
    public static final String EVENT_TYPE_UNSUBSCRIBE = "unsubscribe";  
  
    /** 
     * 事件类型：CLICK(自定义菜单点击事件) 
     */  
    public static final String EVENT_TYPE_CLICK = "CLICK";  
    
    
    
    
    public static Map<String, String> xmlToMap(HttpServletRequest request)
    	    throws IOException
    	  {
    	    Map map = new HashMap();
    	    SAXReader reader = new SAXReader();

    	    InputStream ins = null;
    	    try {
    	      ins = request.getInputStream();
    	    } catch (IOException e1) {
    	      e1.printStackTrace();
    	    }
    	    Document doc = null;
    	    try {
    	      Map localMap1;
    	      doc = reader.read(ins);
    	      Element root = doc.getRootElement();

    	      List list = root.elements();

    	      for (Iterator localIterator = list.iterator(); 
    	    		  localIterator.hasNext(); ) { Element e = (Element)localIterator.next();
    	        map.put(e.getName(), e.getText());
    	      }

    	      return map;
    	    } catch (DocumentException e1) {
    	      e1.printStackTrace();
    	    } finally {
    	      ins.close();
    	    }

    	    return map;
    	  }
    
    
    
    
    
    
    
    
    public static String textMessageToXml(TextMessage textMessage)
    {
      System.out.println("转化内容：" + textMessage.getContent());
      System.out.println("textMessage.getClass()：" + textMessage.getClass());
      XStream xstream = new XStream();

      xstream.alias("xml", textMessage.getClass());
      System.out.println("666");
      System.out.println("xstream.toXML" + xstream.toXML(textMessage));
      return xstream.toXML(textMessage);
    }
    
    
    
    
}