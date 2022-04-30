<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>${member.username}博客--${blogCate.blogcatename }</title>
	<script src="/blog/t7/images/tangram-1.5.2.2.js" type="text/javascript"></script>
	<script src="/blog/t7/images/clickMonitor.js"></script>
	<script type="text/javascript" src="/blog/t7/images/usermonitor.js"></script>
    <script src="/blog/t7/images/baiduTemplate.js"></script>
    <script>
        var on=baidu.event.on;Fe = baidu;
        var PAGE_DATA = {
                page:1,
                pagesize:20,
                labelid:'11665',
                artical_list_num: 20
             }
    </script>
	<link href="/blog/t7/images/common.css" type="text/css" rel="stylesheet"/>
	<link href="/blog/t7/images/zimeiti.css" type="text/css" rel="stylesheet"/>
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

<div id="body" class="clearfix">
    <div class="l-main-col">
 		<div id="page_title">
             <h1>${blogCate.blogcatename }</h1>
	 	</div>
        <div class="feeds" id="feeds">
        
        
        

 <c:forEach items="${lst}" var="p">
  <div class="feeds-item" id="item-5418">
 
    <div class="feeds-item-detail clearfix " style="padding-top:20px;padding-bottom:5px;">
                <p class="feeds-item-pic"><a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do" class="feeds-item-more" mon="col=13&pn=3&a=12"><img src="${p.picaddress}"/></a></p>
                <p class="feeds-item-text">
                <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do">${p.articletitle}</a> <Br>
                
                
                
                	<c:if test="${fn:length(p.articleitd)>100 }">${ fn:substring( p.articleitd ,0,100)} ...</c:if>
       				 <c:if test="${fn:length(p.articleitd)<=100 }">${  p.articleitd }</c:if>
                <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do" class="feeds-item-more" mon="col=13&pn=1">[详细]</a></p>
        <p class="feeds-item-info">
            <span>${p.creattime}</span>
         </p>
    </div>
</div>

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
    <div class="l-right-col">
 
               
                 <div class="mod" id="artical" alog-group="log-hotartical-num" style="height:auto">
    <div class="hd"><h3>热门排行<span>HOT</span></h3></div>
    <div class="bd">
        <ul class="artical-top artical-top-num">
               
 						<c:forEach items="${lst}" var="p" varStatus="v" begin="1" end="10" step="1">     
                            <li><a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do">${p.articletitle}</a></li>    
                           </c:forEach>
					</ul>
                                            
    </div>
</div>      
               
               
               
           
               
               
               
               
                <div class="mod" id="author_list" alog-group="log-recommend">
                      
<div class="hd"><h3>专题<span>TOPIC</span></h3></div>
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



<!-- Baidu Button BEGIN -->





</body>
</html>
