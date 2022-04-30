<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>kelp测试平台</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">


	<div class="wrapper wrapper-content">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>系统设置</h5>
					</div>
					<div class="ibox-content" style="min-height: 800px;" >
						<div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-6">

								<form role="form" method="get" class="form-horizontal">
									<div class="form-group">
										<label class="col-sm-3 control-label">站点地址</label>
										<div class="col-sm-6">
											<input type="text"   value="${weburl}"     onblur="SetSysInfoUrl('url')"  id="weburl"      class="form-control" >
										</div> 
										<div class="col-sm-3">
											地址末尾不需要斜杠'/'
										</div>                                              
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">设置应用首页</label>
										<div class="col-sm-6">
											<input type="text"   value="${page}"     onblur="SetDefeaultPage()"  id="page"      class="form-control" >
										</div>
									</div>
 									<div class="form-group">
										<label class="col-sm-3 control-label">html生成地址</label>
										<div class="col-sm-6">
											<input type="text"   value="${htmladdress}"      onblur="SetSysInfo('htmladdress','htmladdress')"  id="htmladdress"      class="form-control" >
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">地址是否使用</label>
										<div class="col-sm-6">
													<c:if test="${issethtml==0}"><label class="col-sm-8 control-label" style="martgin-left:0px;">html生成地址 - 未启用</label>     <input type="hidden"  value="1"  id="issethtml" > <a href="#" onclick="SetSysInfo('issethtml','issethtml')">设置为启用</a> </c:if>
													<c:if test="${issethtml==1}"><label class="col-sm-8 control-label" style="martgin-left:0px;">html生成地址 - 已启用</label> <input type="hidden"  value="0"  id="issethtml" > <a href="#" onclick="SetSysInfo('issethtml','issethtml')">设置为停用</a>  </c:if>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label">频道模式：</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" value="${site.singleitem}" id="telephone" onblur="updataSystemSetting(this,'SingleItem')">
										</div>
										<div class="col-sm-5">
									  <label >windows模式：100 ;单频道模式：频道目录  ;多频道首页模式：200</label>
										</div>
									</div>
<!-- 

								
						


									<div class="form-group">
										<label class="col-sm-2 control-label"></label>
										<div class="col-sm-6">

											<div class="btn btn-primary" onclick="saveCompanyInfo()">保存</div>
											<div class="btn btn-primary" onclick="getCompanyInfo()">取消</div>
										</div>
									</div>
 -->


								</form>
							</div>
							<div class="col-sm-2"></div>

						</div>
					</div>
				</div>






			</div>
		</div>
	</div>















	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="/layer/layer.js"></script>

	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
<script>
function   SetDefeaultPage(){
	var  page=	 document.getElementById("page").value ;
	 $.ajax({
         type: "POST",
         url: "SetDefaultPage.do",
         contentType: "application/x-www-form-urlencoded",
        data: {page:page},
         success: function(msg) {
             alert(msg);
         },
         error: function(){
        	 alert("ddd");
         }
        
        
	 });
}

function   SetSysInfoUrl(fieldname){
	alert("fgfgf");
	var  value =	 document.getElementById("weburl").value ;
	alert(value);
	 $.ajax({
         type: "POST",
         url: "SetSysInfo.do",
         async : false,
         contentType: "application/x-www-form-urlencoded",
        data: {value:value,fieldname:fieldname},
         success: function(msg) {
             alert(msg);
         }
	 });
}

function   SetSysInfo(elementid,fieldname){
	var  value =	 document.getElementById(elementid).value ;
//	alert(value);
//	alert(fieldname);
	 $.ajax({
         type: "POST",
         url: "SetSysInfo.do",
         contentType: "application/x-www-form-urlencoded",
        data: {value:value,fieldname:fieldname},
         success: function(msg) {
             alert(msg);
             window.location.reload();
         }
	 });
}

function updataSystemSetting(self,fieldName){
	var  value=self.value;
	var url="/module/admin/updataSystemSetting.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {value:value,fieldName:fieldName},
		dataType : "json",
		success : function(result) {
			alert(result);
		}
	});
}











</script>




</body>

</html>