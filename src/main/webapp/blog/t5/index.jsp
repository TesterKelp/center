<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>欢迎光临${member.username}的博客！</title>
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
					<a href="#">${member.username}的博客！</a>
				</h1>
				<Br> <span>china a ...... </span>
			</div>

			<!-- Nav -->
			<nav id="nav">
			<ul>
				<li class="active"><a href="/blog/${member.userid}.do">首页</a></li>
				<c:forEach items="${ldt}" var="a" varStatus="status">
					<li><a href="/blog/${member.userid}/${a.blogcateid}/1.do">${a.blogcatename} </a></li>
				</c:forEach>

			</ul>
			</nav>
		</div>
	</div>



	<!-- Footer -->
	<div id="featured">
		<div class="container">
			<div class="row">

				<c:forEach items="${topiclist}" var="t">
					<div class="4u">
						<h2 align="center">
							<a href="/${t.item_directorie}/topiccover_${t.topicid}.do">
								${t.topicname} </a>
						</h2>
						<a href="#"><img src="${t.topicimage}" width="350"
							height="250" alt="" /></a>
						<p class="demobox">${t.topicintro}</p>
						<p align="center">
							<a align="center"
								href="/${t.item_directorie}/topiccover_${t.topicid}.do"
								class="button"> 更多分享</a>
						</p>
					</div>
				</c:forEach>



			</div>
		</div>
	</div>


	<!-- Footer -->







	<!-- Main   start   
		<div id="main">
			<div class="container">
				<div class="row"> 
					<!-- Content 
					<div id="content" class="8u skel-cell-important">  
						<c:forEach items="${lst}" var="p" varStatus="status">			
							<section>
								<span class="byline">      ${ status.index + 1} .   <a href="Content.do?userid=${userid}&&blogid=${p.articleid}">${p.articletitle} </a></span>
								<hr>
							<a href="#" class="image full"><img src="t5/images/pic07.jpg"  alt="" /></a>
							<c:if test="${fn:length(p.articlecontent)>200}">${fn:substring(p.articlecontent,0,400)}</c:if>
								<c:if test="${fn:length(p.articlecontent)<=200}">${p.articlecontent}</c:if>
								</section>
							</c:forEach>
					</div>  Main   end   -->
	<!-- Sidebar   Start  
					<div id="sidebar" class="4u">
						<section>
							<header>
								<h2><span>Personal </span>Profile</h2>
								<img src="${useravatar}" width="88" height="88" alt="pix" /></a></li>
            <li><a href="#">创建时间：${blogtime}</a></li>
            <li><a href="#">博主昵称：${username}</a></li>
							</header>
							<ul class="style">
								<li>
									自我介绍
								</li>
								<li>
									<p class="text">${introduce}</p>
								</li>
								<li>站点公告</li>
								<li>
									<p class="text">${notice}</p>
								</li>
							</ul>
						</section>
					</div>
					
				</div>
			</div>
		</div>

 Sidebar   end  -->






	<div id="footer">
		<div class="container">
			<div class="row">



				<c:forEach items="${lst}" var="p" varStatus="status">


					<div class="4u">
						<section>
						<ul class="default">
							<li class="box">${ status.index + 1} . <a
								href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do">${p.articletitle}
							</a></li>
						</ul>
						</section>
					</div>


				</c:forEach>












			</div>
		</div>
	</div>

	<!-- Copyright -->
	<div id="copyright">
		<div class="container">欢迎光临${member.username}的博客！</div>
	</div>

</body>
</html>