<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Educational | Full Width</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/module/name/styles/layout.css" type="text/css" />
<script type="text/javascript" src="/module/name/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.slidepanel.setup.js"></script>
</head>
<body>
<%@ include file="/module/name/common/header.jsp"%> 
<!-- ####################################################################################################### -->
<!--<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="#">Home</a></li>
      <li>&#187;</li>
      <li><a href="#">Grand Parent</a></li>
      <li>&#187;</li>
      <li><a href="#">Parent</a></li>
      <li>&#187;</li>
      <li class="current"><a href="#">Child</a></li>
    </ul>
  </div>
</div>-->
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container"  style="min-height:500px">
   
  <!--   <h1>Headline 1 Colour and Size</h1>
    <h2>Headline 2 Colour and Size</h2>
    <h3>Headline 3 Colour and Size</h3>
    <h4>Headline 4 Colour and Size</h4>
    <h5>Headline 5 Colour and Size</h5>
    <h6>Headline 6 Colour and Size</h6>
    <p>This is a W3C compliant free website template from <a href="http://www.cssmoban.com/" title="æ¨¡æ¿ä¹å®¶">ç½ç«æ¨¡æ¿</a>. This template is distributed using a <a href="#">Website Template Licence</a>.</p>
    <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit <a href="#">Free Website Templates</a>.</p> -->
  <p>
    
   
    <h5 align="center">	家族</h5>
    <br></br>
    <br></br>
           <table width="99%" >
								<tr>
				<td>家族</td>
				<td>介绍</td>
				<td>图片</td>
				<td>族长</td>
				<td>操作</td>
				</tr>
				<c:forEach items="${family}" var="a" varStatus="status">
				<tr>
				<td>${a.familyintroduce}</td>
				<td>${a.familytree}</td>
				<td>  <img  height="100px" width="200px"   src="${a.pic}" /></td>
				<td>${a.realname}</td>
				<td> 
				<a href="/name/FamilyDetail.do?id=${a.familyid}"    >家族族员</a>  <br>
		
				 </td>
				</tr>
				</c:forEach>
			</table>












</p> 
   
  </div>
</div>
<%@ include file="/module/name/common/footer.jsp"%> 
</body>
</html>
