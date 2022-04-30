<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>详情页面</title>
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
  <div id="container"  style="min-height:500px">
<p>
    <c:forEach items="${lst}" var="a" varStatus="status">
    <h5 align="center">	${a.title}</h5>
    <br></br>
    <br></br>
           <table width="99%" >
				${a.content}
			</table>
</c:forEach>
</p> 
   
  </div>
</div>
<%@ include file="/module/name/common/footer.jsp"%> 
</body>
</html>
