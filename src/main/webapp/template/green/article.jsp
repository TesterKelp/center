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
<title>${title}</title>
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
                    <h4>推荐<span>---------</span></h4>
                    <ul>
                         
                            
                            <c:forEach items="${lst}" var="a" varStatus="status">
         <c:if test="${a.articletype==4}"> 
			<li  style="height:20px;letter-spacing:0px;"><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle}</a></li>
		</c:if>
   		</c:forEach>     
                            
                    </ul>
               </div>

            </div>
            <!--左边 End-->
            <!--右边-->
            <div class="RightSidebar">
                  <div class="Current">
                       
                        <h1>----------------------------------------------------------------------------- </h1>
                  </div>
                  <div class="mianContent">
                  
                  
                           <!--Star-->
                           <h5 class="Info_title">${title}</h5>
                           <h6 class="Info_time">发布时间：${creattime}</h6>
                           <div class="Info_txt">
                                ${content}
                           </div>
                         
                           
                         
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
