<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/blog/t6/css/com.css" rel="stylesheet">
<link href="/blog/t6/css/yy.css" rel="stylesheet">
<title>${member.username}博客</title>
</head>
<body>
<div id="header" class="clearfix">
<a class="left" href="/blog/${member.userid}.do" style="padding-top:10px;padding-left:30px;padding-right:35px;background: #FF9900;height:42px;">${member.username}的博客</a>

<ul id="nav-main" class="hover-none left clearfix">
<li><a href="/blog/${member.userid}.do">首页</a></li>

				<c:forEach items="${ldt}" var="a" varStatus="status">
					<li><a href="/blog/${member.userid}/${a.blogcateid}/1.do">${a.blogcatename}</a></li>
				</c:forEach>


</ul>
<span id="sidebar-toggle" class="toggle-btn" toggle-target="#sidebar">目录 <span class="glyphicon"></span></span>
</div>

<div id="main" class="clearfix">
<div id="sidebar" class="toggle-target">
<div id="contents" style="min-height:800px;">



<dd>

<dt>精品专题</dt>
<dl class="dl-sub">
<c:forEach items="${topiclist}" var="t">
<dd>专题： <a href="/${t.item_directorie}/topiccover_${t.topicid}.do">${t.topicname}</a></dd>
	</c:forEach>

</dl>
</dd>



<dd>
<dt>文章标签</dt>
<dl class="dl-sub" style="  position: relative;">
<c:forEach items="${tagLst}" var="a" varStatus="status">
	<dd > <a href="/${a.item_directorie}/tag/${a.tagid}.do">${a.tagname}</a></dd>								
</c:forEach>
</dl>
</dd>
<div  style="clear:both"></div>




</div>
</div>

<div id="article-wrap">
<div id="article">
<div id="arc-info"></div>

<h1 style="">${article.articletitle}</h1>

<div id="arc-body">

</div>

<div id="contents-detail">

<div style="text-indent:0px;color:#333;font-size:14px;line-height:24px;padding:15px 20px; margin:20px 0; border:1px dashed #eaeaea; background:#fbfbfb; font-size:12px; ">  <span style="color:#999;">摘要 : </span>
							${article.articleitd}             </div>

<div style="padding:15px 20px; margin:20px 0;">
  ${article.articlecontent}
</div>

  
  

  </div>

</div>
</div>

</div>
<div id="footer">
<ul id="nav-bottom" class="clearfix">
<li><a href="/blog/${member.userid}.do" target="_blank">${member.username}的博客</a></li>
</ul>
</div>


</body>
</html>