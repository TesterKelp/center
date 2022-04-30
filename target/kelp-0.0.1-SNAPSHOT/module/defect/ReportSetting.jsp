<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<script src="../../test/js/ichart.1.2.1.src.js"></script>
<link href="../../test/css/plugins/iCheck/custom.css" rel="stylesheet">
<script src="../../test/js/plugins/iCheck/icheck.min.js"></script>
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
			<div class="ibox-content">
				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Events -->
						<div class="example-wrap">
							<div class="example">
								<br>

								<c:if test="${isshow==1}">    当前状态：开启      <a href="#"
										onclick="SetReportIsShow(${reportid},'0')"> [ 关闭 ] </a>
								</c:if>
								<c:if test="${isshow==0}">    当前状态：关闭      <a href="#"
										onclick="SetReportIsShow(${reportid},'1')"> [ 开启 ] </a>
								</c:if>
								<hr>
								<br> <br>


								<div class="form-group">
									<label class="col-sm-1 control-label">报告标题：</label>
									<div class="col-sm-4">
										<input type="text" value="${reportname}"  id="title"   onblur="SetTitle(${reportid})"   class="form-control">
									</div>
								</div>







								<br> <br> <br>
								<hr>

								统计范围： <br> <br>
								<!--  
								<div class="col-sm-2">
									<select class="form-control" name="priority" id="df"  width="300px">
										<option value="1">严重程度</option>
										<option value="2">优先级</option>
										<option value="3">缺陷状态</option>
										<option value="4">开始时间</option>
										<option value="4">结束时间</option>
										<option value="4">创建人</option>
										<option value="4">当前指派</option>
									</select>
								</div>
								<div class="col-sm-1">
									<select class="form-control" name="priority">
										<option value="1">等于</option>
										<option value="2">不等于</option>
									</select>
								</div>
								<div class="col-sm-1">
								<input type="text"  class="form-control" >
								</div>
								<div class="col-sm-1">
									<select class="form-control" name="priority">
										<option value="1">or</option>
										<option value="2">and</option>
									</select>
								</div>
								-->
								
								
								
								
						 <div class="col-sm-2">

									<select class="form-control" name="priority" id="projectid"  width="300px">
									
									<c:forEach items="${plst}" var="a" varStatus="status">
									
								<c:if test="${a.projectid==qw}">   selected   </c:if>
									<option value="${a.projectid }" <c:if test="${a.projectid==qw}">   selected   </c:if> >${a.projectname }</option>
									
									
									</c:forEach>
										<option value="1">严重程度</option>
										<option value="2">优先级</option>
										<option value="3">缺陷状态</option>
										<option value="4">开始时间</option>
										<option value="4">结束时间</option>
										<option value="4">创建人</option>
										<option value="4">当前指派</option>
									</select>
								</div>
								<div class="col-sm-2">
								<input type="text"  id="bstime"  onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"  class="form-control"  placeholder="开始时间"   value="${bstime}"   >
								</div>
								<div class="col-sm-2">
								<input type="text"   id="betime"   onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"  class="form-control"  placeholder="结束时间"  value="${betime}">
								</div>
						<div class="col-sm-2">
							<div id="test1" class="btn btn-primary" onclick="saveInfo(${reportid})">保存</div>
						</div>
								
								
								
								
								<br><br>
								

								<br> <br> <br> 统计数据
								<hr>
								<br> <br>



								<table class="table table-striped table-bordered">
									<c:forEach items="${moduleList }" var="a">
										<tr>
										<td>
											 <c:if test="${a.isshow==1}">
										<input type="checkbox" id="CheckBox1"    checked="checked"   onclick="onoff(${a.picid},this)"/>
										</c:if>
										<c:if test="${a.isshow==0}">
										<input type="checkbox" id="CheckBox1"     onclick="onoff(${a.picid},this)"/>
											</c:if> 
										</td>
											<td>
												<div id='${a.divv}'></div>
											</td>
											<td><input type="hidden" value="${a.picid}" id="picid"
												name="picid" class="form-control"> <input
												type="hidden" value="${a.divv}" id="divv" name="divv"
												class="form-control"> <input type="hidden"
												value="${a.ptype}" id="ptype" name="ptype"
												class="form-control"> <input type="hidden"
												value="${a.source}" id="ptype" name="source"
												class="form-control">

												<div class="form-group">
													<label class="col-sm-4 control-label">设置标题：</label>
													<div class="col-sm-7">
														<input type="text" value="${a.title}" id="title"name="title" onblur="setdata(${a.picid},this,'title')"
															class="form-control">
													</div>
												</div>


												<div class="form-group">
													<label class="col-sm-4 control-label">设置宽度：</label>
													<div class="col-sm-7">
														<input type="text" value="${a.pwidth}" id="pwidth"
															name="pwidth" class="form-control"  onblur="setdata(${a.picid},this,'pwidth')">
													</div>
												</div>


												<div class="form-group">
													<label class="col-sm-4 control-label">设置高度：</label>
													<div class="col-sm-7">
														<input type="text" value="${a.pheight}" id="pheight"
															name="pheight" class="form-control" onblur="setdata(${a.picid},this,'pheight')"  >
													</div>
												</div>
												
												
												
												
												
												 <c:if  test="${a.ptype==1}" >

													<div class="form-group" >
														<label class="col-sm-4 control-label">设置开始刻度：</label>
														<div class="col-sm-7">
															<input type="text" value="${a.sscale}" id="sscale" name="sscale" class="form-control" onblur="setdata(${a.picid},this,'sscale')">
														</div>
													</div>

													<div class="form-group">
														<label class="col-sm-4 control-label">设置结束刻度：</label>
														<div class="col-sm-7">
															<input type="text" value="${a.escale}" id="escale"
																name="escale" class="form-control" onblur="setdata(${a.picid},this,'escale')">
														</div>
													</div>

													<div class="form-group">
														<label class="col-sm-4 control-label">设置刻度间距：</label>
														<div class="col-sm-7">
															<input type="text" value="${a.sspace}" id="sspace"
																name="sspace" class="form-control" onblur="setdata(${a.picid},this,'sspace')">
														</div>
													</div>
