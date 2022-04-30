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
<link href="../../t1/css/styles.css" rel="stylesheet">
<script src="../../../test/js/jquery.min.js?v=2.1.4"></script>
<!--[if lt IE 9]>
<script src="../../t1/js/modernizr.js"></script>
<![endif]-->


</head>
<body onload="aa()">
	<header> <nav id="nav">
	<ul>${menu}
	</ul>
	<script src="../../js/silder.js"></script><!--获取当前页导航 高亮显示标题--> </nav> <script
		type="text/javascript" charset="utf-8"
		src="../../../ueditor/ueditor.config.js"></script> <script
		type="text/javascript" charset="utf-8"
		src="../../../ueditor/ueditor.all.min.js"> </script> <script
		type="text/javascript" charset="utf-8"
		src="../../../ueditor/lang/zh-cn/zh-cn.js"></script> </header>
	<div class="mainContent">
		<aside>
		<div class="avatar" id="avatar1">
			<a href="#" id="avatar"><span> ${username}</span></a>
		</div>
		<section class="topspaceinfo"> ${introduce} </section> <!-- $("#divId").attr("style","background:url('/kc/system/images/top.png') no-repeat;width:100%;height:128px;");  -->


		<div class="userinfo">
			<p class="q-fans">
				昵称 ：<a href="/" target="_blank">${username}</a>
			</p>
			<!--    <p class="btns"><a href="/" target="_blank" >私信</a><a href="/" target="_blank">相册</a><a href="/" target="_blank">存档</a></p>   -->
		</div>
		<section class="newpic">
		<h2>::公告::</h2>
		<!-- 
         <ul>
           <li><a href="/"><img src="../../t1/images/01.jpg"></a></li>
           <li><a href="/"><img src="../t1/images/02.jpg"></a></li>
           <li><a href="/"><img src="../../../images/03.jpg"></a></li>
           <li><a href="/"><img src="t1/images/04.jpg"></a></li>
           <li><a href="/"><img src="t1/images/05.jpg"></a></li>
           <li><a href="/"><img src="t1/images/06.jpg"></a></li>
           <li><a href="/"><img src="t1/images/07.jpg"></a></li>
           <li><a href="/"><img src="t1/images/08.jpg"></a></li>
         </ul>
          -->
		<div class="userinfo">${notice}</div>
		</section> <section class="newpic">
		<h2>最近访客</h2>

		<ul>
			<li><a href="/"><img src="../../t1/images/01.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/02.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/03.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/04.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/05.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/06.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/07.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/08.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/01.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/02.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/03.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/04.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/05.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/06.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/07.jpg"></a></li>
			<li><a href="/"><img src="../../t1/images/08.jpg"></a></li>
		</ul>


		</section> <section class="taglist">
		<ul>

		</ul>
		</section> <!-- 
      <section class="taglist">
         <h2>全部标签</h2>
         <ul>
           <li><a href="/">青空</a></li>
           <li><a href="/">情感聊吧</a></li>
           <li><a href="/">study</a></li>
           <li><a href="/">青青唠叨</a></li>
        </ul>
      </section>
       --> </aside>
		<div class="blogitem">


			<article>
			<h2 class="title" align="center">
				<a href="#">${title}</a>
			</h2>
			<ul class="text">${content}
			</ul>
			<div class="textfoot">
				<a href="/">${username} 分享于：</a><a href="/">${creattime}</a> <a
					href="#" onclick="comment('${articleid}')">查看评论</a>
			</div>
			<div class="textfoot" align="left">


				<script id="editor" type="text/plain"
					style="width:750px;height:150px;"> 请输入文章内容！</script>
				<input class="form-control" id="articleid" value="${articleid}"
					type="hidden"> <input class="form-control" id="useravatar"
					value="${useravatar} " type="hidden">
				<button type="button" onclick="saveComment()">评论</button>
				<div id="comment">
					暂无评论！ <a href="#" onclick="aa()"> aaa</a>
				</div>
			</div>


			</article>











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
    
    function adduserid(userid){
    	document.getelementbyId
    	var  a=	document.getElementById("auserid");
    	a.value= userid ;
    }
    
    
    
    function saveComment(){
    	var UEDITOR_HOME_URL = "/ueditor/";
    	var  articleid=	document.getElementById("articleid").value ;
    	 var ue = UE.getEditor('editor');
    	 var content = ue.getContent();
    	alert(content);
    	$.ajax({
    		type : "POST",
    		url : "/defectsystem/module/share/SaveComment.do",
    		data: {articleid: articleid,content:content},
    		async : false,
    		dataType : "text",
    		
    		success : function(data) {
    			alert(data);
    			if(data=="ok"){
    				window.location.href=articleid+".html"; 
    			}
    			else if (data=="login"){
    				alert("请登录，在进行评论");
    					window.location.href="/defectsystem/module/usercenter/login.jsp";
    			}
    			
    		}
    		
    		
    	});	
    }

    
    function comment(){
    	var UEDITOR_HOME_URL = "/ueditor/";
    	var  articleid=	document.getElementById("articleid").value ;
    	var ue = UE.getEditor('editor');
    	var content = ue.getContent();
    	alert(content);
    	$.ajax({
    		type : "POST",
    		url : "/defectsystem/module/share/GetComment.do",
    		data: {articleid: articleid,content:content},
    		async : false,
    		dataType : "text",
    		success : function(data) {
    			document.getElementById("comment").innerHTML=data ;
    		}
    	});	
    }
    
    
    
    
	function aa(){

		var  useravatar=	document.getElementById("useravatar").value ;
		var div=document.getElementById("avatar");
		div.style.backgroundImage= "url("+useravatar+")";

	}
	
	
	
	
    
    
    
    
    
    
</script>
</body>
</html>