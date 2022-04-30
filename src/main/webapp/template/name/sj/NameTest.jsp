<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>免费姓名测试</title>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no" />
<meta name="viewport" content="height=device-height,width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />

<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<script type="text/javascript" src="/template/name/1/js/jquery.min.js"></script>
<script src="/layer/layer.js"></script>
<script type="text/javascript" src="/template/name/1/js/TweenMax.min.js"></script>
<link rel="stylesheet" type="text/css" href="/template/name/1/css/main.css"/>
<style type="text/css"> 
body,div,h2{margin:0;padding:0;}
body{background:url(images/bg.jpg);font:12px/1.5 \5fae\8f6f\96c5\9ed1;color:#333;}
a.open{position:absolute;top:10px;left:50%;margin-left:-10px;background-position:0 0;}
a.open:hover{background-position:0 -29px;}
a:link{text-decoration:none;   /* 指正常的未被访问过的链接*/ }
</style>

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



  <form action="/name/sj/NameTestResult.do" method="GET">
  <table style="margin-top:30px;margin-left:5px">
            <tr>
            <td  width="140px;"><img src="/pic/wx/wxszjh.jpg" style="width:170px;height:170px"></td>
            <td><input id="name" name="name"    placeholder="请输入您的姓名" type="text" class="text"  style="width:150px ;height:40px;" />  
            <input style="width:150px ;height:40px;"  type="submit" value="姓名测试" class="btn01"/><br><br>
            </td></tr>
            </table>
  </form>
 <hr> 
  
 <div  style="line-height:20px;padding:10px;">
1.五格姓名免费测试<Br>
2.五格姓名免费解析<Br>
3.让你也学会姓名五格分析法。<Br>
4.使用说明，直接输入您的名字，然后点击"姓名测试"按钮即可。<Br>
5.关注本站公众号：来呀乐一乐 <Br>
  可以让您也学会五格解析法。<Br>
6.欢迎加入QQ群名字世界：814811960。
</div>
  
  
  
  
<script type="application/javascript" src="/template/name/1/js/main.js"></script>
	<!-- 全局js -->
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/module/share/js/article.js"></script>
	
	<script type="text/javascript" src="https://js.users.51.la/20932149.js"></script>
</body>
</html>