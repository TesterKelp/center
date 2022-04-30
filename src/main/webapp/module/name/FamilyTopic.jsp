<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Educational</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/module/name/styles/layout.css" type="text/css" />
<script type="text/javascript" src="/module/name/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.tabs.setup.js"></script>

   <!-- <link href="acss/bootstrap.min.css" rel="stylesheet" type="text/css"> -->
      <link href="/module/name/acss/style.css" rel="stylesheet" type="text/css"/>
      <!-- // <script src="acss/jquery-2.1.4.min.js"></script> -->
<!-- 
<link href="ccss/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="ccss/style.css" rel="stylesheet" type="text/css" media="all" /> -->
<!--   <link href="cs/bootstrap.min.css" rel="stylesheet">
    <link href="cs/style.css" rel="stylesheet"> -->

<!-- <link rel="stylesheet" href="c/style.css"> -->
<link rel="stylesheet" href="/module/name/css/style.css">
<script src="/module/name/js/libs/modernizr.js"></script>
</head>
<body>

<%@ include file="/module/name/common/header.jsp"%> 





<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container">
    <div id="hpage">
      <ul>
    
        <c:forEach items="${topiclst}" var="a" varStatus="status">
      
      
       <c:if test="${status.count%4==0}">
					<li  class="last">		
		</c:if>
					
       <c:if test="${status.count%4!=0}">
					<li  >		
		</c:if>
      
         
         
         
          <h2>
          
          <c:if test="${fn:length(a.topicname)>15 }">
                         ${fn:substring(a.topicname, 0, 15)}...
                   </c:if>
                  <c:if test="${fn:length(a.topicname)<=15 }">
                           <a href="/name/TopicIndex.do?id=${a.topicid}">${a.topicname }</a>
                   </c:if>
          
          
          </h2>
          <div class="imgholder"><a href="#"><img src="/module/name/images/7.jpg" alt="" height="60px" /></a></div>
          <p>
          
          <c:if test="${fn:length(a.topicintro)>40 }">
                         ${fn:substring(a.topicintro, 0, 40)}...
                   </c:if>
                  <c:if test="${fn:length(a.topicintro)<=40 }">
                         ${a.topicintro }
                   </c:if>
          
          
          
          </p>
          <p class="readmore"><a href="#">了解企业名录 &raquo;</a></p>
        </li>
       
        </c:forEach>
        
        

        
        
      </ul>
      <br class="clear" />
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->




<%@ include file="/module/name/common/footer.jsp"%> 

<!-- ####################################################################################################### -->


<script >

function dfd(spic ,url){

var  aa=  document.getElementById("ddd") ;
var  aaa=  document.getElementById("rurl") ;
// alert(spic) ;
// alert(url) ;
    aa.src=spic;
    aaa.href=url ;

}

</script>

<script src="js/libs/jquery.min.js"></script>
<script src="js/libs/jmpress.min.js"></script>
<script src="js/libs/jquery.jmslideshow.js"></script>
<script src="js/script.js"></script>

</body>
</html>
