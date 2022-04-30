<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${title}_${c3.catename}_${c2.catename}__${m.item_name}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="/ueditor/lang/zh-cn/zh-cn.js"></script>
<link href="/template/wz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/wz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<!--  <link href="/template/wz/css/animate.css" rel="stylesheet"> -->
<link href="/template/wz/css/defect.css" rel="stylesheet">
<link href="/template/wz/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/template/wz/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="/template/wz/top/style.css" rel="stylesheet" type="text/css">
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

p img{
	max-width:900px;_width:500px;
}
</style>

<%@ include file="/template/wz/htmlheader.jsp"%>
	<div class="wrapper animated fadeInRight article">
		<div class="row">
				<div class="ibox">
					<div class="ibox-content"   style="min-height: 800px; width:1280px;margin:0 auto;" >
<div class="col-lg-9" style="min-height: 900px;border-right:1px dashed #A9A9A9 ; " id="col-lg-8">

	<div class="pull-right">
							<img src="/test/pic/weixin.jpg" width="100"  height="100">
						</div>

				<div class="text-center article-title">
				<h2> <b> ${article.articletitle} </b></h2><hr>	</div>
						<p >${article.articlecontent}</p>

						
						
						
						<hr>



						<h2>评论：</h2>
								<input class="form-control" id="articleid" value="${article.articleid}"
								 type="hidden"	>
								<script id="editor" type="text/plain"
									style="width:100% ;height:250px;"> </script>
								<button type="button" onclick="saveComment()">评论</button>
								<div id="comment">
								<!-- js  load  comment -->

								</div>


















</div>
<div class="col-lg-3" style="min-height: 800px; ">
		
				
				
				<div style="padding-left: 16px;line-height:25px;">
							分享者：<a href='/blog/${member.userid}.do'>${member.username} </a><Br>
							分享于：${article.creattime}<Br>
							博    客：<a href='/blog/${member.userid}.do'>${member.username}博客 </a><Br>
							位     置：<a href="/${m.item_directorie}/portal.do">${m.item_name}</a>_<a href="/${m.item_directorie}/${c2.catedirectory}/index.do">${c2.catename}</a>_<a href="/${m.item_directorie}/${c2.catedirectory}/${special.catedirectory}/index.do">${special.catename}</a>
						</div>
				
						
		<div class="box">
            <h5 class="title-2">其他文章</h5>
            <dl class="digg lmtj">
                 	
                 	<c:forEach items="${blst}" var="a" varStatus="status" begin="1" end="25" step="1">
                 	
                 	 <c:if test="${item != a.pdir}">
                 	<ul><li><a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" target="_blank">${a.articletitle}</a></li></ul> 
                 	</c:if>
                 	<c:if test="${item == a.pdir}">
                 	<ul><li><a href="/${item}/${a.catedirectory}/article_${a.articleid}.do" target="_blank">${a.articletitle}</a></li></ul> 
                 	</c:if>   
       			    </c:forEach>  
  
			</dl>
 	</div>	
				
				
				
				
				
				
				
						
						
</div>


					
					<hr >	

						<div class="row">
							<div class="col-lg-9" >
								

							</div>
						</div>


					</div>
				</div>
			
		</div>

	</div>



	<%@ include file="/template/wz/footer.jsp"%> 
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
	<script src="/template/wz/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/wz/js/bootstrap.min.js?v=3.3.6"></script>

	<!-- 自定义js -->
	<script src="/template/wz/js/content.js?v=1.0.0"></script>
	<script src="/template/wz/kjs/Comment.js"></script>
   <script src="/template/wz/kjs/common.js"></script>


<script>
	var o = document.getElementById("col-lg-8");
	var imgs = document.getElementById("col-lg-8").getElementsByTagName("img") ;
	for(var i=0; i<imgs.length; i++){
    if(imgs[i].width > o.offsetWidth){
    	 imgs[i].style["max-width"] = o.offsetWidth - 60 + "px";
    }	
    
    
    
    
    
    } 

</script>




</body>

</html>