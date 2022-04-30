package com.testsystem.article.vo;

public class Blog {

	int articleid ;
	int cateid ;
	String articletitle ;
	String articlecontent ;
	int userid ;
	int blogcateid ;
	String createtime ;
	int articletype ;
	int topicid ;
	String  picaddress ;
	String  articleitd ;
	
	
	
	public String getArticleitd() {
		return articleitd;
	}
	public void setArticleitd(String articleitd) {
		this.articleitd = articleitd;
	}
	public String getPicaddress() {
		return picaddress;
	}
	public void setPicaddress(String picaddress) {
		this.picaddress = picaddress;
	}
	public int getTopicid() {
		return topicid;
	}
	public void setTopicid(int topicid) {
		this.topicid = topicid;
	}
	public int getArticleid() {
		return articleid;
	}
	public void setArticleid(int articleid) {
		this.articleid = articleid;
	}
	public int getCateid() {
		return cateid;
	}
	public void setCateid(int cateid) {
		this.cateid = cateid;
	}
	public String getArticletitle() {
		return articletitle;
	}
	public void setArticletitle(String articletitle) {
		this.articletitle = articletitle;
	}
	public String getArticlecontent() {
		return articlecontent;
	}
	public void setArticlecontent(String articlecontent) {
		this.articlecontent = articlecontent;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getBlogcateid() {
		return blogcateid;
	}
	public void setBlogcateid(int blogcateid) {
		this.blogcateid = blogcateid;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public int getArticletype() {
		return articletype;
	}
	public void setArticletype(int articletype) {
		this.articletype = articletype;
	}
	
	
}
