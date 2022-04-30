<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link
	href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>其他</h5>
			</div>
			<div class="ibox-content">
				<div class="row row-lg">

					<div class="col-sm-12">
						<!-- Example Events -->
						<div class="example-wrap">
							<div class="example">
								<div class="btn-group hidden-xs" id="exampleTableEventsToolbar"
									role="group">
									<shiro:hasPermission name="user:cbug">
									</shiro:hasPermission>

									<a href="t.jsp">
										<button type="button" class="btn btn-outline btn-default">
											<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
										</button>
									</a> <a href="">我要脱后腿啦</a>

									<!-- 
                                    <button type="button" class="btn btn-outline btn-default">
                                        <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
                                    </button>
                                   
                                    <button type="button" class="btn btn-outline btn-default"  onclick="delBug()">
                                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                    </button>     -->
									<input class="form-control" type="hidden"
										value="${operationcode}" id="operationcode">
								</div>
								<table id="exampleTableEvents" data-mobile-responsive="true">
									<!--   <thead>
                                        <tr>
                                            <th data-field="state" data-checkbox="true"></th>
                                            <th data-field="id">ID</th>
                                            <th data-field="name">名称</th>
                                            <th data-field="price">价格</th>
                                            <th data-field="price">标题</th>
                                        </tr>
                                    </thead> -->
								</table>
							</div>
						</div>
						<!-- End Example Events -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Panel Other -->
	</div>










	<input type="text" class="form-control" name="bugid" id="bugid">


	<div id="ShowRepair" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">
				<div class="form-group">
					<label class="col-sm-3 control-label">分配给：</label>
					<div class="col-sm-6">
						<select class="select" id="Repair">
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"> 备注说明</label>
					<div class="col-sm-8">
						<textarea id="notice" class="form-control" name="notice"
							required="" aria-required="true"></textarea>
					</div>
				</div>
			</form>
			<div class="form-group">
				<div class="col-sm-4 col-sm-offset-2">
					<button type="input" class="btn btn-primary"
						onclick="CasePstatus()">解决</button>
				</div>
			</div>
		</div>
	</div>


	<div id="ShowAssigned" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">
				<div class="form-group">
					<label class="col-sm-3 control-label">分配给：</label>
					<div class="col-sm-6">
						<select class="select" id="Assigned">
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"> 备注说明</label>
					<div class="col-sm-8">
						<textarea id="notice" class="form-control" name="notice"
							required="" aria-required="true"></textarea>
					</div>
				</div>
			</form>
			<div class="form-group">
				<div class="col-sm-4 col-sm-offset-2">
					<button type="input" class="btn btn-primary"
						onclick="CaseAssigned()">分配</button>
				</div>
			</div>
		</div>
	</div>





	<div id="ShowRefuse" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">
				<div class="form-group">
					<label class="col-sm-3 control-label">分配给：</label>
					<div class="col-sm-6">
						<select class="select" id="Refuse">
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"> 备注说明</label>
					<div class="col-sm-8">
						<textarea id="notice" class="form-control" name="notice"
							required="" aria-required="true"></textarea>
					</div>
				</div>
			</form>
			<div class="form-group">
				<div class="col-sm-4 col-sm-offset-2">
					<button type="input" class="btn btn-primary"
						onclick="RefuseOperation(5)">拒绝</button>
				</div>
			</div>
		</div>
	</div>









	<script>


function showRepair(bugid,assigned){
	alert("111");
	$.ajax({
		type : "GET",
		url : "GetAssigned.do",
		data: {bugid: bugid,assigned:assigned},
		async : false,
		dataType : "text",
		success : function(data) {
		//	alert(data);
		var con= document.getElementById("Repair").innerHTML;
		var co= document.getElementById("Repair");
		 document.getElementById("bugid").value=bugid ;
		co.innerHTML=data+ con;	
		  	layer.open({
	    		title : '亲，太爱你了，你又消灭一个bug！',
	    		skin : 'layui-layer-molv',
	    		type : 1,
	    		area : [ '600px', '360px' ],
	    		shadeClose : true, // 点击遮罩关闭
	    		content : $('#ShowRepair'),
	    	});
		}
	});	
} 
function  CasePstatus(){
	var se = document.getElementById("Repair").selectedIndex;//获得是第几个被选中了
	var repair = document.getElementById("Repair").options[se].value;
	var bugid  = document.getElementById("bugid").value ;
	
	
	$.ajax({
		type : "GET",
		url : "Repair.do",
		data: {bugid: bugid,repair:repair},
		async : false,
		dataType : "text",
		success : function(data) {
			//alert(data);
			if(data=="ok"){
				location.reload() 
			}
		}
	})
}











