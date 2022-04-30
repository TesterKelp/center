<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${article.articletitle}_${special.catename}_${m.item_name}_${site.sitename}</title>
<meta name="keywords" content="<c:forEach items="${taglt}" var="a" varStatus="status" >${a.tagname},</c:forEach> " />
<meta name="description" content="<c:if test="${fn:length(article.articleitd)>100 }">${ fn:substring(article.articleitd,0,100)} ...</c:if><c:if test="${fn:length(article.articleitd)<100}">${article.articleitd} ...</c:if>" />
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/lang/zh-cn/zh-cn.js"></script>
<link rel="shortcut icon" href="favicon.ico">
<link href="/template/kwz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/kwz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/kwz/css/animate.css" rel="stylesheet">
<link href="/template/kwz/css/defect.css" rel="stylesheet">
<link href="/template/kwz/css/style.css?v=4.1.0" rel="stylesheet">
	<script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
</head>

<body class="gray-bg">



<style type="text/css">

.box h5,  {
    color: #333;
    height: 35px;
    line-height: 40px;
    overflow: hidden;
    padding-left: 15px;
}
.lmtj {
    padding: 5px 15px 0 15px;
}

.box dl {
    margin: 0;
    word-wrap: break-word;
    display: block;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
}

.box ul, li{
	list-style: none;
    margin: 0;
    padding: 0;
    word-wrap: break-word;
}
.box h5.title-2, .box h6.title-2 {
    background-position: right -100px;
    height: 35px;
    padding-left: 16px;
    padding-top:20px ;
}
.box .digg li {
    background: url("/template/name/love/li1.gif") no-repeat left 8px;
    padding-left: 16px;
    height: 28px;
    line-height: 28px;
    overflow: hidden;
    position: relative;
}
.box a {
    text-decoration: none;
    color: #555;
    font-size: 13px;
    -webkit-transition: all .3s ease-in-out;
    -moz-transition: all .3s ease-in-out;
    -o-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
    font-family: "Microsoft Yahei","Helvetica Neue",Helvetica,Arial,sans-serif;
}

.bo {
   
    width:150px;
    height:50px;
    float:left;
    margin:10px;
    text-align:center ;
    background-color: #00a0e9; 
    border-radius: 6px;  
    padding-top:10px;
}
</style>





	<%@ include file="/template/kwz/htmlheader.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content  animated fadeInRight article">
		<div class="row">
			
				<div class="ibox">
					<div class="ibox-content"   style="min-height: 800px;" >

				<!-- 
						<br>
						<div class="pull-right">
							<a href='/blog/${member.userid}.do'>${member.username} </a>
							<button class="btn btn-white btn-xs" type="button">分享于：${article.creattime}</button>
							<img src="/test/pic/weixin.jpg" width="100"  height="100">
						</div>
						<div class="text-center article-title" style="">
							<h2> <b>${article.articletitle} </b></h2>
						</div>
						 -->
						
						<div class="col-lg-12">
						
						<div class="col-lg-2">
						扫描二维码，关注我们吧!<hr>
						
						<img src="/pic/wx/weix.gif"  style="width:100%" >
						
						</div>                                
						<div class="col-lg-8"  id="col-lg-9" style="padding-left:5px;border-right:1px dashed #A9A9A9 ;border-left:1px dashed #A9A9A9 ;word-wrap: break-word;word-break: break-all;min-height:800px" >
						<h2  class="text-center article-title"> <b>${article.articletitle} </b></h2>
						<div style="min-height:500px">
						<p >${article.articlecontent}</p>
						
						
						</div>
						<hr>
						
						<div style="margin:0 auto;width:80%; font-size: 22px;  height:90px;  ">
						<div style="margin:0 auto;width:400px; font-size: 22px;  height:90px;  ">
						 <c:if test="${PreviousId != 0}"> 
						 <a href="/${m.item_directorie}/<c:if test="${!empty c2}">${c2.catedirectory}/</c:if>${special.catedirectory}/article_${PreviousId}.do">
						 <div class="bo"> 上一条</div></a></c:if>   
						 <c:if test="${NextId != 0}"> 
						 <a href="/${m.item_directorie}/<c:if test="${!empty c2}">${c2.catedirectory}/</c:if>${special.catedirectory}/article_${NextId}.do">
						<div class="bo" >  下一条</div> </a></c:if>    
						</div>
						</div>

						</div>
						<div class="col-lg-2">



    <div style="padding-left: 16px;line-height:25px;">
							分享者：<a href='/blog/${member.userid}.do'>${member.username} </a><Br>
							分享于：${article.creattime}<Br>
							博    客：<a href='/blog/${member.userid}.do'>${member.username}博客 </a><Br>
							位     置：<a href="/${m.item_directorie}/portal.do">${m.item_name}</a>_<a href="/${m.item_directorie}/${c2.catedirectory}/index.do">${c2.catename}</a>_<a href="/${m.item_directorie}/${c2.catedirectory}/${special.catedirectory}/index.do">${special.catename}</a>


						</div>



		<div class="box">
            <h5 class="title-2">分享者的其他文章</h5>
            <dl class="digg lmtj">
                 	<c:forEach items="${blst}" var="a" varStatus="status" begin="1" end="25" step="1">
                 	 <c:if test="${m.item_directorie != a.pdir}">
                 	<ul><li><a href="/${m.item_directorie}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" target="_blank">${a.articletitle}</a></li></ul> 
                 	</c:if>
                 	<c:if test="${m.item_directorie == a.pdir}">
                 	<ul><li><a href="/${m.item_directorie}/${a.catedirectory}/article_${a.articleid}.do" target="_blank">${a.articletitle}</a></li></ul> 
                 	</c:if>   
       			    </c:forEach>  
			</dl>
 	  </div>








</div>


						</div>

						<p>
					
						</p>
						<hr>

						<div class="row">
							<div class="col-lg-12">
								<h2>评论：</h2>
								
								<input class="form-control" id="articleid" value="${article.articleid}"
									type="hidden">
								<script id="editor" type="text/plain"
									style="width:100% ;height:250px;"> </script>
								<button type="button" onclick="saveComment()">评论</button>
								<div id="comment">

								</div>

							</div>
						</div>


					</div>
				</div>
			
		</div>

	</div>


 <%@ include file="/template/kwz/footer.jsp"%> 
	<script type="text/javascript">


	
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
        window.UEDITOR_HOME_URL = "/defectsystem/ueditor/";
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
    

 
 	</script>

	<!-- 全局js -->

	<script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/kwz/js/content.js?v=1.0.0"></script>
	<script src="/template/kwz/kjs/Comment.js"></script>
	<script src="/template/kwz/kjs/common.js"></script>

<script>

window.onload=function (){
	
//function tt(){
//	alert("ddd");
	var o = document.getElementById("col-lg-9");
//	alert(o.offsetWidth);
	var imgs = document.getElementById("col-lg-9").getElementsByTagName("img") ;
//	var imgs = document.getElementsByTagName("img");
	for(var i=0; i<imgs.length; i++){
//  alert(imgs[i].width);
    if(imgs[i].width > o.offsetWidth){
    	 imgs[i].style["max-width"] = o.offsetWidth - 20 + "px"; 
    }	
    }  
}



</script>

</body>

</html>