<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>${member.username}博客_${article.articletitle}_${blogCate.blogcatename}</title>
	<script src="/blog/t7/images/tangram-1.5.2.2.js" type="text/javascript"></script>
	<script src="/blog/t7/images/clickMonitor.js"></script>
    <script type="text/javascript" src="/blog/t7/images/usermonitor.js"></script>
	<script src="/blog/t7/images/baiduTemplate.js"></script>
	<link href="/blog/t7/images/common.css" type="text/css" rel="stylesheet"/>
	<link href="/blog/t7/images/zimeiti.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<script type="text/javascript" language="javascript">
        clickMonitor.init('BAIJIA_PAGE', 'c=article');
</script>
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


<div id="body" class="clearfix">
    <div class="l-main-col" style="white-space:normal;word-wrap: break-all; word-break:break-all;width:100%"  id="detail">
         <div id="page" style="padding-bottom:0px;">
             <h1 style="font:bold 34px/40px 微软雅黑;color:#333;padding-left:0px;border-left:0px;margin:30px 0;">${article.articletitle}</h1>
             <div class="article-info">
                 <div class="article-author-time">
                     <a href="/blog/${member.userid}.do">${member.username}</a><span class="time">${article.creattime}</span>
                 </div>
              </div>

                          <blockquote style="text-indent:0px;color:#333;font-size:14px;line-height:24px;"><span style="color:#999;">摘要 : </span>
							${article.articleitd} </blockquote>
                          <div class="article-detail" style="letter-spacing: 0.5px;" > 
                          <p>  ${article.articlecontent}</p>
                          <br><br><br>
                         </div>
        </div>
   
        <!--拓展阅读-->
                <!--作家卡片-->
        <div class="author-m" style="margin: 0 20px 20px;background:#fbfbfb;padding:10px 20px;border: 1px solid #eaeaea;">
        <div style="border-bottom:1px dotted #ccc;padding-bottom:10px;height:24px;"><h1 style="float:left;margin-right:30px;font-size:16px;"><a href="#" style="color:#333;" mon="name=bjcard&pos=name">${member.username}</a></h1><span style="font-size:14px;color:#999;float:left;position:relative;top:2px;display:block;width:350px;height:18px;overflow:hidden;">分享者</span><a href="/blog/${member.userid}.do" style="color:#369;font-size:12px;float:right;position:relative;top:5px;" mon="name=bjcard&pos=morearticle">TA的更多文章>></a></div>
            <div style="margin-top:15px;">
                <div class="author-pic" style="margin-left:10px;">
                    <a href="#">
                        <img src="${member.useravatar }">
                    </a>
                </div>
                <ul class="author-artical" style="font-size:14px;padding-top:0px;margin-left:100px;position:relative;top:-6px;height:78px;">
                        <c:forEach items="${ltt}" var="t"  begin="0" end="2" step="1">                                           
                            <li style="padding: 5px 0 0 8px;background: url(/blog/t7/images/dot.png) no-repeat left 15px;">
                            <span style="float:right;color:#bbb;">${t.creattime}</span>
                            <a href="/blog/${member.userid}/${t.blogcateid}/b_${t.articleid}.do" style="color:#369;" target="_blank">${t.articletitle}</a></li>
                                    
                 </c:forEach>                                            
                                                           
                                                            </ul>
            </div>
        </div>
       
            </div>





<div id="footer" alog-group="log-footer">
<p class="site-nav">
${member.username}博客
</p>
</div>


<script>
	var o = document.getElementById("detail");
	var imgs = document.getElementById("detail").getElementsByTagName("img") ;
	for(var i=0; i<imgs.length; i++){
    if(imgs[i].width > o.offsetWidth){
    	 imgs[i].style["max-width"] = o.offsetWidth - 30 + "px";
    }	
    }  
</script>



</body>
</html>