<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>${title}</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../blog/t4/style.css" rel="stylesheet" type="text/css" />
<link href="t1/css/styles.css" rel="stylesheet">
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="t4/js/cufon-yui.js"></script>
<script type="text/javascript" src="t4/js/arial.js"></script>
<script type="text/javascript" src="....t4/js/cuf_run.js"></script>
<script src="../test/js/jquery.min.js?v=2.1.4"></script>
<script type="text/javascript" charset="utf-8"
	src="../ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="../ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="../ueditor/lang/zh-cn/zh-cn.js"></script>
<!-- CuFon ends -->
<style type="text/css">
.box {
	height: 20px;
	line-height: 30px;
	overflow: hidden;
	display: block;
}
</style>
</head>
<body>
	<div class="main">

		<div class="header">
			<div class="header_resize">

				<div class="menu_nav">
					<ul>
						<li><a href="Blog.do?userid=${userid}"> 首頁 </a></li>
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
				</div>


				<!-- 
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="">
          <span><input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" /></span>
          <input name="button_search" src="t4/images/search_btn.gif" class="button_search" type="image" />
        </form>
      </div>
       -->


				<div class="clr"></div>
			</div>
		</div>

		<div class="content">
			<div class="content_resize">
				<div class="content_resize2">
					<br>
					<div class="mainbar">
						<div class="article">
							<h2>
								<span>${title}</span>
							</h2>
							<div class="clr"></div>
							<p>
								分享者 :<a href="#">${username}</a> <span>&nbsp;&bull;&nbsp;</span>
								分享时间 : ${creattime}
							</p>
							${content}


						</div>

						<div class="article">

							<ol>
								<li><script id="editor" type="text/plain"
										style="width:630px;height:150px;"> </script></li>
								<li><input class="form-control" id="articleid"
									value="${articleid}" type="hidden"> <input
									class="form-control" id="userid" value="${userid}"
									type="hidden">

									<button type="button" onclick="saveComment()">评论</button>

									<div class="clr"></div></li>
							</ol>

						</div>

						<div class="article">
							<c:forEach items="${ct}" var="p">
								<div class="comment">
									<a href="#"><img src="${p.useravatar} " width="60"
										height="60" alt="user" class="userpic" /></a>
									<p>
										<a href="#">${p.username} </a> Says:<br />${p.commenttime}</p>
									<p>${p.content}</p>
								</div>
							</c:forEach>
						</div>
					</div>

					<div class="sidebar">
						<div class="gadget">
							<h2 class="star">
								<span>Personal </span>Profile
							</h2>
							<div class="clr"></div>
							<ul class="sb_menu">
								<!--  
            
            <li><a href="#">帮助人数：10025</a></li>
            <li><a href="#">分享博文：125</a></li>
            <li><a href="#">Blog Url：</a></li>-->
								<li><a href="#"><img src="${useravatar}" width="88"
										height="88" alt="pix" /></a></li>
								<li><a href="#">创建时间：${blogtime}</a></li>
								<li><a href="#">博主昵称：${username}</a></li>
								<li><a href="/index.do">管理博客：进入</a></li>
							</ul>
						</div>

						<div class="gadget">
							<h2 class="star">
								<span>阅读排行榜</span>
							</h2>
							<div class="clr"></div>
							<ul class="ex_menu">
								<c:forEach items="${ltt}" var="t">
									<li class="box"><a
										href="Content.do?userid=${userid}&&blogid=${t.articleid}"
										title="${t.articletitle}">${t.articletitle}</li>

								</c:forEach>
							</ul>
						</div>

						<div class="gadget">
							<h2 class="star">
								<span>自我介绍</span>
							</h2>
							<div class="clr"></div>
							<ul class="ex_menu">${introduce}
							</ul>
						</div>

						<div class="gadget">
							<h2 class="star">
								<span>站点公告</span>
							</h2>
							<div class="clr"></div>
							<ul class="ex_menu">${notice}
							</ul>
						</div>








					</div>






					<div class="clr"></div>



				</div>
			</div>
		</div>
		<!-- 
  <div class="fbg">
  
  
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image Gallery</span></h2>
        <a href="#"><img src="t4/images/pix1.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="t4/images/pix2.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="t4/images/pix3.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="t4/images/pix4.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="t4/images/pix5.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="t4/images/pix6.jpg" width="58" height="58" alt="pix" /></a>
      </div>
      <div class="col c2">
        <h2><span>Lorem Ipsum</span></h2>
        <p>Lorem ipsum dolor<br />Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam.</p>
      </div>
      <div class="col c3">
        <h2><span>Contact</span></h2>
        <p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue.</p>
        <p><a href="mailto:support@yoursite.com">support@yoursite.com</a></p>
        <p>+1 (123) 444-5677<br />+1 (123) 444-5678</p>
        <p>Address: 123 TemplateAccess Rd1</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
 -->
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
