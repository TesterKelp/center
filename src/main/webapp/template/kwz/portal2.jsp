<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>世间万物之_${m.item_name}</title>
    <meta name="Keywords" Content="<c:forEach items="${menuList}" var="a" varStatus="status">${a.catename},</c:forEach>">
    <link href="/template/kwz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/template/kwz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="/template/kwz/css/animate.css" rel="stylesheet">
  <!--  <link href="/template/kwz/css/defect.css" rel="stylesheet">  宽屏去掉 defect.css -->
    <link href="/template/kwz/css/style.css?v=4.1.0" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/template/kwz/style.css" />
    <!-- 登录样式-->
    <link rel="stylesheet" type="text/css" href="/template/kwz/login/login.css">
    <!-- 专题样式 -->
        <link rel="stylesheet" href="/template/kwz/2/css/style.css">
        <script type="text/javascript" src="/template/kwz/2/js/jquery.js"></script>
        <script type="text/javascript" src="/template/kwz/2/js/jquery.SuperSlide.2.1.1.js"></script>

   <!-- 今日推荐样式 -->     
    <link href="/template/kwz/indextop/zimeiti.css" type="text/css" rel="stylesheet"/>
<link href="/test/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">




</head>

<body >
<%@ include file="/template/kwz/htmlheader.jsp"%>
  
    <Br><br>    
            <div class="wrapper wrapper-content" algin="center">
      			 <div class="row">
						<div class="ibox-content" >
		
<!-- 开始 -->



<div class="col-lg-12">


</div>

   
   
   
   
<div class="col-lg-9">
 <style type="text/css"> 
 /*用css实现表格  */
 * {margin:0;padding:0} 
 #main {border-style:solid;border-width:0px;border-color:blue;} 
 #main ul{width:100%;height:auto;list-style:none;//decimal} 
 #main li {border-left:1px solid #E6E6E6;border-bottom:1px solid #E6E6E6;
 padding:15px;
 float:left;
 width:50%;
 background:#FFFFFF;
 text-align:center;
 line-height:33px} 
 #main li.b {border-bottom:1px solid #E6E6E6 ;} 
 #main li.r {border-right:1px solid #E6E6E6 ;} 
h2 { font-family: Arial,"PingFang SC","Microsoft YaHei",sans-serif;color: #333;  margin-left:5px;  margin-right:5px }
.title{float:left ; margin-left:5px; display: block; font-weight:800; font-weight:bold ; }
 .more{float:right;margin-right:5px;}
 .tit{ padding-left:15px; padding-top:10px; line-height: 20px;text-align:left}
 .im{width:110px;height:76px; margin:5px; float:left ; }
 span { color: #9A9A9A;font-size: 12px; padding-top:0px;}

</style>

<div id="main"> 
<div style="width:100%;border:1px solid #E6E6E6; color: #333;padding-left:20px;line-height: 40px;background:#F5F5F5;" >
    <a class="title">精品推荐 </a>
    <a class="more"></a>
    <div class="clear"></div>
</div>

     <ul> 
     
     <!-- 
         <li>  
         <div style="float:left;position:absolute; width：120px;">
         <img src="/index/bg/win8.jpg"  class="im" /></div>
         <div style="margin-left:120px;float:left ;height:82px;">
         <div class="tit">  <a href="" > 职场防小职场防小职场防小人：几招识破职场“心理阴暗”人 </a> </div>
         <span style="float:left;padding-left:15px;"><i class="fa fa-calendar"></i>2016-06-11   </span>
         </div>
         
         </li>
 		<li class="r">
 		<div style="float:left;position:absolute; width：120px;">
         <img src="/index/bg/win8.jpg"  class="im" /></div>
         <div style="margin-left:120px;float:left ;height:82px;">
         <div  class="tit">  <a href="" > 职场防小人：几招识破职场“心理阴暗”人 </a> </div><br>
         <span style="float:left;padding-left:15px;"><i class="fa fa-calendar"></i>2016-06-11   </span>
         </div>
		</li>  -->
 <c:set var="index" value="1" />
   <c:forEach items="${clst}" var="a"  varStatus="v">
	
      <c:if test="${index<9 && not empty a.picaddress}"> 
      <c:if test="${index%2==1 }">        
         <li >
         <div style="float:left;position:absolute; width：120px;">
			<img src="${a.picaddress}"  class="im" /> </div>
         <div style="margin-left:120px;float:left ;height:82px;">
         <div class="tit"> <a href="" > ${a.articletitle} </a> </div>
         <span style="float:left;padding-left:15px;"><i class="fa fa-calendar"></i>&nbsp; ${a.creattime}-${index}  </span>
         </div>
         </li> 
      </c:if>       

	  <c:if test="${index%2==0}">       	
            <li class="r">
            <div style="float:left;position:absolute; width：120px;">
			<img src="${a.picaddress}"  class="im"  /> </div>
         <div style="margin-left:120px;float:left ;height:82px;">
         <div class="tit">  <a href="" >${a.articletitle} </a> </div>
         <span style="float:left;padding-left:15px;"><i class="fa fa-calendar"></i>&nbsp; ${a.creattime}-${index}   </span>
         </div>
         </li>   
      </c:if>			
   	<c:set var="index" value="${index+1}" />
      </c:if>   
         
 </c:forEach>   

     </ul>
     </div>
</div>
   
   

   
   
   
   <div class="col-lg-3">
























</div>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   <!-- 结束 -->
 
						</div>
					</div>

            </div>               

                     
   

           

        
    
    
	<div class="clear"></div>
 <%@ include file="/template/kwz/footer.jsp"%> 

    <!-- 全局js -->
    <script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="/template/kwz/js/content.js?v=1.0.0"></script>
   <script src="/template/kwz/kjs/common.js"></script>
   <script src="/template/kwz/kjs/portal.js"></script>
 
   
   

</body>

</html>
