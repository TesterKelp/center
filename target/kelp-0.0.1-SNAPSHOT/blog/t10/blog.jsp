<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>${title}</title>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" type="text/css" href="t10/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="t10/css/nprogress.css">
<link rel="stylesheet" type="text/css" href="t10/css/style.css">
<link rel="stylesheet" type="text/css" href="t10/css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="t10/images/icon.png">
<link rel="shortcut icon" href="t10/images/favicon.ico">
<script src="t10/js/jquery-2.1.4.min.js"></script>
<script src="t10/js/nprogress.js"></script>
<script src="t10/js/jquery.lazyload.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="../ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="../ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="../ueditor/lang/zh-cn/zh-cn.js"></script>
<!--[if gte IE 9]>
<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="js/html5shiv.min.js" type="text/javascript"></script>
<script src="js/respond.min.js" type="text/javascript"></script>
<script src="js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 9]>
<script>window.location.href='upgrade-browser.html';</script>
<![endif]-->
</head>
<body class="user-select single">
<header class="header">
<nav class="navbar navbar-default" id="navbar">
<div class="container">
  <div class="header-topbar hidden-xs link-border">
	<ul class="site-nav topmenu">
  <li><a href="/" >首页</a></li>
		
	</ul>
			 勤记录 懂分享</div>
  <div class="navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar" aria-expanded="false"> <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
	<!-- <h1 class="logo hvr-bounce-in"><a href="#" title="木庄网络博客"><img src="images/201610171329086541.png" alt="木庄网络博客"></a></h1> -->
  </div>
  <div class="collapse navbar-collapse" id="header-navbar">
	<form class="navbar-form visible-xs" action="/Search" method="post">
	  <div class="input-group">
		<input type="text" name="keyword" class="form-control" placeholder="请输入关键字" maxlength="20" autocomplete="off">
		<span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
	</form>
	<ul class="nav navbar-nav navbar-right">
 	<li class="active"><a href="Blog.do?userid=${userid}"> 首頁
						</a></li>
						<c:forEach items="${ldt}" var="a" varStatus="status">
							<li><a
								href="Cate.do?userid=${userid}&&cateid=${a.blogcateid}&&pageno=1">
									${a.blogcatename} </a></li>
						</c:forEach>
	  
	</ul>
  </div>
</div>
</nav>
</header>
<section class="container">
<div class="content-wrap">
<div class="content">
  <header class="article-header">
	<h1 class="article-title"><a href="#" title="${title}" >${title}</a></h1>
	<div class="article-meta"> <span class="item article-meta-time">
	  <time class="time" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="发表时间：${creattime}"><i class="glyphicon glyphicon-time"></i> ${creattime}</time>
	  </span> <span class="item article-meta-source" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="${username}"><i class="glyphicon glyphicon-globe"></i> ${username}</span> 
	  <!--  
	  <span class="item article-meta-category" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="MZ-NetBlog主题"><i class="glyphicon glyphicon-list"></i> <a href="#" title="MZ-NetBlog主题" >MZ-NetBlog主题</a></span>
	   <span class="item article-meta-views" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="浏览量：219"><i class="glyphicon glyphicon-eye-open"></i> 219</span> 
	   <span class="item article-meta-comment" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="评论量"><i class="glyphicon glyphicon-comment"></i> 4</span> 
	   -->
	   </div>
  </header>
  <article class="article-content">
${content}
	
	<!-- 
	<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_tieba" data-cmd="tieba" title="分享到百度贴吧"></a><a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a></div>

		  <script>                  window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdMiniList": false, "bdPic": "", "bdStyle": "1", "bdSize": "32" }, "share": {} }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=0.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
  </article>
  <div class="article-tags">标签：<a href="#list/2/" rel="tag" >DTcms博客</a><a href="#list/3/" rel="tag" >木庄网络博客</a><a href="#list/4/" rel="tag" >独立博客</a><a href="#list/5/" rel="tag" >修复优化</a>
	</div>
	 -->
	
	<!--  
  <div class="relates">
	<div class="title">
	  <h3>相关推荐</h3>
	</div>
	<ul>
	  <li><a href="#" title="" >用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
	  <li><a href="#" title="" >用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
	  <li><a href="#" title="" >用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
	  <li><a href="#" title="" >用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
	  <li><a href="#" title="" >用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
	  <li><a href="#" title="" >用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
	  <li><a href="#" title="" >用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
	  <li><a href="#" title="" >用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
	</ul>
  </div>
  -->
  
  <div class="title" id="comment">
	<h3>评论</h3>
  </div>
  <div id="respond">
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

			<div class="comment">
			
			
			<li><script id="editor" type="text/plain"
										style="width:750px;height:150px;"> </script></li>
								<li><input class="form-control" id="articleid"
									value="${articleid}" type="hidden"> <input
									class="form-control" id="userid" value="${userid}"
									type="hidden">

									<button type="button" onclick="saveComment()">评论</button>
			
			
			
			
			
			
			
			
			
			
			
			<!-- 
				<input name="" id="" class="form-control" size="22" placeholder="您的昵称（必填）" maxlength="15" autocomplete="off" tabindex="1" type="text">
				<input name="" id="" class="form-control" size="22" placeholder="您的网址或邮箱（非必填）" maxlength="58" autocomplete="off" tabindex="2" type="text">
				<div class="comment-box">
					<textarea placeholder="您的评论或留言（必填）" name="comment-textarea" id="comment-textarea" cols="100%" rows="3" tabindex="3"></textarea>
					<div class="comment-ctrl">
						<div class="comment-prompt" style="display: none;"> <i class="fa fa-spin fa-circle-o-notch"></i> <span class="comment-prompt-text">评论正在提交中...请稍后</span> </div>
						<div class="comment-success" style="display: none;"> <i class="fa fa-check"></i> <span class="comment-prompt-text">评论提交成功...</span> </div>
						<button type="submit" name="comment-submit" id="comment-submit" tabindex="4">评论</button>
					</div>
				</div>
				 -->
				
				
			</div>

		
	</div>
  <div id="postcomments">
	<ol id="comment_list" class="commentlist">        

  						
							<c:forEach items="${ct}" var="p"  varStatus="status">
						
								<li class="comment-content"><span class="comment-f">#${ status.index + 1}</span><div class="comment-main"><p><a class="address" href="#" rel="nofollow" target="_blank">${p.username} </a>
								<span class="time">(${p.commenttime})</span><br>${p.content}</p></div></li>
  
  
								
								
							</c:forEach>
  
  </ol>
  </div>
