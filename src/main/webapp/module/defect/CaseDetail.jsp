<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<%@ include file="/module/common/aheader.jsp"%>

	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>用例详情</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> </a>

				</div>
			</div>
			<div class="ibox-content">


				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Pagination -->
						<div class="example-wrap">
							<div class="example">





								<table>
									<tr>

										<td>
								<!-- 	<input type="text" class="form-control"
											placeholder="请输入用例名称" aria-required="true" id="casename"
											value="${casename}" required> -->	
											用例名称：${casename}
											</td>
											
											<auto:CaseTags   caseid="${caseid}"></auto:CaseTags>
											
										<td width="50px"></td>
										<td>创建者：${realname}</td>


									</tr>
								</table>

								<br>

								<table class="table table-bordered" id="myTable">
									<thead>
										<tr>
											<th>序号</th>
											<th>步骤</th>
											<th>期望</th>

										</tr>
									</thead>
									<tbody>
										<tr id="c1"></tr>



										<c:forEach items="${bodyList}" var="a" varStatus="status">

											<tr>
												<td width="50px">	${ status.index+1 }	<!--  <textarea aria-required="true" required=""
														class="form-control" name="comment" id="step">      ${a.step}  </textarea>-->   </td>
												<td>
												<!--  
												<textarea aria-required="true" required=""
														class="form-control" name="comment" id="result"> ${a.result}  </textarea> -->
														      ${a.step}  </td>
												<td> ${a.result} </td>
												</td>
											</tr>
										</c:forEach>




									</tbody>
								</table>

								<!--  <button type="input" class="btn btn-primary" onclick="addCase()">保存</button>-->









								<table id="dd" name="">
									<tr class="text-c" id="b1" style="visibility: hidden">
										<td><textarea aria-required="true" required=""
												class="form-control" name="comment" id="step"></textarea></td>
										<td><textarea aria-required="true" required=""
												class="form-control" name="comment" id="result"></textarea></td>
										<td><a style="text-decoration: none" class="ml-5"
											onClick="AddS(this)" href="javascript:;" title="编辑"> ++</a> <a
											style="text-decoration: none" class="ml-5"
											onClick="AddAfter(this)" href="javascript:;" title="编辑">---</a>
											<a style="text-decoration: none" class="ml-5"
											onClick="DelTr(this)" href="javascript:;" title="删除">****</a></td>
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
	
for (var i = 0; i < _stepall.length; i++) {  
			alert(_stepall[i]+"=="+ _resultall[i]);
	}
	
	
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


</script>













</body>

</html>