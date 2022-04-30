<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>H+ 测试平台 - 空白页</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

<script type="text/javascript" charset="utf-8"
	src="../../ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="../../ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="../../ueditor/lang/zh-cn/zh-cn.js"></script>

<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">

<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">


	<div class="wrapper wrapper-content">
		<div class="row">
			<div class="col-sm-12">




				<div class="row">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>发布接口</h5>

							</div>
							<div class="ibox-content">
								<div class="row">
									<div class="col-sm-2"></div>
									<div class="col-sm-6">

										<form role="form" method="get" class="form-horizontal">


											<div class="form-group">
												<label class="col-sm-2 control-label">所属项目:</label>
												<div class="col-sm-6">
													<select class="form-control" id="project"
														onchange='getmodule()'>
														<option value="0">系统分类</option>
														<option value="1">分享分类</option>
													</select>
												</div>
											</div>




											<div class="form-group">
												<label class="col-sm-2 control-label">所属模块:</label>
												<div class="col-sm-6">
													<select class="form-control" id="module">
														<option value="0">请选择项目</option>
													</select>
												</div>
											</div>












											<div class="form-group">
												<label class="col-sm-2 control-label">接口名称:</label>
												<div class="col-sm-6">
													<input type="text" class="form-control" id="title">
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-2 control-label">接口描述:</label>
												<div class="col-sm-6">
													<script id="editor" type="text/plain"
														style="width: 1024px; height: 550px;"> 请输入文章内容！</script>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-4 control-label"> </label>
												<div class="col-sm-6">
													<div class="btn btn-primary">
														<a href="#" onclick="AddFace()">保存</a>
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
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/module/mift/js/InterfaceCreate.js"></script>
	<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
     //   window.UEDITOR_HOME_URL = "/defectsystem/ueditor/";
   // alert(window.UEDITOR_HOME_URL);
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
    
  	$.ajax({
		type : "GET",
		url : "/defectsystem/module/share/GetShareCateSelect.do",
		async : false,
		dataType : "text",
		success : function(data) {
			document.getElementById("articlecate").innerHTML=data ;
		}
	});	
    
 	$.ajax({
		type : "GET",
		url : "/defectsystem/module/share/GetBlogCateSelcet.do",
		async : false,
		dataType : "text",
		success : function(data) {
			document.getElementById("blogcate").innerHTML=data ;
		}
	});
    
    
 	
 	
 	
 	function addBlog(){
 		var UEDITOR_HOME_URL = "/ueditor/";
 		var  myselect=document.getElementById("blogcate");
 		var index=myselect.selectedIndex ;   
 		var cateid = myselect.options[index].value;
 		var  myselect1=document.getElementById("articlecate");
 		var index1=myselect1.selectedIndex ;   
 		var articlecateid = myselect1.options[index1].value;
    	var  title=	document.getElementById("title").value ;
    	var ue = UE.getEditor('editor');
    	var content = ue.getContent();
    	$.ajax({
    		type : "POST",
    		url : "/defectsystem/module/share/AddBlog.do",
    		data: {title: title,content:content,cateid:cateid,articlecateid:articlecateid},
    		async : false,
    		dataType : "text",
    		success : function(data) {
    			alert(data.msg);
    			document.getElementById("title").value="";
    		     ue.setContent(" ");
    		}
    	});	
 	}
 	
 	
 	
 	
 	
 	
 	
 	
</script>


</body>

</html>