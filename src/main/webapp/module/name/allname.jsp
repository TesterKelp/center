<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>姓名大全_免费起名</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/module/name/styles/layout.css" type="text/css" />
<script type="text/javascript" src="/module/name/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.tabs.setup.js"></script>
<link href="/module/name/acss/style.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="/module/name//css/style.css">
<script src="/module/name/js/libs/modernizr.js"></script>
</head>
<body>

<%@ include file="/module/name/common/header.jsp"%> 






<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container">
    <div id="hpage">
    
    <div id="righ">
      <ul>
        <lli> 
        <c:forEach items="${lst}" var="a" varStatus="status">
        <c:if test="${a.namenumber==1}">
				<div class="imgh">
							<a href="/name/NameDetail.do?nameId=${a.nameid}">${a.name}</a>
						</div>
                </c:if>
		</c:forEach>
        </lli>
   <br class="clear" />
   <lli>
   		        <c:forEach items="${namelst}" var="a" varStatus="status">
        <c:if test="${a.namenumber==2}">
				<div class="imgh2">
							<a href="/name/NameDetail.do?nameid=${a.nameid}">${a.name}</a>
						</div>
                </c:if>
		</c:forEach>
   </lli>
      </ul>
      <br class="clear" />
   </div>
   
   <div id="lef">
 </div>








<Br><Br><Br>
<!-- ####################################################################################################### -->
<div class="wrapper col4">

    
      <ul>
      
      <c:forEach items="${topiclst}" var="a" varStatus="status">
        <li>
          <h2>${a.topicname}</h2>
          <div class="imgholder"><a href="#"><img src="${a.topicimage}" alt=""  height="60px" /></a></div>
        </li>
      </c:forEach> 
        
        
        

      </ul>
      <br class="clear" />
    
</div>
<!-- ####################################################################################################### -->


















   
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->







<%@ include file="/module/name/common/footer.jsp"%> 






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
