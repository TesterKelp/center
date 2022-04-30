<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/lang/zh-cn/zh-cn.js"></script>
<link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/test/css/defect.css" rel="stylesheet">



	<link rel="stylesheet" href="/zTree_v3/css/demo.css" type="text/css">
	<link rel="stylesheet" href="/zTree_v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="/zTree_v3/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="/zTree_v3/js/jquery.ztree.core.js"></script>





	<SCRIPT type="text/javascript">
		
		var setting = {
			view: {
				dblClickExpand: false
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeClick: beforeClick,
				onClick: onClick
			}
		};

		
		
		var zNodes =[
			{id:1, pId:0, name:"北京"},
			{id:2, pId:0, name:"天津"},
			{id:3, pId:0, name:"上海"},
			{id:6, pId:0, name:"重庆"},
			{id:4, pId:0, name:"河北省", open:true},
			{id:41, pId:4, name:"石家庄"},
			{id:42, pId:4, name:"保定"},
			{id:43, pId:4, name:"邯郸"},
			{id:44, pId:4, name:"承德"},
			{id:5, pId:0, name:"广东省", open:true},
			{id:51, pId:5, name:"广州"},
			{id:52, pId:5, name:"深圳"},
			{id:53, pId:5, name:"东莞"},
			{id:54, pId:5, name:"佛山"},
			{id:6, pId:0, name:"福建省", open:true},
			{id:61, pId:6, name:"福州"},
			{id:62, pId:6, name:"厦门"},
			{id:63, pId:6, name:"泉州"},
			{id:64, pId:6, name:"三明"}
		 ];

		function beforeClick(treeId, treeNode) {
			var check = (treeNode && !treeNode.isParent);
			if (!check) alert("只能选择终极分类");
			return check;
		}
		
		function onClick(e, treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getSelectedNodes(),
			v = "";
			vv = "" ;
			nodes.sort(function compare(a,b){return a.id-b.id;});
			for (var i=0, l=nodes.length; i<l; i++) {
				v += nodes[i].name + ",";
				vv += nodes[i].id ;
			}
			if (v.length > 0 ) v = v.substring(0, v.length-1);
			var cityObj = $("#citySel");
			cityObj.attr("value", v);
			document.getElementById("cateid").value=vv ;
			
			Tag(vv);
			document.getElementById("menuContent").style.display="none";
			
		}

		function showMenu() {
			var cityObj = $("#citySel");
			var cityOffset = $("#citySel").offset();
		//	$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
			$("#menuContent").slideDown("fast");

			$("body").bind("mousedown", onBodyDown);
		}
		function hideMenu() {
			$("#menuContent").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}
		function onBodyDown(event) {
			if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
				hideMenu();
			}
		}

	
		
	//	/module/share/GetCateJson.do  /module/admin/ddeptlist.do
	
			var tree=[];
			$.ajax({
				type : "GET",
				url : "/module/share/GetCateJson.do",
				async : false,
				dataType : "json",
				success : function(result) {
					
				     var obj={id:0,pid:0,name:"0",open:false,sort:0,urll:"0",code:"0",icon:"0",type:0,state:0,desc:"0"} ;
				     for(var i=0;i<(result.length);i++){
				     obj.id   = eval('(' + result[i].cateid + ')');
				     obj.pid  = eval('(' + result[i].pid + ')');
				     obj.name = result[i].catename ;
				     obj.urll = result[i].url ;
				     obj.code = result[i].permissioncode ;
				     obj.icon = result[i].icon ;
				     obj.desc = result[i].descp ;
				     obj.state = eval('(' + result[i].state + ')');
				     obj.type = eval('(' + result[i].type + ')');
				     obj.sort=eval('(' + result[i].sort + ')');
				     obj2 ={id:obj.id,pId:obj.pid,name:obj.name,open:obj.open,sort:obj.sort,urll:obj.urll,code:obj.code,icon:obj.icon,type:obj.type,state:obj.state,desc:obj.desc};
				     tree.push(obj2);
				     }
				}
			});
	
	
			$(document).ready(function(){
				 console.log(zNodes);  
				$.fn.zTree.init($("#treeDemo"), setting, tree);
		 	});	
			
			
			
	</SCRIPT>

<link href="/module/share/tag/tab.css" type="text/css" rel="stylesheet" />

<script type="text/javascript">
function stops(){
   return false;
}
document.oncontextmenu=stops;
</script>





</head>

<body class="gray-bg">

