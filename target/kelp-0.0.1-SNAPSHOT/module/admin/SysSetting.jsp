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
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

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
										<label class="col-sm-2 control-label">站点地址</label>
										<div class="col-sm-6">
											<input type="text"   value="${weburl}"     onblur="SetSysInfo('url')"  id="weburl"      class="form-control" >
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-2 control-label">设置应用首页</label>
										<div class="col-sm-6">
											<input type="text"   value="${page}"     onblur="SetDefeaultPage()"  id="page"      class="form-control" >
										</div>
									</div>





<!-- 
									<div class="form-group">
										<label class="col-sm-2 control-label">联系电话</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="telephone">
										</div>
									</div>


									<div class="form-group">
										<label class="col-sm-2 control-label">传真</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="fox">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">通讯地址</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="address">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">邮政编码</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="pz">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">官网</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="webaddress">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">内网</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="inwebaddress">
										</div>
									</div>



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

	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script src="js/company.js"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<!--统计代码，可删除-->
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
         }
	 });
}

function   SetSysInfo(fieldname){
	var  value =	 document.getElementById("weburl").value ;
	 $.ajax({
         type: "POST",
         url: "SetSysInfo.do",
         contentType: "application/x-www-form-urlencoded",
        data: {value:value,fieldname:fieldname},
         success: function(msg) {
             alert(msg);
         }
	 });
}










</script>




</body>

</html>