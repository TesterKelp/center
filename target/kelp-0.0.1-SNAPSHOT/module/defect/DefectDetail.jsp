<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
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
<link href="../../test/css/defect.css" rel="stylesheet">
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
			<!--  
            <div class="ibox-title">
                <h5>其他</h5>
            </div>
       -->
			<div class="ibox-content">
				<div class="row row-lg">

					<div class="col-sm-12" style="min-height: 850px;">
						<div class="col-sm-8">
							${bugtitle}
							<hr>
							<br> ${bugstep}
							<hr>
							<br>





							<div align="center" id="op"></div>



							<c:forEach items="${cyclelist}" var="a" varStatus="status">
                 		${ status.index + 1}  ：  ${a.ntime}       ${a.realname}          ${a.operation}   <br>

							</c:forEach>
							<br>
						</div>
						<div class="col-sm-4">
					相关信息
					<hr><Br>

<table width="80%">
<tr height="25px"><td>创建者：</td><td>${createrealname} </td></tr>
<tr height="25px"><td>分配给：</td><td>${assignedrealname} </td></tr>
<tr height="25px"><td>	状态 ：</td><td><c:if test="${pstatus==1}">新建</c:if><c:if test="${pstatus==2}">已解决</c:if><c:if test="${pstatus==3}">已关闭</c:if> </td></tr>
<tr height="25px"><td>严重程度：</td><td> ${severity} </td></tr>
<tr height="25px"><td>优先级别：</td><td> ${priority} </td></tr>
<tr height="25px"><td>创建时间：</td><td>${createtime} </td></tr>
<auto:DefectTags   bugid="${bugid}"></auto:DefectTags>


</table>





						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Panel Other  type="hidden"   -->
	</div>
	<input class="form-control" type="hidden" value="${operationcode}"
		id="operationcode">
	<input class="form-control" type="hidden" value="${pstatus}"
		id="pstatus">
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
						onclick="CaseAssigned(${bugid})">分配</button>
				</div>
			</div>
		</div>
	</div>



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
						onclick="CasePstatus(${bugid})">解决</button>
				</div>
			</div>
		</div>
	</div>

	<div id="ShowRefuse" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">
				<div class="form-group">
					<label class="col-sm-3 control-label">守护天使：</label>
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
					 	<button type="input" class="btn btn-primary" onclick="DefectRefuse(${bugid})">拒绝</button>
				</div>
			</div>
		</div>
	</div>





	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script src="../../layer/layer.js"></script>
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
function delBug(bugid){
alert("456456456456456456");
	$.ajax({
		type : "GET",
		url : "delcase.do",
		data: {bugid: bugid},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
		}
	});	
}



