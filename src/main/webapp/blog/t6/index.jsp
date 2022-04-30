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
<script src="/blog/t6/css/jquery.min.js"></script>

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


 <div style="float:right ;height: 42px; line-height:42px;" id="defect"></div>

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
<div id="article" style="width:99%">
<!-- <div id="arc-info"></div>  -->

<div id="contents-detail" >



  <c:forEach items="${ldt}" var="aa" varStatus="sta">
						<c:set var="index" value="1" />
  
  <dl style="width:30%">
  <dt><a href="/blog/${member.userid}/${aa.blogcateid}/1.do">${aa.blogcatename}</a></dt>
  
  	<c:forEach items="${lst}" var="a" varStatus="status">
									<c:if test="${index<11}">
										<c:if test="${aa.blogcateid == a.blogcateid }">
                               
						<dd style="height:25px;">${index}&nbsp;<a href='/blog/${member.userid}/${a.blogcateid}/b_${a.articleid}.do'>${a.articletitle}</a></dd>			
									
											<c:set var="index" value="${index+1}" />
										</c:if>
									</c:if>
								</c:forEach>
  
  
  </dl>
  </c:forEach>
  
  
  
  
  
  
  
  
  
 
  </div>

</div>
</div>

</div>                           
<div id="footer">                                                            
<ul id="nav-bottom" class="clearfix" >
<li  style="text-align:center ; "><a href="/blog/${member.userid}.do" target="_blank" style="text-align:center;display:inline-block;">${member.username}的博客</a></li>
</ul>
</div>

<script type="text/javascript">
$.ajax({
	type : "GET",
	url : "/blog/getUserName.do",
	dataType : "text",
	success : function(data) {
	//	alert(data);
		var  aa=	document.getElementById("defect").innerHTML;
		var  bb= document.getElementById("defect");
		bb.innerHTML=aa+data ;
	}
});	
</script>
</body>
</html>