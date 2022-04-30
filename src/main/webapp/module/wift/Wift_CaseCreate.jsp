<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

<!--
ul input {
	border: 1px solid #ccc;
	margin: 2px;
}

-->
ul input {
	color: rgb(255, 0, 0);
	border-left: medium none;
	border-right: medium none;
	border-top: medium none;
	border-bottom: 1px solid rgb(192, 192, 192);
}
</style>
<title>H+ 测试平台 - 空白页</title>
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
								<h5>创建用例</h5>

							</div>
							<div class="ibox-content">
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-11">
										<form role="form" method="get" class="form-horizontal">
											<div class="form-group">
												<label class="col-sm-1 control-label">所属项目:</label>
												<div class="col-sm-4">
													<select class="form-control" id="project"
														onchange='getmodule()'>
														<option value="0">系统分类</option>
														<option value="1">分享分类</option>
													</select>
												</div>
												<label class="col-sm-1 control-label">所属模块:</label>
												<div class="col-sm-4">
													<select class="form-control" id="module"
														onchange='getInterface()'>
														<option value="0">系统分类</option>
														<option value="1">分享分类</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-1 control-label">所属接口:</label>
												<div class="col-sm-4">
													<select class="form-control" id="InterfaceSelect"  onchange='getInterfaceInfo()'>
														<option value="0">全部</option>
													</select>
												</div>
											</div>








											<div class="form-group">
												<label class="col-sm-1 control-label">用例名称:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="casename">
												</div>
												<label class="col-sm-1 control-label">用例描述:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="casedesc">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-1 control-label">接口地址:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="interfaceaddress">
												</div>

												<label class="col-sm-1 control-label">请求方式:</label>
												<div class="col-sm-4">
													<select class="form-control" id="type" name="type">
														<option value="GET">GET</option>
														<option value="POST">POST</option>
													</select>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-1 control-label">header:</label>
												<div class="col-sm-6">
													<textarea required="" aria-required="true"
														class="form-control" id="header">，Webdriver群:88888888</textarea>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-1 control-label">URL参1数:</label>
												<div class="col-sm-8" id="url">
													<ul id="demo2"></ul>
													<a href="#">+ 添加（最多5项）</a>
												</div>

											</div>




											<div class="form-group">
												<label class="col-sm-1 control-label">期望结果:</label>
												<div class="col-sm-6">
													<textarea required="" aria-required="true" class="form-control" id="hwwader"></textarea>
												</div>
											</div>







											<div class="form-group">
												<label class="col-sm-4 control-label"> </label>
												<div class="col-sm-6">
													<div class="btn btn-primary">
														<a href="#" onclick="SaveIfCase()">保存</a>
													</div>
													<div class="btn btn-primary">
														<a href="#" onclick='GetValue()'>调试</a>
													</div>
													<div class="btn btn-primary">
														<a href="#" onclick="AddFace()">返回</a>
													</div>
												</div>
											</div>

											<div class="form-group">
												<div class="col-sm-6">
													<label class="col-sm-6 control-label">Response
														Header </label>
												</div>

												<div class="col-sm-6">
													<label class="col-sm-6 control-label">Response Body
													</label>
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-6">
													<textarea aria-required="true" required=""
														class="form-control" name="comment" id="ccomment"></textarea>
												</div>

												<div class="col-sm-6">
													<textarea aria-required="true" required=""
														class="form-control" name="comment" id="ccomment"></textarea>
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
	<script src="/module/wift/js/facecreate.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script type="text/javascript">

    
    $(function(){
    	$("#demo1").easyinsert();//最简单的应用
    	$("#demo2").easyinsert({
    		name: ["demo2", "demo22"],//可以同时添加两个（或更多），name值相同也必须分开设置，name数组的长度就是每组input的个数。type、value、maxlength、className四种属性，若同组组员的设置一样，可以只设置一次。
    		//value: ["默认值2-1", "默认值2-2"],//可以给同组input分别设置默认值
    		//maxlength: 12,//每组input的maxlength都一样，无需使用数组
    	//	className: ["form-control", "form-control"],//不用我解释了吧
    	     size: 60,
    		toplimit:0,//可以添加组数上限（默认是0，表示无上限），它是总管，so，name相当于小组组长
    		initValue: [//初始化的时候，各input的value就是归它管，必须是数组
    			["", ""]
    		]
    	});
    	$("#demo3").easyinsert({
    		name: "demo3",
    		toplimit: 2,
    		initValue: [
    			["初始值3-1"],//必须是数组，就算每组只有一个input
    			["初始值3-2"],
    			["初始值3-3"]//小三儿，别想蒙混过关，总管只允许添加两组
    		]
    	});
    	$("#demo4").easyinsert({
    		name: ["demo4", "demo4", "demo4", "demo4", "demo4", "demo4"],
    		type: ["text", "radio", "password", "checkbox", "file", "button"],
    		value: ["我是text", "我是radio", "我是password", "我是checkbox", "", "我是button"]
    	});
    	$("#demo5").easyinsert({//type新增custom和select
    		name: ["demo5", "demo5", "demo5", "demo5"],
    		type: ["custom", "text", "custom", "select"],
    		value: ["<strong style=\"color:#ff7b0e;\">科目：</strong>", "", "<strong style=\"color:#ff7b0e;\">类型：</strong>", { '理论': '1', '技能': '2', '上机': '3' }],
    		initValue: [
    			["<strong style=\"color:#ff7b0e;\">科目：</strong>", "初始值5-1", "<strong style=\"color:#ff7b0e;\">类型：</strong>", { '理论a': '1', '技能a': '2', '上机a': '3' }],
    			["<strong style=\"color:#ff7b0e;\">科目：</strong>", "初始值5-1", "<strong style=\"color:#ff7b0e;\">类型：</strong>", { '理论b': '1', '技能b': '2', '上机b': '3' }]
    		]
    	});
    });
    /**
     * EasyInsert 4.0
     *
     * @Depend    jQuery 1.4+
    **///欢迎来到站长特效网，我们 的网址是www.zzjs.net，很好记，zz站长，js就是js特效，本站收集大量高质量js代码，还有许多广告代码下载。
    ;(function($){
    	$.fn.extend({
    		"easyinsert": function(o){
    			o = $.extend({
    				//触发器
    				clicker: null,//根据class（或id）选择，默认.next()获取
    				//父标签
    				wrap: "li",
    				name: "i-text",
    			//	type: "text",
    				value: "",
    				//maxlength: 20,
    				//className: "i-text",
    				//新增上限值
    				toplimit: 0,//0表示不限制
    				//初始化值，二维数组
    				initValue: null//用于修改某资料时显示已有的数据
    			}, o || {});
    			var oo = {
    				remove: "<a href=\"#nogo\" class=\"remove\">移除</a>",
    				error1: "参数配置错误，数组的长度不一致，请检查。",
    				error2: "参数配置错误，每组初始化值都必须是数组，请检查。"
    			}
    			//容器
    			var $container = $(this);
    			var allowed = true;
    			//把属性拼成数组（这步不知道是否可以优化？）
    			var arrCfg = new Array(o.name, o.type, o.value, o.maxlength, o.className);
    			//arr ==> [name, type, value, maxlength, className]
    			var arr = new Array();
    			$.each(arrCfg, function(i, n){
    				if ( $.isArray(n) ) {
    					arr[i] = n;
    				} else {
    					arr[i] = new Array();
    					if ( i === 0 ) {
    						arr[0].push(n);
    					}else{
    						//补全各属性数组（根据name数组长度）
    						$.each(arr[0], function() {
    							arr[i].push(n);
    						});
    					}
    				}
    				//判断各属性数组的长度是否一致
    				if ( arr[i].length !== arr[0].length ) {
    					allowed = false;
    					$container.text(oo.error1);
    				}
    			});
    			if ( allowed ) {
    				//获取触发器
    				var $Clicker = !o.clicker ? $container.next() : $(o.clicker);
    				$Clicker.bind("click", function() {
    					//未添加前的组数
    					var len = $container.children(o.wrap).length;
    					//定义一个变量，判断是否已经达到上限
    					var isMax = o.toplimit === 0 ? false : (len < o.toplimit ? false : true);
    					if ( !isMax ) {//没有达到上限才允许添加
    						var $Item = $("<"+ o.wrap +">").appendTo( $container );
    						$.each(arr[0], function(i) {
    							switch ( arr[1][i] ) {
    								case "select"://下拉框
    									var option = "";
    									$.each(arr[2][i], function(i, n) {
    										option += "<option value='"+ n +"'>"+ i +"</option>";
    									});
    									$("<select>", {
    										name: arr[0][i],
    										className: arr[4][i]
    									}).append( option ).appendTo( $Item );
    									break;
    								case "custom"://自定义内容，支持html
    									$Item.append( arr[2][i] );
    									break;
    								default://默认是input
    									$("<input   >  ", {//jQuery1.4新增方法
    										name: arr[0][i],
    										type: arr[1][i],
    										value: arr[2][i],
    										maxlength: arr[3][i],
    										className: arr[4][i]
    									}).appendTo( $Item );
    							}
    						});
    						$Item = $container.children(o.wrap);
    						//新组数
    						len = $Item.length;
    						if ( len > 1 ) {
    							$Item.last().append(oo.remove);
    							if ( len === 2 ) {//超过一组时，为第一组添加“移除”按钮
    								$Item.first().append(oo.remove);
    							}
    						}
    						$Item.find(".remove").click(function(){
    							//移除本组
    							$(this).parent().remove();
    							//统计剩下的组数
    							len = $container.children(o.wrap).length;
    							if ( len === 1 ) {//只剩一个的时候，把“移除”按钮干掉
    								$container.find(".remove").remove();
    							}
    							//取消“移除”按钮的默认动作
    							return false;
    						});
    					}
    					//取消触发器的默认动作
    					return false;
    				});
    				//初始化
    				if ( $.isArray(o.initValue) ) {//判断初始值是否是数组（必需的）
    					$.each(o.initValue, function(i, n) {
    						if ( !$.isArray(n) ) {
    							$container.empty().text(oo.error2);
    							return false;
    						}else{
    							if ( n.length !== arr[0].length ) {
    								$container.empty().text(oo.error1);
    								return false;
    							}
    						}
    						var arrValue = new Array();
    						//初始值替换默认值
    						$.each(n, function(j, m) {
    							arrValue[j] = arr[2][j]
    							arr[2][j] = m;
    						});
    						$Clicker.click();
    						//默认值替换初始值
    						$.each(arrValue, function(j, m) {
    							arr[2][j] = m;
    						});
    						//上面这种[移形换位法]不知道效率怎么样，我想不出别的更好的方法
    					});
    				}else{
    					$Clicker.click();
    				}
    			}
    		}
    	});//欢迎来到站长特效网，我们的网址是www.zzjs.net，很好 记，zz站长，js就是js特效，本站收集大量高质量js代码，还有许多广告代码下载。
    })(jQuery);
    
    function  AddLine(){
    	alert("ddd");
    var   a =document.getElementById("url").innerHTML ;
    //document.getElementById("url").innerHTML = a  +"<div>  <input name='password' size='15' />  <input name='password' size='15'  />   <a href ='#'  onclick='AddLine()' >add</a>  <a href ='#'  onclick='DelLine(this)' >del</a> </div>"; 
    document.getElementById("url").innerHTML = a  +"  <input name='password' size='50' />  <input name='password' size='35'  />   <a href ='#'  onclick='AddLine()' >add</a>  <a href ='#'  onclick='DelLine(this)' >del</a> "; 
    }
    
    function  DelLine(e){
    	alert(e);
    	    if (e != null)
    	        e.parentNode.removeChild(e);
    }
    
   
    
    
    function GetValue(){
    	var els =document.getElementsByName("demo2");
    	var elv =document.getElementsByName("demo22");
    	var aa="";
    	var bb="";
    	for (var i = 0, j = els.length; i < j; i++){
    	alert(els[i].value);
    	aa=aa+","+els[i].value ;
    	}
    	//for (var i = 0, j = elv.length; i < j; i++){
        //	alert(elv[i].value);
        //	bb=bb+","+elv[i].value ;
   //     	}
    	document.getElementById("dd").value=aa ;
    	document.getElementById("v").value=bb ;
    }
    
    
    
    
    function SaveIfCase(){
    	
    	var els =document.getElementsByName("demo2");
       	var elv =document.getElementsByName("demo22");
    	var _list = [];  
 	    var _val =[];
    	for (var i = 0; i < els.length; i++) {  
    	    _list[i] = els[i].value;  
    	    _val[i] = elv[i].value;  
    	}  
    	
    	
    	var  casename =	document.getElementById("casename").value ;
    	var  casedesc =	document.getElementById("casedesc").value ;
    	var directories=	document.getElementById("interfaceaddress").value ;
    	
    	var  type1 =	document.getElementById("type") ;
 		var index=type1.selectedIndex ;   
 		var type = type1.options[index].value;
    	var  header =	document.getElementById("header").value ;  
    	var  InterfaceSelect  =	document.getElementById("InterfaceSelect") ;
    	var index=InterfaceSelect.selectedIndex ; 
    	var Interfaceid = InterfaceSelect.options[index].value;
 		alert(els);
        alert("1223"); 
    	alert(Interfaceid );
    	alert(casename);
    	$.ajax({
    		type : "POST",
    		url : "/wift/SaveIfCase.do",
    		
		data : {
					"els" : _list,
					"elv" : _val,
					"casename" : casename,
					"casedesc" : casedesc,
					"type" : type,
					"header" : header,
					"Interfaceid" : Interfaceid,
					"directories" : directories
				},
				async : false,
				dataType : "json",
				traditional : true,
				success : function(data) {
					alert(data);
				}
			});
		}
	</script>
</body>

</html>
