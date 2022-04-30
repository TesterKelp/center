<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>身在江湖_站点地图导航</title>
<meta name="keywords" content="sitemap站点地图,sitemap.html,身在江湖站点地图" />
<meta name="description" content="身在江湖站点地图导航" />
<link href="/template/kwz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/kwz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/kwz/css/animate.css" rel="stylesheet">
<link href="/template/kwz/css/defect.css" rel="stylesheet">
<link href="/template/kwz/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/template/kwz/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="/template/kwz/list/css/css_whir.css" rel="stylesheet" type="text/css" /> <!-- 列表css -->
</head>
<body  >
			
	<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>		
			
		<!--  	
					<div id="defect" > 
	<div class="defect_top"  id="menu" >

	      <a href="/index.do">首页</a> <c:if test="${site.singleitem =='100'}">  <a href="/${m.item_directorie}/portal.do">${m.item_name}  </a></c:if>
			 <c:forEach items="${ltt}" var="aa" varStatus="status">
			<a href="/${aa.item_directorie}/portal.do">${aa.item_name}</a>
			</c:forEach> 
	</div>
 </div>
 <Br>	
-->
			
			
			
			<div class="ibox-content"  style="height: 100%;" >
			<!--右边-->
            <div class="RightSidebar">
                
                  <div class="mianContent">
                 
                           <!--Star--><h2 style="text-align:center">站点导航</h2>
                           <div class="News_list" style="border-top:1px dashed #00a0e9">
      <c:set var="index" value="1" />
       <c:if test="${site.singleitem == '100' }">  <c:set var="index" value="2" />  </c:if>                 
       <c:if test="${site.singleitem == '200' }">  <c:set var="index" value="2" /> </c:if>                     
       
                           
    <c:forEach items="${ltt}" var="aa" varStatus="status">   
    
    <c:if test="${aa.item_directorie == site.singleitem  || index=='2'}">

    <div style="text-align:center;width:100%;float:left;"><a href="/${aa.item_directorie}/portal.do">${aa.item_name}频道</a></div>
    
    <div  style="margin-top:5px;border-bottom:1px dashed #00a0e9;min-height:200px;float:left;">                         
           <ul>                       
 <c:forEach items="${lst}" var="a" varStatus="status">
<c:if test="${aa.item_id == a.itemid }">
<c:if test="${a.catetype == '5' }">
 <li style="width:150px;float:left;"><a href="/${aa.item_directorie}/${a.catedirectory}/index.do">${a.catename}</a></li>	
 <c:forEach items="${lst}" var="k" varStatus="status">
 <c:if test="${k.pdir == a.catedirectory }">
 <li style="width:150px;float:left"><!--<span>${k.catename}</span>--> <a href="/${aa.item_directorie}/${k.pdir}/${k.catedirectory}/index.do">${k.catename}</a> </li>	
</c:if>
</c:forEach>  
<!--  
<div style="clear:both"></div> -->
</c:if>
</c:if>
</c:forEach>  
<!-- 
<div style="clear:both"></div> 
 -->
 <li style="width:150px;float:left;overflow:hidden;"><a href="/${aa.item_directorie}/tag/index.do">${aa.item_name}标签</a> </li>	
 <c:forEach items="${tl}" var="v" varStatus="status">
<c:if test="${aa.item_id == v.itemid }">
 <li style="width:150px;float:left;overflow:hidden;"><a href="/${aa.item_directorie}/tag/${v.tagid}.do">${v.tagname}</a> </li>	
</c:if>
</c:forEach> 
<!--  
<div style="clear:both"></div> 
-->
 <li style="width:150px;float:left;overflow:hidden;"><a href="/${aa.item_directorie}/topic.do">${aa.item_name}专题</a> </li>
 <c:forEach items="${to}" var="m" varStatus="status">
<c:if test="${aa.item_id == m.itemid }">
 <li style="width:150px;float:left;overflow:hidden;"><a href="/${aa.item_directorie}/topiccover_${m.topicid}.do">${m.topicname}</a> </li>	
</c:if>
</c:forEach> 

<div style="clear:both"></div> 
 </ul></div> 
 </c:if>
</c:forEach>                                      
                           </div>
                           <!--End-->
                  </div> 
            <div class="clear"></div>
            </div>
			</div>
	<div class="clear"></div>
<div class="row" > <%@ include file="/template/kwz/footer.jsp"%>  </div>
	<!-- 全局js -->
	<script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/kwz/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="/template/kwz/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="/template/kwz/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="/template/kwz/kjs/common.js"></script>
<script type="text/javascript" src="//js.users.51.la/20906883.js"></script>
</body>
</html>
