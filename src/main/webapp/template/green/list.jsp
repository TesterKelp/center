<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=7" />
<meta name="Author" content="">
<title>${m.item_name} 之  ${catename}列表</title>
<meta name="keyword" content=""/>
<meta name="description" content=""/>
<link href="/template/green/css/css_whir.css" rel="stylesheet" type="text/css" />
<script src="/template/green/Script/jquery-1.4.2.min.js" type="text/javascript"></script>
<!--[if IE 6]>
<script src="Script/pngAlaph.js"></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

</head>
<body>
    <%@ include file="/template/green/htmlheader.jsp"%>
   
    
    <!--Star-->
    <div style="background:url(/template/green/images/temp/Ban_news.jpg) no-repeat center top">
    <div class="H193"><span class="leftBg"></span><span class="rightBg"></span></div>
    <div class="Content">
    
              
            <!--左边-->
            <div class="Sidebar">
                           <div class="Menu">
                    <h4> 栏目推荐<span>-------------</span></h4>
                    <ul>
                           <!--  <li id="menu1" style="height:30px"><a href="#">医院新闻</a></li>
                            <li id="menu2" style="height:30px"><a href="#">媒体报道</a></li>
                             -->
                            
        <c:forEach items="${lst}" var="a" varStatus="status">
         <c:if test="${a.articletype==4}"> 
			<li  style="height:20px;letter-spacing:0px;"><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle}</a></li>
		</c:if>
   		</c:forEach>         
                            
                            
                            
                    </ul>
               </div>

            </div>
            <!--左边 End-->
            <!--右边-->
            <div class="RightSidebar">
                  <div class="Current">
                       <dl>你现在的位置:  <a href="/index.${kuo}">网站首页</a> >
                               <a href="/${item}/portal.${kuo}">频道首页</a> > 
                         <c:if test="${not empty lanmuname}">  <a href="/${item}/${cate}/index.do">${lanmuname}</a>  > </c:if> 
                         
                         <span>${catename}</span></dl>
                        
                  </div>
                  <div class="mianContent">
                  
                  
                           <!--Star-->
                          
                           <div class="News_list">
                                <ul>
                                
                                
                                
                                    	<c:forEach items="${lst}" var="a" varStatus="status">
  <c:if test="${not empty a.cat}">   
  <li><span>${a.creattime}</span><a href="/${item}/${a.cat}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle }</a></li>
 </c:if>
 <c:if test="${ empty a.cat}">
  <li><span>${a.creattime}</span><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle }</a></li>
 </c:if>
       </td>
				
</c:forEach>   
                                
                                
                                
                                 </ul>
                           </div>
                            <!--Pages-->
                           <div class="Pages">
                  
                              </span>
                              
                                  <c:if test="${ empty lanmuname}"> 
                                  <span class="p_cur">目前在第<b>10</b>页,</span>
                                  <span class="p_count">共有<b>${pages}</b>页,</span>
                                  <span class="p_total">共有<b>30</b>条记录</span>
         <span class="p_page">
          <c:if test="${!(pageNum == 1)}">     
                   <a href="/${item}/${cate}/list_1.${kuo}" class="a_first">首页</a>      <a href="/${item}/${cate}/list_${(pageNum -1)}.${kuo}" class="a_prev">上一页</a>
           </c:if>
           <em class="num">
              <c:forEach var="i" begin="1" end="${pages}" step="1">  
                <c:if test="${pageNum == i}">     
                     <a href="/${item}/${cate}/list_${i}.${kuo}" class="a_cur">${i}</a>
                 </c:if>   
                  <c:if test="${!(pageNum == i)}">     
                     <a href="/${item}/${cate}/list_${i}.${kuo}" >${i}</a>
                 </c:if>  
    		  </c:forEach>  
    		  </em>
          <c:if test="${!(pageNum == pages)}">     
                   <a href="/${item}/${cate}/list_${(pageNum +1)}.${kuo}" class="a_next">下一页</a><a href="/${item}/${cate}/list_${pages}.${kuo}" class="a_end">末页</a>
           </c:if>
           </span>
        </c:if>     
            
            
        <c:if test="${not empty lanmuname}">  
                                  <span class="p_cur">目前在第<b>10</b>页,</span>
                                  <span class="p_count">共有<b>${pages}</b>页,</span>
                                  <span class="p_total">共有<b>30</b>条记录</span>
         <span class="p_page">
          <c:if test="${!(pageNum == 1)}">     
                   <a href="/${item}/${cate}/${cat}/list_1.${kuo}" class="a_first">首页</a>      <a href="/${item}/${cate}/${cat}/list_${(pageNum -1)}.${kuo}" class="a_prev">上一页</a>
           </c:if>
           <em class="num">
              <c:forEach var="i" begin="1" end="${pages}" step="1">  
                <c:if test="${pageNum == i}">     
                     <a href="/${item}/${cate}/${cat}/list_${i}.${kuo}" class="a_cur">${i}</a>
                 </c:if>   
                  <c:if test="${!(pageNum == i)}">     
                     <a href="/${item}/${cate}/${cat}/list_${i}.${kuo}" >${i}</a>
                 </c:if>  
    		  </c:forEach>  
    		  </em>
          <c:if test="${!(pageNum == pages)}">     
                   <a href="/${item}/${cate}/${cat}/list_${(pageNum +1)}.${kuo}" class="a_next">下一页</a><a href="/${item}/${cate}/${cat}/list_${pages}.${kuo}" class="a_end">末页</a>
           </c:if>
           </span>
        </c:if>
                              
                              
                              
                              
                              
                              
                              
                           </div>
                           <!--Pages-->
                           <!--End-->
                           
                         
                  <div class="clear"></div>
                  </div>
                  
            <div class="clear"></div>
            </div>
            <!--右边 End-->
          
           
    <div class="clear"></div>
    </div>
    </div>
    <!--End-->
    
    <!--Bottom-->
<%@ include file="/template/green/htmlfooter.jsp"%>
    <!--Bottom End-->
    
    <script type="text/javascript" language="javascript">
       jQuery("#nav4").attr("class","onnav");
	   jQuery("#menu1").attr("class","acur");
    </script>
    
</body>
</html>
