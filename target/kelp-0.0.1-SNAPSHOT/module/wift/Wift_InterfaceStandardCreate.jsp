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
<script type="text/javascript" src="../../test/t/select2.min.js"></script> 
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" href="../../test/t/select2.css" type="text/css">
<link rel="stylesheet" href="../../test/t/select2.min.css" type="text/css">
</head>
<body  class="gray-bg" >
	<div class="wrapper wrapper-content animated fadeInRight">

		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>发布接口文档  (存在问题，所有参数都要填写 需要解决)</h5>
			</div>
			<div class="ibox-content">
				<div class="form-horizontal col-sm-12">
						<div class="form-group">
							<div class="col-sm-2">
								<select class="form-control" id="project" onchange='getmodule()'>
								   <option value="0">所属项目</option>
									<option value="0">系统分类</option>
									<option value="1">分享分类</option>
								</select>
							</div>

						
							<div class="col-sm-2">
								<select class="form-control" id="module" >
									<option value="0">请先选择项目</option>
								</select>
							</div>

							<div class="col-sm-2">
								<select class="form-control" id="requesttype">
									<option value="GET">请求方式</option>
									<option value="GET">GET</option>
									<option value="POST">POST</option>
									<option value="JSONPOST">JSONPOST</option>
									<option value="DEl">DEl</option>
								</select>
							</div>

						</div>

						<div class="form-group">
							<div class="col-sm-5">
								<input type="text" class="form-control" id="title" placeholder="接口名称">
							</div>
							
						</div>

						<div class="form-group">
						
							<div class="col-sm-2">
							
							
							
							
								<input type="text" class="form-control" id="environmentid" placeholder="所属服务器id">
								<input type="text" class="form-control" id="environmentname" placeholder="所属服务器">
							</div>
						   <div class="col-sm-5">
								<input type="text" class="form-control" id="directories" placeholder="资源地址">
							</div>
							<div class="col-sm-6" id="environment">
								
							</div>
						</div>

	</div>


				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">

								<table id="RequestParameter" class="table table-bordered">
									<thead>
										<tr>
											<th width="150px">请求参数</th>
											<th width="300px">参数名称</th>
											<th width="130px">是否必填</th>
											<th width="130px">类型</th>
											<th>默认值</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>
										<tr id="c1">
											<td><a href="javascript:;"
												onclick="RequestParameterBeforeInsertRow(this)"><i
													class="fa fa-backward"></i></a> <a href="javascript:;"
												onclick="RequestParameterAfterInsertRow(this)"><i
													class="fa fa-forward"></i></a> <a href="javascript:;"
												onclick="RequestParameterDeleteRow(this)"><i
													class="fa fa-remove"></i></a></td>
											<td><input type="text" name="RequestParameterName" id="RequestParameterName"
												placeholder="数据项" style="width: 250px" class="input-text"></td>
												<td>
									
									<select class="select" id="RequestParameterRequired" name="RequestParameterRequired"
												style="width: 100px">
													<option value="no" selected='selected'>无</option>
													<option value="1">是</option>
													<option value="3">否</option>

											</select>
										
										
										</td>
									<td><select class="select" id="RequestParameterType" name="RequestParameterType"
										style="width: 100px">
											<option value="no" selected='selected'>无</option>
											<option value="1">数字</option>
											<option value="3">字符</option>
											<option value="5">数组</option>
									</select></td>
									<td><input type="text" name="RequestParameterDefaultValue" id="RequestParameterDefaultValue"
										placeholder="默认值" style="width: 250px" class="input-text"></td>
									<td><input type="text" name="RequestParameterDescription" id="RequestParameterDescription"
										placeholder="描述" style="width: 250px" class="input-text"></td>
										</tr>
									</tbody>
								</table>
						
								<table class="table table-bordered" id="ResponseParameter">
									<thead>
										<tr>
											<th width="150px">响应参数</th>
											<th width="300px">参数名称</th>
											<th width="130px">是否必填</th>
											<th width="130px">类型</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>
										<tr id="c2">
											<td><a href="javascript:;"
												onclick="ResponseParameterBeforeInsertRow(this)"><i
													class="fa fa-backward"></i></a> <a href="javascript:;"
												onclick="ResponseParameterAfterInsertRow(this)"><i
													class="fa fa-forward"></i></a> <a href="javascript:;"
												onclick="ResponseParameterDeleteRow(this)"><i
													class="fa fa-remove"></i></a></td>
											<td><input type="text" name="ResponseParameterName" id="ResponseParameterName"
												placeholder="数据项" style="width: 250px" class="input-text"></td>
											<td>
											
											<select class="select" id="ResponseParameterRequired" name="ResponseParameterRequired"
												style="width: 100px">
													<option value="no" selected='selected'>无</option>
													<option value="1">是</option>
													<option value="3">否</option>
											</select>
												</td>
											<td><select class="select" id="ResponseParameterType" name="ResponseParameterType"
												style="width: 100px">
													<option value="no" selected='selected'>无</option>
													<option value="1">数字</option>
													<option value="3">字符</option>
													<option value="5">数组</option>
											</select></td>
											
											<td><input type="text" name="ResponseParameterDescription" id="ResponseParameterDescription"
												placeholder="数据项" style="width: 250px" class="input-text"></td>
										</tr>
									</tbody>
								</table>
						


						
							
								<table class="table table-bordered" id="RequestHeader">
									<thead>
										<tr>
											<th width="150px">请求参数(header)</th>
											<th width="300px">参数名</th>
											<th width="130px">是否必须</th>
											<th width="130px">默认值</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>
										<tr id="c5">
											<td><a href="javascript:;"
												onclick="RequestHeaderParameterBeforeInsertRow(this)"><i
													class="fa fa-backward"></i></a> <a href="javascript:;"
												onclick="RequestHeaderParameterAfterInsertRow(this)"><i
													class="fa fa-forward"></i></a> <a href="javascript:;"
												onclick="RequestHeaderParameterDeleteRow(this)"><i
													class="fa fa-remove"></i></a></td>
											<td><input type="text" name="RequestHeaderParameterName" id="RequestHeaderParameterName"
												placeholder="数据项" style="width: 200px" class="input-text"></td>
											<td><select class="select" id="RequestHeaderParameterRequired" name="RequestHeaderParameterRequired"
												style="width: 100px">
													<option value="no" selected='selected'>无</option>
													<option value="1">是</option>
													<option value="3">否</option>
													
											</select></td>
											<td><input type="text" name="RequestHeaderParameterDefaultValue" id="RequestHeaderParameterDefaultValue"
												placeholder="数据项" style="width: 200px" class="input-text"></td>
											<td><input type="text" name="RequestHeaderParameterDescription" id="RequestHeaderParameterDescription"
												placeholder="数据项" style="width: 150px" class="input-text"></td>
										</tr>
									</tbody>
								</table>
							

							
								<table class="table table-bordered" id="ResponseHeader">
									<thead>
										<tr>
											<th width="150px">响应参数(header)</th>
											<th width="300px">参数名</th>
											<th width="130px">是否必填</th>
											<th >描述</th>
										</tr>
									</thead>
									<tbody>
										<tr id="c6">
											<td><a href="javascript:;"
												onclick="ResponseHeaderParameterBeforeInsertRow(this)"><i
													class="fa fa-backward"></i></a> <a href="javascript:;"
												onclick="ResponseHeaderParameterAfterInsertRow(this)"><i
													class="fa fa-forward"></i></a> <a href="javascript:;"
												onclick="ResponseHeaderParameterDeleteRow(this)"><i
													class="fa fa-remove"></i></a></td>
											<td><input type="text" name="ResponseHeaderParameterName" id="ResponseHeaderParameterName"
												placeholder="数据项" style="width: 200px" class="input-text"></td>
											<td><select class="select" id="ResponseHeaderParameterRequired" name="ResponseHeaderParameterRequired"
												style="width: 100px">
													<option value="no" selected='selected'>无</option>
													<option value="1">是</option>
													<option value="3">否</option>
											</select></td>
											<td><input type="text" name="ResponseHeaderParameterDescription" id="ResponseHeaderParameterDescription"
												placeholder="数据项" style="width: 200px" class="input-text"></td>
										</tr>
									</tbody>
								</table>
							

						












							<div class="form-group">
								
								
									<script id="editor" type="text/plain"
										style="width: 100%; height: 300px;">接口描述:</script>
								
							</div>

							<div class="form-group">
								<label class="col-sm-4 control-label"> </label>
								<div class="col-sm-6">
									<div class="btn btn-primary">
										<a href="#" onclick="AddFace()">保存</a>  
									</div>
									
									<div class="btn btn-primary">
										  <a href="#" onclick="CreateWiftInterface()">new保存</a>
									</div>
									
								</div>
							</div>


						</div>


	
				

				
			</div>
		</div>
	</div>



		    </div>
		</div>
	</div>