<!--  
													<div class="form-group">
														<label class="col-sm-4 control-label">设置刻度单位：</label>
														<div class="col-sm-7">
															<input type="text" value="${a.pheight}"
																class="form-control" placeholder="设置刻度单位 " onblur="setdata(${a.picid},this,'pwidth')">
														</div>
													</div>
													-->
												</c:if> 
												
											
												
												<c:if test="${a.ptype==0}">

													<div class="form-group">
												<!--  			<label class="col-sm-4 control-label">设置开始刻度：</label>-->
														<div class="col-sm-7">
															<input type="hidden" value="${a.sscale}" id="sscale"
																name="sscale" class="form-control">
														</div>
													</div>

													<div class="form-group">
												<!--  			<label class="col-sm-4 control-label">设置结束刻度：</label> -->
														<div class="col-sm-7">
															<input type="hidden" value="${a.escale}" id="escale"
																name="escale" class="form-control">
														</div>
													</div>

													<div class="form-group">
													<!--  		<label class="col-sm-4 control-label">设置刻度间距：</label> -->
														<div class="col-sm-7">
															<input type="hidden" value="${a.sspace}" id="sspace"
																name="sspace" class="form-control">
														</div>
													</div>

													<div class="form-group">
													<!--  	<label  type="hidden"    class="col-sm-4 control-label">设置刻度单位：</label>-->
														<div class="col-sm-7">
															<input type="hidden" value="${a.pheight}"
																class="form-control" placeholder="设置刻度单位 ">
														</div>
													</div>
												</c:if>
												 
												
												</td>
										</tr>
									</c:forEach>
								</table>

<input type="text"  id="reportid"    value="${reportid}"
														class="form-control" placeholder="设置刻度单位 ">







								<!--  



								<Br> 
                       3. <hr>  创建者统计
                        select COUNT(createuserid),(SELECT realname  from admin_user  where  admin_user.userid =  defect_bug.createuserid) , createuserid from defect_bug   GROUP BY  createuserid
                        
                       <Br> 
                       4.<hr>  按严重程度分类
                       select COUNT(severity), severity from defect_bug   GROUP BY  severity 
                        
                       <Br> 
                       5.<hr>  按优先级分类
                       select COUNT(priority ), priority  from defect_bug   GROUP BY  priority           
-->
							</div>
						</div>
						<!-- End Example Events -->
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
	<!--  <script src="js/defectlist.js"></script> -->
	<!-- Bootstrap table -->

	<script src="js/reportdetail.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>


<script>


function  onoff(picid,a){
	if(a.checked){
		$.ajax({
			type : "POST",
			url : "/module/defect/SetOnOff.do",
			data:{picid:picid,show:1},
			dataType : "json",
			contentType: "application/x-www-form-urlencoded; charset=utf-8", 
			success : function(data) {
				if(data=="ok"){
				}
			}
		});
	}else{
		$.ajax({
			type : "POST",
			url : "/module/defect/SetOnOff.do",
			data:{picid:picid,show:0},
			dataType : "json",
			contentType: "application/x-www-form-urlencoded; charset=utf-8", 
			success : function(data) {
				if(data=="ok"){
				}
			}
		});	
	}

}




function  SetTitle(reportid){
	alert("dd");
	var title = document.getElementById("title").value;
	$.ajax({
		type : "POST",
		url : "/module/defect/SetReportName.do",
		data:{reportid:reportid,reportname:title},
		dataType : "json",
		contentType: "application/x-www-form-urlencoded; charset=utf-8", 
		success : function(data) {
			if(data=="ok"){
			}
		}
	});	
	
}




$.ajax({
	type : "POST",
	url : "/module/defect/ReportGetOperation.do",
	contentType: "application/x-www-form-urlencoded; charset=utf-8", 
	success : function(data) {
		
		var  dd =document.getElementById("df").innerHTML ;
		document.getElementById("df").innerHTML =dd+data ;
	//	alert(data);
	}
});	



function   saveInfo(reportid){
	
	var se = document.getElementById("projectid").selectedIndex;//获得是第几个被选中了
	var projectid = document.getElementById("projectid").options[se].value;
	var bstime = document.getElementById("bstime").value;
	var betime = document.getElementById("betime").value;
	$.ajax({
		type : "POST",
		url : "/module/defect/SetSearch.do",
		data:{reportid:reportid,projectid:projectid,bstime:bstime,betime:betime},
		contentType: "application/x-www-form-urlencoded; charset=utf-8", 
		success : function(data) {
			if(data=="ok"){
			}
		}
	});	
	
	
}





</script>











</body>

</html>
