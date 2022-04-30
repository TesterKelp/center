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





</head>
<body>
<%@ include file="/module/name/common/header.jsp"%> 

<!-- ####################################################################################################### -->
<div class="wrapper col4">



  <div id="container">
  
  
  
  
  			<div id="column1">
				<c:forEach items="${topiclst}" var="a" varStatus="status">
					<div id="featured">
						<ul>
							<li >
								<h2>${a.topicname}</h2>
								<p class="imgholder" style="height:150px">
									<img src="${a.topicimage}" alt=""    width="240px"  height="150px"      />
								</p>
								<p>${a.topicintro}</p>
								<p class="readmore">
									<a href="#">Continue Reading &raquo;</a>
								</p>
							</li>
						</ul>
					</div>
				</c:forEach>
			</div>
  
  
  
  
  
  
			<div id="content1">
				<div id="columnleft">
					<div class="subnavList">
						<h2>::姓氏起源::</h2>
						<ul>
							<c:forEach items="${lst}" var="a" varStatus="status">
								<li><a href="/name/NameSource.do?nameId=${a.articleid}">${a.title}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>


			<div class="clear"></div>
  
  </div>
</div>






<%@ include file="/module/name/common/footer.jsp"%> 


</body>
</html>
