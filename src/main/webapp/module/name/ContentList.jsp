<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>姓氏起源</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/module/name/styles/layout.css" type="text/css" />
<script type="text/javascript" src="/module/name/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.slidepanel.setup.js"></script>

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
					<li><a href="/name/ContentDetail.do?id=${a.articleid}">${a.title}</a></li>
		          </c:forEach>
          
          
        </ul>
      </div>
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