function  DefectRefuse(bugid){
	var se = document.getElementById("Refuse").selectedIndex;//获得是第几个被选中了
	var assigned = document.getElementById("Refuse").options[se].value;
	$.ajax({
		type : "GET",
		url : "DefectRefuse.do",
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


	<script>

function showFenPei(bugid,assigned){
    	$.ajax({
    		type : "GET",
    		url : "GetAssigned.do",
    		data: {bugid: bugid,assigned:assigned},
    		async : false,
    		dataType : "text",
    		success : function(data) {
    		//	alert(data);
    		var con= document.getElementById("Assigned").innerHTML;
    		var co= document.getElementById("Assigned");
    		co.innerHTML=data+ con;	
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

function showRepair(bugid,assigned){

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




function  CasePstatus(bugid){
	var se = document.getElementById("Repair").selectedIndex;//获得是第几个被选中了
	var repair = document.getElementById("Repair").options[se].value;
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


function  CaseAssigned(bugid){
	var se = document.getElementById("Assigned").selectedIndex;//获得是第几个被选中了
	var assigned = document.getElementById("Assigned").options[se].value;
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
	//	 document.getElementById("bugid").value=bugid ;
		co.innerHTML=data+ con;	
		  	layer.open({
	    		title : '天使，你是不是守护错人了。',
	    		skin : 'layui-layer-molv',
	    		type : 1,
	    		area : [ '600px', '360px' ],
	    		shadeClose : true, // 点击遮罩关闭
	    		content : $('#ShowRefuse'),
	    	});
		}
	});	
}




























var  ff = document.getElementById("operationcode").value ;
var  pstatus = document.getElementById("pstatus").value ;
//var a = '<a href="#" mce_href="#" onclick="delblog(\''+row.articleid +'\')">关闭</a> ';
var strs= new Array();
strs=ff.split(",");
////{"closebug","ebug","xbug","dbug","gbug","ropen","rbug"};
////关闭   编辑   修复  删除 分配  重新打开   拒绝       	
var  hclosebug ="<a href='#'   onclick=\"CloseDefect("+ ${bugid} +")\">  <font color='#F00'>关闭  </font></a>" ;
var  nclosebug="关闭 ";
var  hebug="<a href='DefectLoaderEditPage.do?bugid="+${bugid}+"'>  <font color='#F00'>编辑  </font></a> ";
var  nebug="编辑 ";
var  hxbug="<a href='#'  onclick=\"showRepair("+${bugid}+","+${createuserid}+")\">  <font color='#F00'  >修复  </font></a>"; 
var  nxbug="修复 ";
var  hdbug="<a href='delcase.do?bugid=${bugid}'  >  <font color='#F00'>删除  </font></a>   ";
var  ndbug="删除 ";
var  hgbug="<a href='#'    onclick=\"showFenPei("+${bugid}+","+${assigned}+")\" >  <font color='#F00'>分配   </font></a>   ";
var  ngbug="分配 ";
var  hropen="<a href='' >  <font color='#F00'>激活    </font></a>   ";
var  nropen="激活 ";
var  hrbug="<a href='#' onclick=\"showRefuse("+${bugid}+","+${createuserid}+")\">  <font color='#F00'>拒绝     </font></a>  ";
var  nrbug="拒绝 ";
var result ="";
//
if(pstatus==1){  // 新建
if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
if( strs[2]==1){ result = result + hxbug ; }else{result = result + nxbug ;}
if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }
if( strs[5]==1){ result = result + hrbug ; }else{result = result + nrbug ; }
}
if(pstatus==2){   //"已解决"; 
if( strs[1]==1){result = result + hebug ; }else{ result = result + nebug ; }
if( strs[0]==1){ result = result + hclosebug  ; }else{ result = result + nclosebug ; }
if( strs[2]==1){result = result + nxbug ; }else{ result = result + nxbug ; }
if( strs[3]==1){ result = result + hdbug ;}else{result = result + ndbug ; }
if( strs[4]==1){result = result + hgbug ; }else{result = result + ngbug ; }
if( strs[5]==1){ result = result + hrbug ; }else{result = result + nrbug ; }
}
if(pstatus==3){   //"已关闭"; 
 if( strs[1]==1){ result = result + hebug ; }else{ result = result + nebug ; }
if( strs[0]==1){result = result + nclosebug  ; }else{result = result + nclosebug ; }
if( strs[2]==1){result = result + nxbug ; }else{ result = result + nxbug ;}
if( strs[3]==1){result = result + hdbug ; }else{ result = result + ndbug ; }
if( strs[4]==1){ result = result + hgbug ; }else{result = result + ngbug ; }
if( strs[5]==1){ result = result + nrbug ; }else{ result = result + nrbug ; }
}

if(pstatus==4){  
//	  return "打开";  
if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
if( strs[2]==1){ result = result + hxbug ; }else{result = result + nxbug ;}
if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }
if( strs[5]==1){ result = result + hrbug ; }else{result = result + nrbug ; }
}
if(pstatus==5){  
//	  return "拒绝";  
if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
if( strs[2]==1){ result = result + nxbug ; }else{result = result + nxbug ;}
if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }
if( strs[5]==1){ result = result + nrbug ; }else{result = result + nrbug ; }    
}
if(pstatus==6){  
//	  return "重新打开";  
if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
if( strs[2]==1){ result = result + hxbug ; }else{result = result + nxbug ;}
if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }
if( strs[5]==1){ result = result + hrbug ; }else{result = result + nrbug ; }
}


var con= document.getElementById("op").innerHTML;
var co= document.getElementById("op");
co.innerHTML=result + con;	















</script>
</body>

</html>