<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>

	<div class="wrapper wrapper-content">
		<div class="row">
			<div class="col-sm-12">
				<div class="row">
				
				<div class="col-sm-2">
				   <div class="ibox float-e-margins">
                    <div class="ibox-content mailbox-content">
                        <div class="file-manager">
                          <!--    <a class="btn btn-block btn-primary compose-mail" href="#">个人中心</a>-->
                            <div class="space-25"></div>
                            <h5>个人中心</h5>

                            <ul class="folder-list m-b-md" style="padding: 0" id="leftmenu"></ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
				</div>
				
				
				
				
				
				
				
				
				
				
					<div class="col-sm-10">
						<div class="ibox float-e-margins">
						 
							<div class="ibox-title">
								<h5>编辑文章</h5>
							</div>
							 
							<div class="ibox-content">
								<div class="row">
									<div class="col-sm-0"></div>
									<div class="col-sm-12">
										<form role="form" method="get" class="form-horizontal">
											<div class="form-group">
												<label class="col-sm-2 control-label">博客分类:${Cblogcateid}</label>
												<div class="col-sm-4">
													<select class="form-control" id="blogcate">
														<c:forEach items="${blogcatelist}" var="b">
															<c:if test="${b.blogcateid==Cblogcateid}">
																<option value="${b.blogcateid}" selected="selected">${b.blogcatename}</option>
															</c:if>
															<c:if test="${b.blogcateid!=Cblogcateid }">
																<option value="${b.blogcateid}">${b.blogcatename}</option>
															</c:if>
														</c:forEach>
													</select>
												</div>
												
												
												
												<label class="col-sm-2 control-label">分享分类:</label>
												<div class="col-sm-4">
												
												<div class="zTreeDemoBackground left">
		<ul class="list">
			
			<li class="title"><input id="citySel" type="text" readonly  class="form-control" value="${Ccatename}"  onclick="showMenu(); return false;" style="width:100px;"/>
<input id="cateid" type="hidden" readonly value="${Ccateid}" class="form-control"  style="width:50px;"  />
		&nbsp;<a id="menuBtn" href="#" onclick="showMenu(); return false;"  style="display:none; ">选择</a></li>
		</ul>
		<div id="menuContent" class="menuContent" style="display:none; position: absolute;"> 
	   <ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"></ul>
</div>
</div>												
												
												
												
												
												
												
												
												
												<!--
												
													<select class="form-control" id="articlecate">
														<c:forEach items="${catelist}" var="a">
															<c:if test="${a.cateid==Ccateid}">
																<option value="${a.cateid}" selected>${a.catename}</option>
															</c:if>
															<c:if test="${a.cateid!=Ccateid }">
																 <c:if test="${not empty a.scateid}"> <option value="${a.cateid}">---${a.catename}</option>       </c:if>
																 <c:if test="${ empty a.scateid}"> <optgroup label="${a.catename}"> </optgroup>      </c:if>
															</c:if>
														</c:forEach>
													</select>
												  -->	
													
												</div>
												
												
												
												
												
												
												
												
												
											</div>

									



											<div class="form-group">
												<label class="col-sm-2 control-label">文章标题:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="title"
														value="${title}"> <input type="hidden"
														class="form-control" id="blogid" value="${articleid}">
												</div>
												
												
												
											<label class="col-sm-2 control-label">分享专题:</label>
												<div class="col-sm-4">
													<select class="form-control" id="articletopic">

														<c:if test="${ctopicid==0}">
															<option value="0" selected>不使用专题</option>
														</c:if>
														<c:forEach items="${topiclist}" var="tt">
															<c:if test="${tt.topicid==ctopicid}">
																<option value="${tt.topicid}" selected="selected">${tt.topicname}1</option>
															</c:if>

															<c:if test="${tt.topicid!=ctopicid }">
																<option value="${tt.topicid}">${tt.topicname}45</option>
															</c:if>
														</c:forEach>
													</select>
												</div>
												
												
												
												
												
												
												
												
												
												
												
												
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">文章内容:</label>
												<div class="col-sm-10">
													<script id="editor" type="text/plain"
														style="width:100%;height:400px;">${content}</script>
												</div>
											</div>





								<div class="form-group">
												<label class="col-sm-2 control-label">文章tag标签(最多5个)</label>
												<div class="col-sm-10">
														<div class="plus-tag tagbtn clearfix" id="myTags"  style="height:50px;"  >
														
														<c:forEach items="${taglt}" var="a" varStatus="status" >
				
					<a value="${a.tagid}" title="${a.tagname}" href="javascript:void(0);"><span>${a.tagname}</span><em></em></a>
														
					  </c:forEach> 
														
														
														
														</div>
												</div>
												
											</div>





<div class="form-group">
			<label class="col-sm-2 control-label"> </label>
												<div class="col-sm-10">