</div>
</div>
<aside class="sidebar">
<div class="fixed">
  <div class="widget widget-tabs">
	<ul class="nav nav-tabs" role="tablist">
	  <li role="presentation" class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" >博客信息</a></li>
	  <li role="presentation"><a href="#contact" aria-controls="contact" role="tab" data-toggle="tab" >博主介绍</a></li>
	</ul>
	<div class="tab-content">
	  <div role="tabpanel" class="tab-pane contact active" id="notice">
	<!--  <a href="#"><img src="${useravatar}" width="88"	height="88" alt="pix" /></a> -->
								<a href="#">创建时间：${blogtime}</a><br>
								<a href="#">博主昵称：${username}</a><br>
							<a href="/index.do">管理博客：进入</a><br>
	  </div>
		<div role="tabpanel" class="tab-pane contact" id="contact">
		${introduce}
		  
		  
		  
		  
	  </div>
	</div>
  </div>
  <!--
  <div class="widget widget_search">
	<form class="navbar-form" action="/Search" method="post">
	  <div class="input-group">
		<input type="text" name="keyword" class="form-control" size="35" placeholder="请输入关键字" maxlength="15" autocomplete="off">
		<span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
	</form>
  </div>
    -->
  
</div>
<div class="widget widget_hot">
	  <h3>推荐阅读</h3>
	  <ul>
		
								<c:forEach items="${ltt}" var="t">
							<!-- 		<li><a
								href="Content.do?userid=${userid}&&blogid=${t.articleid}"
								title="${t.articletitle}">${t.articletitle}</li>
							 -->
								<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="Content.do?userid=${userid}&&blogid=${t.articleid}" >
								<span class="thumbnail">
<img class="thumb" data-original="images/201610181739277776.jpg" src="${t.picaddress}" alt="${t.articletitle}"  style="display: block;">
</span><span class="text">${t.articletitle}</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
2016-11-01
</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
								
							
								
						</c:forEach>
		
		
		
		

<!--  

<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
2016-11-01
</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
2016-11-01
</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>

-->



	  </ul>
  </div>
  
  <!--  
  <div class="widget widget_sentence">

<a href="#" target="_blank" rel="nofollow" title="MZ-NetBlog主题" >
	<img style="width: 100%" src="images/ad.jpg" alt="MZ-NetBlog主题" ></a>

</div>
  <div class="widget widget_sentence">

<a href="#" target="_blank" rel="nofollow" title="专业网站建设" >
	<img style="width: 100%" src="images/201610241224221511.jpg" alt="专业网站建设" ></a>

</div>-->
</aside>
</section>
<footer class="footer">
<div class="container">
 <p>Copyright &copy; 2016.Company name All rights reserved.${username}的博客 </p>
</div>
<div id="gotop"><a class="gotop"></a></div>
</footer>
<script src="t10/js/bootstrap.min.js"></script>
<script src="t10/js/jquery.ias.js"></script>
<script src="t10/js/scripts.js"></script>






<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');


    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }

    
    function saveComment(){
    	var UEDITOR_HOME_URL = "/ueditor/";
  // 	alert("12312312312");
    	var  articleid=	document.getElementById("articleid").value ;
    	var  userid=	document.getElementById("userid").value ;
    	 var ue = UE.getEditor('editor');
    	 var content = ue.getContent();
    	 
    	 if(content.trim() ==""){
    			alert("还未输入评论内容！！");
    			
    	 }else{
    	 
//    	alert(content);
    	$.ajax({
    		type : "POST",
    		url : "/module/share/SaveComment.do",
    		data: {articleid: articleid,content:content},
    		async : false,
    		dataType : "text",
    		success : function(data) {
//    			alert(data);
    			if(data=="ok"){
    				window.location.href="Content.do?userid="+userid+"&&blogid="+articleid; 
    			}
    			else if (data=="login"){
    				alert("请登录，在进行评论");
    					window.location.href="/module/usercenter/login.jsp";
    				
    			}
    			
    		}
    	});	
    	
    	 }
    	
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </script>













</body>
</html>
