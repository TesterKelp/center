<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>执子之手，与子偕老</title>
<meta name="keywords" content="Wedding,婚礼主题模板,爱情模板,爱情网站模板,情人节,情人节个人网站模板" />
<meta name="description"
	content="这是一个有关Wedding的html5 css3 网站模板适用于各种婚礼主题" />
<link href="t1/css/styles.css" rel="stylesheet">
<script src="../test/js/jquery.min.js?v=2.1.4"></script>
<!--[if lt IE 9]>
<script src="t1/js/modernizr.js"></script>
<![endif]-->
</head>
<body onload="aa()">
	<header> <nav id="nav">
	<ul>
		<!--   <li><a href="/">网站首页</a></li><!--  
    <li><a href="/download/" target="_blank">模板</a></li>
    <li><a href="/web/"  target="_blank">关于我们</a></li>
    <li><a href="/jstt/" target="_blank">我们的故事</a></li>
    <li><a href="/newshtml5/" target="_blank">我们的蜜月</a></li>
    <li><a href="/news/case/" target="_blank">婚礼现场</a></li>
    <li><a href="/news/s/" target="_blank">婚纱摄影</a></li>
    <li><a href="/newstalk/" target="_blank">我们的博客</a></li>       
    <li><a href="/news/jsex/" target="_blank">联系我们</a></li>-->
		${menu}
	</ul>
	<script src="js/silder.js"></script><!--获取当前页导航 高亮显示标题--> </nav> </header>
	<div class="mainContent">
		<aside>
		<div class="avatar">
			<a href="#" id="avatar"><span> ${username}</span></a>
		</div>
		<section class="topspaceinfo"> ${introduce} </section>



		<div class="userinfo">
			<p class="q-fans">
				昵称 ：<a href="/" target="_blank">${username}</a>
			</p>
			<p class="btns">
				<a href="/" target="_blank">私信</a><a href="/" target="_blank">相册</a><a
					href="/" target="_blank">存档</a>
			</p>
		</div>
		<section class="newpic">
		<h2>::公告::</h2>
		<!-- 
         <ul>
           <li><a href="/"><img src="t1/images/01.jpg"></a></li>
           <li><a href="/"><img src="t1/images/02.jpg"></a></li>
           <li><a href="/"><img src="t1/images/03.jpg"></a></li>
           <li><a href="/"><img src="t1/images/04.jpg"></a></li>
           <li><a href="/"><img src="t1/images/05.jpg"></a></li>
           <li><a href="/"><img src="t1/images/06.jpg"></a></li>
           <li><a href="/"><img src="t1/images/07.jpg"></a></li>
           <li><a href="/"><img src="t1/images/08.jpg"></a></li>
         </ul>
          -->
		<div class="userinfo">${notice}</div>
		</section> <section class="taglist">
		<h2>全部标签</h2>
		<ul>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>

			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>
			<li><a href="/">青空</a></li>
			<li><a href="/">情感聊吧</a></li>
			<li><a href="/">study</a></li>
			<li><a href="/">青青唠叨</a></li>

		</ul>
		</section> </aside>
		<div class="blogitem">

			<c:forEach items="${lst}" var="p">
				<article>
				<h2 class="title">
					<a href="${url}/${p.articleid}.html">${p.articletitle}</a>
				</h2>
				<ul class="text">



					<c:if test="${fn:length(p.articlecontent)>200}">${fn:substring(p.articlecontent,0,200)}</c:if>
					<c:if test="${fn:length(p.articlecontent)<=200}">${p.articlecontent}</c:if>


				</ul>
				<div class="textfoot">
					<a href="/">阅读全文</a><a href="/">评论</a><a href="/">转载</a>
				</div>
				</article>

			</c:forEach>







			<article> </article>
			<div class="pages">
				<span>1</span><a href="/" hidefocus="">2</a><a href="/" hidefocus="">3</a><a
					href="/" class="next">下一页&gt;&gt;</a>
			</div>
		</div>
	</div>
	<footer>
	<div class="footavatar">
		<img src="${useravatar}" class="footphoto">
		<!-- 
     <ul class="footinfo">
       <p class="fname"><a href="/dancesmile" >青轻飞扬</a>  </p>
       <p class="finfo">性别：女 年龄：25岁</p>
       <p>现居：四川成都</p></ul>
       -->
	</div>
	<section class="visitor"> <!-- 
     <h2>最近访客</h2>
      <ul>
        <li><a href="/"><img src="t1/images/s0.jpg"></a></li>
        <li><a href="/"><img src="t1/images/s1.jpg"></a></li>
        <li><a href="/"><img src="t1/images/s2.jpg"></a></li>
        <li><a href="/"><img src="t1/images/s3.jpg"></a></li>
        <li><a href="/"><img src="t1/images/s5.jpg"></a></li>
        <li><a href="/"><img src="t1/images/s6.jpg"></a></li>
        <li><a href="/"><img src="t1/images/s7.jpg"></a></li>
        <li><a href="/"><img src="t1/images/s8.jpg"></a></li>
      </ul>
       --> </section>
	<div class="Copyright">
		<ul>
			<!-- <a href="/">帮助中心</a><a href="/">空间客服</a><a href="/">投诉中心</a><a href="/">空间协议</a>-->
		</ul>
	</div>
	</footer>
	<input class="form-control" id="useravatar" value="${useravatar} "
		type="hidden">
	<script type="text/javascript">
	function aa(){
		var  useravatar=	document.getElementById("useravatar").value ;
		var div=document.getElementById("avatar");
		div.style.backgroundImage= "url("+useravatar+")";
	}

</script>

</body>
</html>