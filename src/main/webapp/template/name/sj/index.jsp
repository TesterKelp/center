<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no" />
<meta name="viewport" content="height=device-height,width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />
<link href="/template/kwz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/kwz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/kwz/css/animate.css" rel="stylesheet">
<link href="/template/kwz/css/style.css?v=4.1.0" rel="stylesheet">
<script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
</head>
<body >

<div id="defect" > 
	<div class="defect_top"  id="menu" >
	
		<a href="/name/sj/index.do"  style="float:left;  font-size:19px;">首页</a>    
	 <a href="/name/sj/NameFree.do" style="float:left;  font-size:19px;">免费起名</a> 
	  <a href="/name/sj/NameTest.do" style="float:left;  font-size:19px;">名字测试</a>         
	  </div>  
 </div>
<br><br>
	<div class="wrapper-content"> 	
	
						<c:forEach items="${lst}" var="a" varStatus="status">
						
					<a href="/name/sj/${a.nameid}_1.do" style="float:left; width:14%; font-size:24px; border:1px solid #000 ;text-align:center">${a.name}</a>
							
						</c:forEach>

			
			
		</div>

	



	<script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/kwz/js/content.js?v=1.0.0"></script>
<script type="text/javascript" src="https://js.users.51.la/20932149.js"></script>
</body>
</html>