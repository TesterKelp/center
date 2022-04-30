<%@ page language="java" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>H+ 测试平台 - Bootstrap Table</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link
	href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">


	<div id="defect">
		<div class="defect_top">
			<auto:DefectMenu></auto:DefectMenu>
			<auto:LoginInfo></auto:LoginInfo>
		</div>
	</div>
	<br>
	<br>





	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>创建用例</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> </a>

				</div>
			</div>
			<div class="ibox-content">


				<div class="row row-lg">
					<div class="col-sm-12" style="min-height: 810px;">
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">



	<form role="form" method="get" class="form-horizontal" id="case">

								<table>
									<tr id="asd">
										<td><input type="text" class="form-control"
											placeholder="请输入用例名称" aria-required="true" id="casename"  name="casename"
											required></td>
									


									</tr>
								</table>

								<br>

								<table class="table table-bordered" id="myTable">
									<thead>
										<tr>
											<th>步骤</th>
											<th>期望</th>
											<th>操作</th>

										</tr>
									</thead>
									<tbody>
										<tr id="c1">

											<td><textarea aria-required="true" required=""
													class="form-control" name="step" id="step"></textarea></td>
											<td><textarea aria-required="true" required=""
													class="form-control" name="result" id="result"></textarea></td>
											<td>											<span class="glyphicon glyphicon-chevron-up" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"        onClick="AddS(this)" ></span>
											 
											  <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"         onClick="AddAfter(this)" ></span>
											 
											  <span class="glyphicon glyphicon-remove" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"          onClick="DelTr(this)" ></span>
											</td>
										</tr>
										<tr>
											<td><textarea aria-required="true" required=""
													class="form-control" name="step" id="step"></textarea></td>
											<td><textarea aria-required="true" required=""
													class="form-control" name="result" id="result"></textarea></td>
											<td>											
											<span class="glyphicon glyphicon-chevron-up" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"        onClick="AddS(this)" ></span>
											  <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"         onClick="AddAfter(this)" ></span>
											  <span class="glyphicon glyphicon-remove" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"          onClick="DelTr(this)" ></span>
											</td>
										</tr>
										<tr>

											<td style="width:42%"><textarea aria-required="true" required=""
													class="form-control" name="step" id="step"></textarea></td>
											<td style="width:42%"><textarea aria-required="true" required=""
													class="form-control" name="result" id="result"></textarea></td>
											<td style="width:180px" >											  
											<span class="glyphicon glyphicon-chevron-up" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"        onClick="AddS(this)" ></span>
											 
											  <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"         onClick="AddAfter(this)" ></span>
											 
											  <span class="glyphicon glyphicon-remove" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"          onClick="DelTr(this)" ></span>
											 
											</td>
										</tr>
									</tbody>
								</table>
</form>
							<!--  <button type="input" class="btn btn-primary" onclick="addCase()">保存</button> -->	 
<button type="input" class="btn btn-primary" onclick="CreateCase()">保存</button>
<button type="input" class="btn btn-primary" onclick="javascript: self.location='Case.do';">返回</button>







								<table id="dd" name="">
									<tr class="text-c" id="b1" style="visibility: hidden">
										<td><textarea aria-required="true" required=""
												class="form-control" name="comment" id="step"></textarea></td>
										<td><textarea aria-required="true" required=""
												class="form-control" name="comment" id="result"></textarea></td>
										<td>
											 
											
											<span class="glyphicon glyphicon-chevron-up" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"        onClick="AddS(this)" ></span>
											 
											  <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"         onClick="AddAfter(this)" ></span>
											 
											  <span class="glyphicon glyphicon-remove" aria-hidden="true"       style="font-size:30px;color:orange;width:50px"          onClick="DelTr(this)" ></span>

											</td>
									</tr>
								</table>












							</div>
						</div>
						<!-- End Example Pagination -->
					</div>


				</div>
			</div>
		</div>
		<!-- End Panel Other -->


	</div>


	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../../layer/layer.js"></script>
		<script src="../../laydate/laydate.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<!-- Bootstrap table -->
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<!-- Peity      -->
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>


	<script type="text/javascript">

function addCase(){
	
	$('#dd').remove(); 
	
	var _stepall = []; 
	var k=0 ;
	$("textarea[id='step']").each(function(){
	    _stepall[k] = $(this).val() ;
		 k++ ;
	 });
	
	
	var _resultall = []; 
	var f=0 ;
	$("textarea[id='result']").each(function(){
	    _resultall[f] = $(this).val() ;
		 f++ ;
	 });
	
//for (var i = 0; i < _stepall.length; i++) {  
	//		alert(_stepall[i]+"=="+ _resultall[i]);
//	}
	
	
var casename =document.getElementById("casename").value ;
var casedesc =document.getElementById("casedesc").value ;
var se = document.getElementById("priority").selectedIndex;//获得是第几个被选中了
var priority = document.getElementById("priority").options[se].value;
	
$.ajax({
	type : "POST",
	url : "AddDefectCase.do",
data : {
			"casename" : casename,
			"casedesc" : casedesc,
			"priority" : priority,
			"stepall" : _stepall,
			"resultall" : _resultall,
		},
		async : false,
		dataType : "text",
		 traditional: true,
		success : function(data) {
			alert(data);
			//document.getElementById("module").innerHTML=data ;
			//window.location.href = window.location.href;
		}
	});
	
	
	
	
}

















function AddS(s){
	
	//alert("ddd");
	var i=1 ; 
	var o = document.getElementById("b1");
	var c = document.getElementById("c1");
	var newTR = o.cloneNode(true);
	var i=s.parentNode.parentNode.rowIndex;
	//alert("IIIIIIIIIIIIII:::::"+i);
	c.parentNode.insertBefore(newTR,s.parentNode.parentNode);
	//c.parentNode.appendChild(newTR);
	newTR.style.visibility="visible";
	//newTR.id="b"+(++i)
}













	function AddAfter(s){
	//	alert("ddd");
		var i=1 ; 
		var o = document.getElementById("b1");
		var c = document.getElementById("c1");
		var newTR = o.cloneNode(true);
		var i=s.parentNode.parentNode.rowIndex;
		  if (c.parentNode.lastChild == s.parentNode.parentNode) {
	          c.parentNode.appendChild(newTR);
	        } else {
	          c.parentNode.insertBefore(newTR,s.parentNode.parentNode.nextSibling);
	        }
		newTR.style.visibility="visible";
		//newTR.id="b"+(++i)
	}
	
	
	
	
	
	
	
	
	function DelTr(r)  {
		var i=r.parentNode.parentNode.rowIndex;
		document.getElementById('myTable').deleteRow(i);	
	}

	
	
 	var url = "CaseCreateCustom.do";
	$.get(
	url,
	function(result){ 
		var con= document.getElementById("asd").innerHTML;
		var co= document.getElementById("asd");
		co.innerHTML=con+ result ;	
	},"text")
	
	

</script>





<script>

 	function  CreateCase(){
	var data=$('#case').serialize();
	//alert(data);

		$.ajax({
		    type: "GET",
		    url: "CreateCase.do",
		    data: encodeURI(data),
		    success: function (msg) { alert(msg); }
		});
	
}

</script>








</body>

</html>