<div class="demo" style="margin-top:1px;">	

  <!--   <span class="label" style=" font-size: 16px;">我的标签：</span> --> 
	<div id="mycard-plus" style="display:none;margin-top: -25px;">
		<div class="default-tag tagbtn">
			<div class="clearfix"  id="mytag">
				<c:forEach items="${tagl}" var="a" varStatus="status" >
				
					<a value="${a.tagid}" title="${a.tagname}" href="javascript:void(0);"><span>${a.tagname}</span><em></em></a>
														
					  </c:forEach>         
			</div>
		</div>
	</div><!--mycard-plus end-->
	
		<div class="plus-tag-add"  id="56" >
		<form  action=""  class="login">
			<ul class="Form FancyForm" style="margin-top: 10px;float:left">
				<div >
					<input id="" name="" type="text"  maxlength="20"  style="width:260px; float:left;" />
					<button type="button" class="Button RedButton Button18" style="font-size:14px;" >添加标签</button>
				</div>
				<div  style="float:left">
					
					 <!-- <a href="javascript:void(0);">展开推荐标签</a> -->
				</div>
			</ul>
		</form>
	</div><!--plus-tag-add end-->

</div>
	</div>
</div>






















											<div class="form-group">
												<label class="col-sm-4 control-label"> </label>
												<div class="col-sm-6">
													<div class="btn btn-primary" onclick="editBlog()">
														<a href="#">修改</a>
													</div>
												</div>
											</div>
										</form>
									</div>
									<div class="col-sm-2"></div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>



	<!-- 全局js -->

	<script src="/test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="js/article.js"></script>
	<!-- 自定义js -->
	<script src="/test/js/content.js?v=1.0.0"></script>

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


	function Tag(cateid){
		$('#myTags').html("");
	//	$('#56').show();
	 	$.ajax({
			type : "GET",
			url : "/tag/MyTag_js.do",
			data: {cateid:cateid},
			async : false,
			dataType : "text",
			success : function(data) {
				document.getElementById("mytag").innerHTML=data ;
			}
		});
	 	}
    

	
 	</script>












	<script type="text/javascript">
 	function editBlog(){
 		
 		var UEDITOR_HOME_URL = "/ueditor/";
 		var  myselect=document.getElementById("blogcate");
 		var index=myselect.selectedIndex ;   
 		var cateid = myselect.options[index].value;
 		
 //		var  myselect1=document.getElementById("articlecate");
 //		var index1=myselect1.selectedIndex ;   
 	//	var articlecateid = myselect1.options[index1].value;
 		var articlecateid = document.getElementById("cateid").value ;
    	var  title=	document.getElementById("title").value ;
    	var  blogid=	document.getElementById("blogid").value ;
 		var  myselect2=document.getElementById("articletopic");
 		var index2=myselect2.selectedIndex ;  
 		var topicid = myselect2.options[index2].value;
    	 
    	var ue = UE.getEditor('editor');
    	var content = ue.getContent();
    	
    	
    	
    	var smalls = document.getElementById('myTags').getElementsByTagName('a');
    	var ids="" ;
    	var keys="" ;
    	for(var i=0;i<smalls.length;i++){
    		var id =smalls[i].getAttribute("value") ;
    		if(id=="-1"){
    			keys += smalls[i].getAttribute("title")+",";
    		}else{
    			ids += smalls[i].getAttribute("value")+",";
    		}	
    	}
    	
    	
    	
    	
    	
    	
    	
    	$.ajax({
    		type : "POST",
    		url : "/module/share/EditBlog.do",
    		data: {title: title,content:content,cateid:cateid,articlecateid:articlecateid,blogid:blogid,topicid:topicid,ids,keys},
    		async : false,
    		dataType : "json",
    		success : function(data) {
    			if(data.msg=="ok"){
	    			//alert("编辑成功！");
    	    		document.getElementById("title").value="";
   	    		     ue.setContent(" ");

   	    		  if (navigator.userAgent.indexOf('MSIE') > 0) { // close IE
   	    		   if (navigator.userAgent.indexOf('MSIE 6.0') > 0) {
   	    		      window.opener = null;
   	    		      window.close();
   	    		   } else {
   	    		      window.open('', '_top');
   	    		      window.top.close();
   	    		   }
   	    		} else { // close chrome;It is effective when it is only one.
   	    		   window.opener = null;
   	    		   window.open('', '_self');
   	    		   window.close();
   	    		}
     
    		}else{
    			alert("编辑失败！");
    		}
    			
    			
    			
    			
    		}
    	});	
 	}
</script>

<script type="text/javascript" src="/module/share/tag/tab.js"></script>
<script type="text/javascript" src="/module/common/leftmenu.js"></script>
</body>
</html>