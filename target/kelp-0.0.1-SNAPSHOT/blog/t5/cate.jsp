<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>${username}博客分类页</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="t5/js/html5shiv.js"></script><![endif]-->
<script src="t5/js/jquery.min.js"></script>
<script src="t5/js/skel.min.js"></script>
<script src="t5/js/skel-panels.min.js"></script>
<script src="t5/js/init.js"></script>

<link rel="stylesheet" href="../blog/t5/css/skel-noscript.css" />
<link rel="stylesheet" href="../blog/t5/css/style.css" />
<link rel="stylesheet" href="../blog/t5/css/style-desktop.css" />
<style type="text/css">
.demobox {
	height: 120px;
	line-height: 30px;
	overflow: hidden;
	display: block;
}

.box {
	height: 30px;
	line-height: 30px;
	overflow: hidden;
	display: block;
}

.bo {
	height: 30px;
	line-height: 30px;
	overflow: hidden;
	display: block;
}
</style>
<style type="text/css">
#pagelist {
	border: 4px solid #ccc;
	padding: 10px;
	width: 390px;
	font-size: 12px;
	list-style-type: none;
	float: right;
}

#pagelist li {
	width: 355px;
	height: 30px;
	border-bottom: 1px dashed #CCCCCC;
	margin: 0px;
	padding: 0px;
	/*background:#99FFCC;*/
}

#pagelist li a .lbt {
	display: block;
	width: 260px;
	float: left;
	line-height: 30px;
	text-indent: 5px;
	text-decoration: none;
	white-space: nowrap; /*强制在同一行内显示所有文本，直到文本结束或者遭遇 br 对象*/
	text-overflow: ellipsis; /*当对象内文本溢出时显示省略标记(...)*/
	overflow: hidden;
	display: inline;
}

#pagelist li a .ldt {
	display: block;
	width: 75px;
	float: right;
	text-align: center;
	line-height: 30px;
	color: #069;
	text-decoration: none;
	display: inline;
}

#pagelist li a {
	width: 370px;
	height: 30px;
	display: block;
	color: #666;
	text-decoration: none;
	cursor: hand;
}

#pagelist li a:hover {
	color: #03c;
	text-decoration: none;
	border-bottom: 1px dashed #000000;
}

#pagelist li a:hover #com {
	display: block;
	float: left;
	width: 0px;
	height: 0px;
	margin: 4px 0 4px 6px;
	border-bottom: 8px solid #FFFFFF;
	border-left: 8px solid #FF0000;
	border-top: 8px solid #FFFFFF;
}

#pagelist li a:hover .ldt {
	color: #000;
}
</style>
<!--[if lte IE 8]><link rel="stylesheet" href="t5/css/ie/v8.css" /><![endif]-->
<!--[if lte IE 9]><link rel="stylesheet" href="t5/css/ie/v9.css" /><![endif]-->
</head>
<body>
	<!-- Header -->
	<div id="header">
		<div class="container">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="#">${username}的博客！</a>
				</h1>
				<Br> <span>china a Terster </span>
			</div>

			<!-- Nav -->
			<nav id="nav">
			<ul>
				<li><a href="Blog.do?userid=${userid}">首页</a></li>


				<c:forEach items="${ldt}" var="a">
					<c:if test="${a.blogcateid==blogcateid}">
						<li class="active">
					</c:if>
					<c:if test="${a.blogcateid!=blogcateid }">
						<li>
					</c:if>
					<a
						href="Cate.do?userid=${userid}&&cateid=${a.blogcateid}&&pageno=1">
						${a.blogcatename} </a>
					</li>
				</c:forEach>


			</ul>
			</nav>
		</div>
	</div>





	<!-- Main -->
	<div id="main">
		<div class="container">
			<div class="row">

				<!-- Content -->
				<div id="content" class="8u skel-cell-important">
					<c:forEach items="${cl}" var="p">

						<section> <header> <!-- 	<h1><a  href="Content.do?userid=${userid}&&blogid=${p.articleid}">      ${p.articletitle}   </a></h1>-->
						<span class="byline"><a
							href="Content.do?userid=${userid}&&blogid=${p.articleid}">
								${p.articletitle} </a></span> </header>

						<hr
							style="height: 1px; border: none; margin-top: 1px; border-top: 1px solid #787460;" />
						<div class="clr"></div>
						</section>
					</c:forEach>





				</div>

				<!-- Sidebar -->
				<div id="sidebar" class="4u">
					<section> <header>
					<h2>阅读排行榜</h2>
					</header>
					<ul id="pagelist">

						<!--  <ul class="style">  
								<li>
									<p class="posted">August 11, 2002  |  (10 )  Comments</p>
									<img src="../blog/t5/images/pic04.jpg" alt="" />
									<p class="text">Nullam non wisi a sem eleifend. Donec mattis libero eget urna. Pellentesque viverra enim.</p>
									
									<li>	<a        class="bo"    href="Content.do?userid=${userid}&&blogid=${t.articleid}" title="${t.articletitle}">${t.articletitle}<span class="ldt">2007-08-06</span></li> 
						
								</li>  -->

						<c:forEach items="${ltt}" var="t">
							<li><a
								href="Content.do?userid=${userid}&&blogid=${t.articleid}"><span
									id="com"></span><span class="lbt">${t.articletitle}</span><span
									class="ldt">2007-08-06</span></a></li>
						</c:forEach>
					</ul>
					</section>
				</div>

			</div>
		</div>
	</div>




















</body>
</html>