</div>		


				<!-- Source Start-->
				<div  id="datasource">
				<div class="col-sm-12">
					<!--RequestParametersource-->
					<div class="form-group">
						<div class="col-sm-12">
							<table>
								<tr id="RequestParametersource" style="visibility: hidden">
									<td><a href="javascript:;"
										onclick="RequestParameterBeforeInsertRow(this)"><i
											class="fa fa-backward"></i></a> <a href="javascript:;"
										onclick="RequestParameterAfterInsertRow(this)"><i
											class="fa fa-forward"></i></a> <a href="javascript:;"
										onclick="RequestParameterDeleteRow(this)"><i
											class="fa fa-remove"></i></a></td>
									<td><input type="text" name="RequestParameterName" id="RequestParameterName"
										placeholder="数据项" style="width: 250px" class="input-text"></td>
									<td>
									
									<select class="select" id="RequestParameterRequired" name="RequestParameterRequired"
												style="width: 100px">
													<option value="no" selected='selected'>无</option>
													<option value="1">是</option>
													<option value="3">否</option>

											</select>
										
										
										</td>
									<td><select class="select" id="RequestParameterType" name="RequestParameterType"
										style="width: 100px">
											<option value="no" selected='selected'>无</option>
											<option value="1">数字</option>
											<option value="3">字符</option>
											<option value="5">数组</option>
									</select></td>
									<td><input type="text" name="RequestParameterDefaultValue" id="RequestParameterDefaultValue"
										placeholder="默认值" style="width: 250px" class="input-text"></td>
									<td><input type="text" name="RequestParameterDescription" id="RequestParameterDescription"
										placeholder="描述" style="width: 250px" class="input-text"></td>
								</tr>
							</table>
						</div>
					</div>

					<!--ResponseParametersource-->
					<div class="form-group">
						<div class="col-sm-12">
							<table>
								<tr id="ResponseParametersource" style="visibility: hidden">
									<td><a href="javascript:;"
										onclick="ResponseParameterBeforeInsertRow(this)"><i
											class="fa fa-backward"></i></a> <a href="javascript:;"
										onclick="ResponseParameterAfterInsertRow(this)"><i
											class="fa fa-forward"></i></a> <a href="javascript:;"
										onclick="ResponseParameterDeleteRow(this)"><i
											class="fa fa-remove"></i></a></td>
									<td><input type="text" name="ResponseParameterName" id="ResponseParameterName"
										placeholder="数据项" style="width: 250px" class="input-text"></td>
									<td>
									
									<select class="select" id="ResponseParameterRequired" name="ResponseParameterRequired"
												style="width: 100px">
													<option value="no" selected='selected'>无</option>
													<option value="1">是</option>
													<option value="3">否</option>
													
											</select>
										
										
										</td>
									<td><select class="select" id="ResponseParameterType" name="ResponseParameterType"
										style="width: 100px">
											<option value="no" selected='selected'>无</option>
											<option value="1">数字</option>
											<option value="3">字符</option>
											<option value="5">数组</option>
									</select></td>
								
									<td><input type="text" name="ResponseParameterDescription" id="ResponseParameterDescription"
										placeholder="数据项" style="width: 250px" class="input-text"></td>
								</tr>
							</table>
						</div>
					</div>

					<!--RequestHeaderSource and ResponseHeaderSource-->
					<div class="form-group">
						<div class="col-sm-6">
							<table>
								<tr id="RequestHeaderSource" style="visibility: hidden">
									<td><a href="javascript:;"
										onclick="RequestHeaderParameterBeforeInsertRow(this)"><i
											class="fa fa-backward"></i></a> <a href="javascript:;"
										onclick="RequestHeaderParameterAfterInsertRow(this)"><i
											class="fa fa-forward"></i></a> <a href="javascript:;"
										onclick="RequestHeaderParameterDeleteRow(this)"><i
											class="fa fa-remove"></i></a></td>
									<td><input type="text" name="RequestHeaderParameterName" id="RequestHeaderParameterName"
										placeholder="数据项" style="width: 200px" class="input-text"></td>
									<td><select class="select" id="RequestHeaderParameterRequired" name="RequestHeaderParameterRequired"
										style="width: 100px">
											<option value="no" selected='selected'>无</option>
											<option value="1">是</option>
											<option value="3">否</option>
									</select></td>
									<td><input type="text" name="RequestHeaderParameterDefaultValue" id="RequestHeaderParameterDefaultValue"
										placeholder="数据项" style="width: 200px" class="input-text"></td>
									<td><input type="text" name="RequestHeaderParameterDescription" id="RequestHeaderParameterDescription"
										placeholder="数据项" style="width: 150px" class="input-text"></td>
								</tr>
							</table>
						</div>
						<div class="col-sm-6">
							<table>
								<tr id="ResponseHeaderSource" style="visibility: hidden">
									<td><a href="javascript:;"
										onclick="ResponseHeaderParameterBeforeInsertRow(this)"><i
											class="fa fa-backward"></i></a> <a href="javascript:;"
										onclick="ResponseHeaderParameterAfterInsertRow(this)"><i
											class="fa fa-forward"></i></a> <a href="javascript:;"
										onclick="ResponseHeaderParameterDeleteRow(this)"><i
											class="fa fa-remove"></i></a></td>
									<td><input type="text" name="ResponseHeaderParameterName" id="ResponseHeaderParameterName"
										placeholder="数据项" style="width: 200px" class="input-text"></td>
									<td><select class="select" id="ResponseHeaderParameterRequired" name="ResponseHeaderParameterRequired"
										style="width: 100px">
											<option value="no" selected='selected'>无</option>
											<option value="1">是</option>
											<option value="3">否</option>
									</select></td>
									<td><input type="text" name="ResponseHeaderParameterDescription" id="ResponseHeaderParameterDescription"
										placeholder="数据项" style="width: 200px" class="input-text"></td>
								</tr>
							</table>
						</div>

					</div>

				</div>
				</div>
				<!-- Source End -->
				




	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/module/wift/js/facecreate.js"></script>
	<script src="/module/wift/js/Wift_InterfaceStandardCreate.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script type="text/javascript">
		//实例化编辑器
		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
		//   window.UEDITOR_HOME_URL = "/defectsystem/ueditor/";
		// alert(window.UEDITOR_HOME_URL);
		var ue = UE.getEditor('editor');

		function isFocus(e) {
			alert(UE.getEditor('editor').isFocus());
			UE.dom.domUtils.preventDefault(e)
		}
		function setblur(e) {
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
					UE.dom.domUtils.removeAttributes(btn, [ "disabled" ]);
				} else {
					btn.setAttribute("disabled", "true");
				}
			}
		}
		function enableBtn() {
			var div = document.getElementById('btns');
			var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
			for (var i = 0, btn; btn = btns[i++];) {
				UE.dom.domUtils.removeAttributes(btn, [ "disabled" ]);
			}
		}

		function getLocalData() {
			alert(UE.getEditor('editor').execCommand("getlocaldata"));
		}

		function clearLocalData() {
			UE.getEditor('editor').execCommand("clearlocaldata");
			alert("已清空草稿箱")
		}
	</script>

<script type="text/javascript">
		function AddResponseHeader(s) {
			 document.documentElement.scrollTop=30 ;
			 alert("88");
		}
</script>
</body>
</html>