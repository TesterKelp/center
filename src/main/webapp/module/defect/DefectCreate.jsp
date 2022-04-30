<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
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
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
	<%@ include file="/module/common/aheader.jsp"%>

	<div class="wrapper wrapper-content">
		<div class="row">
			<div class="col-sm-12">


				<div class="row">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">

							<div class="ibox-content">
								<div class="row">

									<div class="col-sm-12" style="min-height: 800px;">
										<form role="form" method="#" class="form-horizontal" id="asd">
											<!--   class="form-inline" -->
<!--  
											<div class="form-group">
												<label class="col-sm-1 control-label">分配给：</label>
												<div class="col-sm-3">
													<select class="form-control" name="assigned">
													<option value="1">分配给</option>
														<auto:UserSelect></auto:UserSelect>
													</select>
												</div>
											</div>
-->

											<div class="form-group">
											
												<label class="col-sm-1 control-label">缺陷标题</label>
												<div class="col-sm-5">
													<input type="text" class="form-control" name="bugtitle"
														id="bugtitle"   placeholder="缺陷标题">
												</div>
												
											
												<div class="col-sm-2">
													<select class="form-control" name="assigned">
													<option value="1">指定修复专家</option>
														<auto:UserSelect></auto:UserSelect>
													</select>
												</div>
												
													<!-- <div class="col-sm-4">
												 <label class="col-sm-3 control-label">严重程度</label>-->
													<div class="col-sm-2">
														<select class="form-control" name="severity">
														<option value="-">严重程度</option>
															<option value="最高">最高</option>
															<option value="高">高</option>
															<option value="中">中</option>
															<option value="低">低</option>
														</select>

													</div>
												<!-- 	<label class="col-sm-3 control-label">优先级别</label> -->
													<div class="col-sm-2">
														<select class="form-control" name="priority">
														<option value="-">优先级别</option>
															<option value="最高">最高</option>
															<option value="高">高</option>
															<option value="中">中</option>
															<option value="低">低</option>
														</select>
													</div>
												</div>
											<!-- 	</div> -->


											<div class="form-group">
												<label class="col-sm-1 control-label">描述</label>
												<div class="col-sm-11">
													<script id="editor" type="text/plain"
														style="width: 99%; height: 100%;">
【重现步骤】：

<p>1.</P>
<p> 2.</P>
<p>3.</P>
<p></P>
【期望】：
<p></P>
<p></P>
【结果】：
<p></P>
<p></P>


</script>
												</div>
											</div>



											<div class="form-group">
												<label class="col-sm-3 control-label"> </label>
												<div class="col-sm-5">
													<!-- 
<div  class="btn btn-primary"   onclick="createbug()">保存</div>  <div     onclick="createbug()" class="btn btn-primary">返回</div>    -->


													<input name="hi" type="button" onclick="createbu()"
														value="提交" /> <input name="hi" type="button"
														onclick="javascript: self.location='defectList.do';"
														value="返回" />





												</div>
											</div>
										</form>
									</div>

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
	<script src="../../laydate/laydate.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script src="js/defectCreate.js"></script>
	<script type="text/javascript">

function  createbug(){
	alert("ass")
	$("#asd").submit();
}

</script>


	<script type="text/javascript">

function  createbu(){
	var data=$('#asd').serialize();
	//alert(data);
	var  title =document.getElementById("bugtitle") ;
//	alert(title);
	if(title.value.trim() ==""){
		alert("plase enter  title");
		title.focus();
	}else{
		$.ajax({
		    type: "GET",
		    url: "c.do",
		    data: encodeURI(data),
		    success: function (msg) { alert(msg); }
		});
	}
}
</script>






	<script>
laydate({
    elem: '#hello', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
    event: 'focus' //响应事件。如果没有传入event，则按照默认的click
});
</script>


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
</script>














</body>

</html>
