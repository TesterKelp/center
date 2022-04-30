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

<h1 style="">${blogCate.blogcatename }</h1>
<div id="arc-body">

</div>

<div id="contents-detail">

   <c:forEach items="${lst}" var="p" varStatus="sta">
   
    <c:if test="${sta.index % 2 == 1 }">
       <dd class="" style="line-height: 38px;padding-left: 12px;"><a  href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do" >${p.articletitle}</a></dd>
    </c:if>
   
    <c:if test="${sta.index % 2 == 0 }">
		<dd class="bg-f7f7f7" style="line-height: 38px;padding-left: 12px;"> <a  href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do" >${p.articletitle}</a></dd>
    </c:if>


</c:forEach>
  
  </div>
  
  
  
  
  
  <style>
a{ text-decoration:none}
#n{margin:10px auto; width:920px; border:1px solid #CCC;font-size:12px; line-height:30px;}
#n a{ padding:0 4px; color:#333}
/* 以上CSS与模块无关 */
.ep-pages{padding:10px 12px;clear:both;text-align:center;font-family:Arial, "\5B8B\4F53", sans-serif;font-size:14px;vertical-align:top}
.ep-pages a, .ep-pages span{display:inline-block;height:23px;line-height:23px;padding:0 8px;margin:5px 1px 0 0;background:#fff;border:1px solid #e5e5e5;overflow:hidden;vertical-align:top}
.ep-pages a:hover{background:#2b5885;border:1px solid #cc1b1b;text-decoration:none}
.ep-pages a, .ep-pages a:visited{color:#252525}
.ep-pages a:hover, .ep-pages a:active{color:#ffffff}
.ep-pages .current{background:#26517e;border:1px solid #cc1b1b;color:#fff}
.ep-pages a.current, .ep-pages a.current:visited{color:#ffffff}
.ep-pages a.current:hover, .ep-pages a.current:active{color:#ffffff}
.ep-pages-ctrl{font-family:"\5B8B\4F53", sans-serif;font-weight:bold;font-size:16px}
.ep-pages-e5e5e5{color:#e5e5e5}
.ep-pages-all{font-size:12px;vertical-align:top}
</style> 
<div class="ep-pages">
			<c:forEach var="i" begin="1" end="${TotalPage}" step="1">  
                <c:if test="${(pageNum == i)}">   <a href="#"  class="current">${i}</a>     </c:if>  
     			<c:if test="${!(pageNum == i)}">   <a href="/blog/${member.userid}/${blogCate.blogcateid}/${i}.do">${i}</a>    </c:if>  
    		</c:forEach>
             <c:if test="${(pageNum == TotalPage)}">  <a href="/blog/${member.userid}/${blogCate.blogcateid}/${TotalPage}.do" >尾页</a>  </c:if> 
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