package com.testsystem.wx.vo;

public class TextMessage
{
  private String ToUserName;
  private String FromUserName;
  private String CreateTime;
  private String MsgType;
  private String Content;
  private String MsgId;

  

  public String getToUserName() {
	return ToUserName;
}



public void setToUserName(String toUserName) {
	ToUserName = toUserName;
}



public String getFromUserName() {
	return FromUserName;
}



public void setFromUserName(String fromUserName) {
	FromUserName = fromUserName;
}



public String getCreateTime() {
	return CreateTime;
}



public void setCreateTime(String createTime) {
	CreateTime = createTime;
}



public String getMsgType() {
	return MsgType;
}



public void setMsgType(String msgType) {
	MsgType = msgType;
}



public String getContent() {
	return Content;
}



public void setContent(String content) {
	Content = content;
}



public String getMsgId() {
	return MsgId;
}



public void setMsgId(String msgId) {
	MsgId = msgId;
}



public TextMessage(String toUserName, String fromUserName, String createTime, String msgType, String content, String msgId)
  {
    this.ToUserName = toUserName;

    this.FromUserName = fromUserName;

    this.CreateTime = createTime;

    this.MsgType = msgType;

    this.Content = content;

    this.MsgId = msgId;
  }



public TextMessage() {
	// TODO Auto-generated constructor stub
}




}