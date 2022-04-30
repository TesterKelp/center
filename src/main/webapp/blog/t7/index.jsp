<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${member.username}博客</title>
   <link href="/blog/t7/images/common.css" type="text/css" rel="stylesheet"/>
   <link href="/blog/t7/images/new_contentplayer.css" rel="stylesheet" type="text/css"></link>
	<link href="/blog/t7/images/zimeiti.css" type="text/css" rel="stylesheet"/>
    <script src="/blog/t7/images/tangram-1.5.2.2.js" type="text/javascript"></script>
</head>
<body>

	<div id="header" alog-group="log-header">
		<div class="header-content">
			<div id="menu"><a href="/blog/${member.userid}.do" class="current">首页</a></div>
			<div id="usrbar">
				<c:forEach items="${ldt}" var="a" varStatus="status">
					<a href="/blog/${member.userid}/${a.blogcateid}/1.do">${a.blogcatename}</a>|
				</c:forEach>
			</div>
		</div>
	</div>

	<!--div id="focustop"-->
<div id="body" class="clearfix">
    <!--div class="content clearfix"-->
    <div class="l-main-col">

             <div class="mod tbox" id="today_news" alog-group="log-todaynews">
                <div class="hd"><h3>今日推荐</h3></div> 
                <div class="bd" style="overflow:hidden;width:638px;">
                     <ul class="w-ul ulist" style="width:690px">
                                             
                              
                          <c:forEach items="${lst}" var="p" varStatus="status" begin="1" end="10" step="1">     
                              <li><a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do" class="art-title">${p.articletitle}</a>
                              <a href="#" class="art-author">${member.username}</a></li>  
                              
                           </c:forEach>                     
                                            
                                                </ul>
                </div>
            </div>


<c:forEach items="${ldt}" var="aa" varStatus="sta">
<c:set var="index" value="1" />
<c:if test="${sta.index % 2 == 0 }">

			<div class="mod lbox fl" alog-group="log-category-1">
				<div class="hd"><h3>${aa.blogcatename}</h3>
					<span class="ext"></span><a href="/blog/${member.userid}/${aa.blogcateid}/1.do"  target="_blank" class="more">更多>></a>
				</div>
				<div class="bd">
					<ul class="w-ul ulist">
			
						
		<c:forEach items="${lst}" var="a" varStatus="status">
           <c:if test="${aa.blogcatename == a.blogcatename }">
           <c:if test="${index<12}"> 
          <li><a href="/blog/${member.userid}/${a.blogcateid}/b_${a.articleid}.do">${a.articletitle}</a></li>
          <c:set var="index" value="${index+1}" />
          </c:if>
          
        </c:if>
         </c:forEach> 	
						
						
						
					</ul>
				</div>
			</div>

  </c:if>
<c:if test="${sta.index % 2 == 1 }">
			<div class="mod lbox fr" alog-group="log-category-2">
				<div class="hd"><h3>${aa.blogcatename}</h3>
					<span class="ext"></span><a href="/blog/${member.userid}/${aa.blogcateid}/1.do" class="more">更多>></a>
				</div>
				<div class="bd">
					<ul class="w-ul ulist">
		
		<c:forEach items="${lst}" var="a" varStatus="status">
           <c:if test="${aa.blogcatename == a.blogcatename }">
                     <c:if test="${index<12}"> 
          <li><a href="/blog/${member.userid}/${a.blogcateid}/b_${a.articleid}.do">${a.articletitle}</a></li>
          <c:set var="index" value="${index+1}" />
          </c:if> </c:if>
         </c:forEach> 
						
						
					</ul>
				</div>
			</div>
			
	 </c:if>		
	</c:forEach> 		
	
	
	
	
	
	
	
	
	
                    
                    
                </div>

    <div class="l-right-col">
			<div class="mod" id="artical" alog-group="log-hotartical-num">
				<div class="hd">
					<h3>
						热门文章<span>HOT</span>
					</h3>
				</div>
				<div class="bd">
					<ul class="artical-top artical-top-num">
 						<c:forEach items="${lst}" var="p" varStatus="v" begin="1" end="10" step="1">     
                            <li><a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do">${p.articletitle}</a></li>    
                           </c:forEach>
					</ul>
				</div>
			</div>


			<div class="mod" id="author_list" alog-group="log-recommend">
<div class="hd"><h3>精品专题<span>TOPIC</span></h3></div>
<div class="bd">


<c:forEach items="${topiclist}" var="t">
<div class="author-m clearfix">
    <div class="author-pic"><a href="/${t.item_directorie}/topiccover_${t.topicid}.do"><img src="${t.topicimage}"></a></div>
    <div class="author-name"><a href="/${t.item_directorie}/topiccover_${t.topicid}.do">${t.topicname}</a></div>
    <div class="author-artical"><a href="/${t.item_directorie}/topiccover_${t.topicid}.do">${t.topicintro}</a></div>
</div>
</c:forEach>



</div>
</div>

		
	</div>

</div>
<div id="footer" alog-group="log-footer">
<p class="site-nav">
${member.username}博客
</p>
</div>


<script>var on=baidu.event.on;Fe = baidu;</script>
<script src="images/new_contentplayer_utf8.js"></script>
<script type="text/javascript" src="images/usermonitor.js"></script>
<script src="images/clickMonitor.js"></script>
<script src="images/slide.js"></script>

</body>
</html>