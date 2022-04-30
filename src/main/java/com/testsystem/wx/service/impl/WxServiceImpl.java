

package com.testsystem.wx.service.impl;


import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.testsystem.wx.service.WxService;
import com.testsystem.wx.util.MessageUtil;
import com.testsystem.wx.vo.TextMessage;
@Service
public class WxServiceImpl implements WxService {

	@Override
	public String weixinPost(HttpServletRequest request) {
		// TODO Auto-generated method stub
		 String respMessage = null;
		    try
		    {
		     Map<String, String> requestMap = MessageUtil.xmlToMap(request);
		      String fromUserName = (String)requestMap.get("FromUserName");
		      String toUserName = (String)requestMap.get("ToUserName");
		      String msgType = (String)requestMap.get("MsgType");
		      String content = (String)requestMap.get("Content");
		      System.out.println("FromUserName is:" + fromUserName + ", ToUserName is:" + toUserName + ", MsgType is:" + msgType + "content is:" + content);
		      System.out.println("msgType=" + msgType + "MessageUtil.REQ_MESSAGE_TYPE_TEXT=" + "text");
		      if (msgType.equals("text"))
		      {
		        if (content.equals("孟")) {
		          System.out.println("jinru meng!");
		          content = content + "祥彬";
		          System.out.println("返回内容=" + content);
		        } else if (content.equals("xxx"))
		        {
		          content = content + "这个姓 还没有呢！";
		        } else if (content.equals("免费起名"))
		        {
		          content = "<a href=\"http://www.004.la/name/WxNameDetail.do?nameid=0\">点击免费起名</a>";
		        } else if (content.equals("12"))
		        {
		          content = "<a href=\"http://www.004.la/name/NameDetail.do?nameid=1\">点击查看名字</a><br> <a href=\"http://www.004.la/name/NameDetail.do?nameid=446\">名字</a>";
		        } else {
		          content = content + "没有您要找的信息";
		        }

		        TextMessage text = new TextMessage();
		        text.setContent(content);
		        text.setToUserName(fromUserName);
		        text.setFromUserName(toUserName);
		        text.setCreateTime(new Date().getTime()+"");
		        text.setMsgType(msgType);
		        System.out.println("1==");
		        respMessage = MessageUtil.textMessageToXml(text);

		        System.out.println("2==");
		        System.out.println("2==============" + respMessage);


		        
		        
		        

//		      if (!(msgType.equals("event"))) 
//		      String eventType = (String)requestMap.get("Event");

//		      if (eventType.equals("subscribe"))
//		      {
//		        TextMessage text = new TextMessage();
//		        text.setContent("欢迎关注，xxx");
//		        text.setToUserName(fromUserName);
//		        text.setFromUserName(toUserName);
//		        text.setCreateTime(new Date().getTime()+"");
//		        text.setMsgType("text");
//		        respMessage = MessageUtil.textMessageToXml(text);
//		      }
		      
		      
//		      if ((eventType.equals("unsubscribe")) || (!(eventType.equals("CLICK"))))
//		      String eventKey = (String)requestMap.get("EventKey");
//		      if (!(eventKey.equals("customer_telephone")))
//		      TextMessage text = new TextMessage();
//		      text.setContent("0755-86671980");
//		      text.setToUserName(fromUserName);
//		      text.setFromUserName(toUserName);
//		      text.setCreateTime(new Date().getTime()+"");
//		      text.setMsgType("text");
//		      respMessage = MessageUtil.textMessageToXml(text);
		    }
		   }
		    catch (Exception e)
		    {
		      System.out.println("error......");
		    }
		    System.out.println("3=");
		    System.out.println("service return value:" + respMessage);
		    return respMessage;
	}

}