function CloseDefect(bugid){
	
	$.ajax({
		type : "GET",
		url : "CloseDefect.do",
		data: {bugid: bugid},
		async : false,
		dataType : "text",
		success : function(data) {
			//alert(data);
			if(data=="ok"){
				location.reload() 
			}
		}
	})
}


function  showRefuse(bugid,assigned){
	alert("111");
	$.ajax({
		type : "GET",
		url : "GetAssigned.do",
		data: {bugid: bugid,assigned:assigned},
		async : false,
		dataType : "text",
		success : function(data) {
		//	alert(data);
		var con= document.getElementById("Refuse").innerHTML;
		var co= document.getElementById("Refuse");
		 document.getElementById("bugid").value=bugid ;
		co.innerHTML=data+ con;	
		  	layer.open({
	    		title : '亲，太爱你了，你又消灭一个bug！',
	    		skin : 'layui-layer-molv',
	    		type : 1,
	    		area : [ '600px', '360px' ],
	    		shadeClose : true, // 点击遮罩关闭
	    		content : $('#ShowRefuse'),
	    	});
		}
	});	
}

function  RefuseOperation(pstatus){
	var se = document.getElementById("Refuse").selectedIndex;//获得是第几个被选中了
	var assigned = document.getElementById("Refuse").options[se].value;
	alert(assigned+"assigned")
	var bugid  = document.getElementById("bugid").value ;
	
	$.ajax({
		type : "GET",
		url : "SetPstatusAndAssigned.do",
		data: {bugid: bugid,assigned:assigned,pstatus:pstatus},
		async : false,
		dataType : "text",
		success : function(data) {
			//alert(data);
			if(data=="ok"){
				location.reload() 
			}
		}
	})
}














function showFenPei(bugid,assigned){
    	$.ajax({
    		type : "GET",
    		url : "GetAssigned.do",
    		data: {bugid: bugid,assigned:assigned},
    		async : false,
    		dataType : "text",
    		success : function(data) {                     
    			var con= document.getElementById("Assigned").innerHTML;
    			var co= document.getElementById("Assigned");
    			co.innerHTML=data+ con;	
    			 document.getElementById("bugid").value=bugid ;
    			
    		//	alert(data);
    		  	layer.open({
    	    		title : '创建操作',
    	    		skin : 'layui-layer-molv',
    	    		type : 1,
    	    		area : [ '600px', '360px' ],
    	    		shadeClose : true, // 点击遮罩关闭
    	    		content : $('#ShowAssigned'),
    	    	});
    			
    		}
    	});	
}  	


function  CaseAssigned(){
	var se = document.getElementById("Assigned").selectedIndex;//获得是第几个被选中了
	var assigned = document.getElementById("Assigned").options[se].value;
	alert(assigned+"assigned")
	var bugid  = document.getElementById("bugid").value ;
	
	$.ajax({
		type : "GET",
		url : "CaseAssigned.do",
		data: {bugid: bugid,assigned:assigned},
		async : false,
		dataType : "text",
		success : function(data) {
			//alert(data);
			if(data=="ok"){
				location.reload() 
			}
		}
	})
}
</script>






	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../../layer/layer.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<!--  <script src="js/defectlist.js"></script> -->
	<!-- Bootstrap table -->
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<!-- Peity -->
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>


	<script>
function delBug(){
	
	aert("删除成功！");
	
}

</script>





</body>

</html>
