<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>身在江湖_${m.item_name}_${c.catename}_${tag.tagname}</title>
<link href="/template/wz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/wz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/wz/css/defect.css" rel="stylesheet">
<link href="/template/wz/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/template/wz/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="/template/wz/list/css/css_whir.css" rel="stylesheet" type="text/css" /> <!-- 列表css -->
<link rel="stylesheet" type="text/css" href="/template/wz/top/style.css"/>
</head>
<body  >
			<%@ include file="/template/wz/htmlheader.jsp"%><br><br>
			<div class="ibox-content"   style="min-height: 800px; width:1280px;margin:0 auto;"  >
			<!--右边-->
            <div class="RightSidebar">
                  <div class="Current">
                        <dl>你现在的位置:  <a href="/index.${kuo}">网站首页</a> >
                               <a href="/${item}/portal.${kuo}">频道首页</a> > <a href="/${item}/portal.${kuo}">频道tag标签</a> >    <a href="/${item}/tag/${tag.tagid}.do"> ${tag.tagname} </a>
                         
                        </dl>
                        
                  </div>
                  <div class="mianContent">
                  
                           <!--Star-->
                           <div class="News_list">
                                <ul>
                                
                     	<c:forEach items="${lst}" var="a" varStatus="status">
  <c:if test="${a.pdir!=item}">    
  <li><span>${a.creattime}</span><a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle }</a></li>
  </c:if>
 <c:if test="${a.pdir==item}">
  <li><span>${a.creattime}</span><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle }</a></li>
 </c:if>		
</c:forEach>           
                                
                                </ul>
                           </div>
                           <!--Pages-->
                           <div class="Pages">
                              </span>
                              
                                  <c:if test="${ empty lanmuname}"> 
                                  <span class="">目前在第<b>${pageNum}</b>页,</span>
                                  <span class="p_count">共有<b>${pages}</b>页,</span>
                                  <span class="p_total">共有<b>${totalRecord}</b>条记录</span>
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
                                  <span class="">目前在第<b>${pageNum}</b>页,</span>
                                  <span class="p_count">共有<b>${pages}</b>页,</span>
                                  <span class="p_total">共有<b>${totalRecord}</b>条记录</span>
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
                  </div>
                  
            <div class="clear"></div>
  
            </div>
			</div>
	<div class="clear"></div>
<div class="row" > <%@ include file="/template/wz/footer.jsp"%>  </div>
	<!-- 全局js -->
	<script src="/template/wz/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/wz/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/wz/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="/template/wz/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="/template/wz/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="/template/wz/kjs/common.js"></script>
<script type="text/javascript" src="//js.users.51.la/20906883.js"></script>
</body>
</html>
