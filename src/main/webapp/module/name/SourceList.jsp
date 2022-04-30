<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Educational | Style Demo</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/module/name/styles/layout.css" type="text/css" />
<script type="text/javascript" src="/module/name/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.slidepanel.setup.js"></script>


<style>
a{ text-decoration:none}

#n{margin:10px auto; width:920px; border:1px solid #CCC;font-size:12px; line-height:30px;}
#n a{ padding:0 4px; color:#333}
/* 以上CSS与模块无关 */
.ep-pages{padding:10px 12px;clear:both;text-align:center;font-family:Arial, "\5B8B\4F53", sans-serif;font-size:14px;vertical-align:top}
.ep-pages a, .ep-pages span{display:inline-block;height:23px;line-height:23px;padding:0 8px;margin:5px 1px 0 0;background:#fff;border:1px solid #e5e5e5;overflow:hidden;vertical-align:top}
.ep-pages a:hover{background:#cc1b1b;border:1px solid #cc1b1b;text-decoration:none}
.ep-pages a, .ep-pages a:visited{color:#252525}
.ep-pages a:hover, .ep-pages a:active{color:#ffffff}
.ep-pages .current{background:#cc1b1b;border:1px solid #cc1b1b;color:#fff}
.ep-pages a.current, .ep-pages a.current:visited{color:#ffffff}
.ep-pages a.current:hover, .ep-pages a.current:active{color:#ffffff}
.ep-pages-ctrl{font-family:"\5B8B\4F53", sans-serif;font-weight:bold;font-size:16px}
.ep-pages-e5e5e5{color:#e5e5e5}
.ep-pages-all{font-size:12px;vertical-align:top}

</style>


</head>
<body>
<%@ include file="/module/name/common/header.jsp"%> 

<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container">
    <div id="content">
      
     

 <div id="columnleft">
      <div class="subnavList">
        <h2>::姓氏起源::</h2>
        <ul>
     
                  <c:forEach items="${namelst}" var="a" varStatus="status">
					
					<li><a href="/name/NameSource.do?nameId=${a.nameid}">中国姓氏起源之--${a.name}--姓氏起源</a></li>
					
		          </c:forEach>
          
          
        </ul>
      </div>
</div>




<div class="ep-pages">

<c:if test="${pagenumber != 1}">     
                   <a href="SourceList.do?pagenumber=1" target="_self" >首页</a>
                 </c:if> 
			<c:forEach var="i" begin="1" end="${totalpage}" step="1">   
                 
                
                 
 				<c:if test="${pagenumber == i}">     
                    <a href="SourceList.do?pagenumber=${i}" target="_self" class="current">${i}</a>
                 </c:if>   
                  <c:if test="${(pagenumber != i)}">     
                   <a href="SourceList.do?pagenumber=${i}" target="_self">${i}</a>
                 </c:if> 
    		  </c:forEach>  
			    <c:if test="${pagenumber != totalpage}">     
                 <a href="SourceList.do?pagenumber=${totalpage}" target="_self">尾页</a>
                 </c:if>


</div>





  
      
    </div>
    <div id="column">
      <div class="subnav">
        <h2>haha» </h2>
        <ul>
          <li><a href="#">Open Source Templates</a></li>
          <li><a href="#">Free CSS Templates</a></li>
          <li><a href="#">Free XHTML Templates</a></li>
          <li><a href="#">Free Website Templates</a></li>
          <li><a href="#">Open Source Layouts</a></li>
            <li><a href="#">Open Source Software</a></li>
            <li><a href="#">Open Source Webdesign</a></li>
            <li><a href="#">Open Source Downloads</a></li>
            <li><a href="#">Open Source Website</a></li>
          <li><a href="#">Open Source Themes</a></li>
        </ul>
      </div>
 
      <div id="featured">
        <ul>
          <li>
            <h2>Indonectetus facilis leonib</h2>
            <p class="imgholder"><img src="images/demo/240x90.gif" alt="" /></p>
            <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna. Urnaultrices quis curabitur phasellentesque congue magnis vestibulum quismodo nulla et feugiat. Adipisciniapellentum leo ut consequam ris felit elit id nibh sociis malesuada.</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </li>
        </ul>
      </div>
     
    </div>
    <div class="clear"></div>
  </div>
</div>






<%@ include file="/module/name/common/footer.jsp"%> 


</body>
</html>
