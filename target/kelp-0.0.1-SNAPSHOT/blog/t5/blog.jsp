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
<script src="../test/js/jquery.min.js?v=2.1.4"></script>
<script type="text/javascript" charset="utf-8"
	src="../ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="../ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="../ueditor/lang/zh-cn/zh-cn.js"></script>

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
					<section> <header>
					<h3 align="center" style="font-size: 25px">${title}</h3>
					<hr
						style="height: 1px; border: none; margin-top: 20px; border-top: 1px solid #787460;" />
					</header> <!-- 	<a href="#" class="image full"><img src="../blog/t5/images/pic07.jpg" alt="" /></a> -->
					<p>${content}</p>
					<p>
						<script id="editor" type="text/plain"
							style="width:750px;height:150px;"> </script>
					</p>
					<input class="form-control" id="articleid" value="${articleid}"
						type="hidden"> <input class="form-control" id="userid"
						value="${userid}" type="hidden">
					<button type="button" onclick="saveComment()">评论</button>
					</section>



					<c:forEach items="${ct}" var="p">
						<hr>
						<p class="posted">${p.username}| ${p.commenttime}</p>
						<img src="${p.useravatar}" width="60" height="60" alt="" />
						<p class="text">${p.content}</p>
					</c:forEach>

				</div>








				<!-- Sidebar -->
				<div id="sidebar" class="4u">
					<section> <header>
					<h2>阅读排行榜</h2>
					</header>
					<ul class="style">
						<!-- 
								<li>
									<p class="posted">August 11, 2002  |  (10 )  Comments</p>
									<img src="../blog/t5/images/pic04.jpg" alt="" />
									<p class="text">Nullam non wisi a sem eleifend. Donec mattis libero eget urna. Pellentesque viverra enim.</p>
								</li> -->



						<c:forEach items="${ltt}" var="t">
							<li><a
								href="Content.do?userid=${userid}&&blogid=${t.articleid}"
								title="${t.articletitle}">${t.articletitle}</li>
						</c:forEach>













					</ul>
					</section>
				</div>

			</div>
		</div>
	</div>













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
//    	alert("12312312312");
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