<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>成为测试攻城狮一员。</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../../test/res/webuploader.css">
<script type="text/javascript" src="../../test/res/jquery.js"></script>
<script type="text/javascript" src="../../test/res/webuploader.js"></script>
</head>
<body class="gray-bg">
	<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content animated fadeInRight">

		<div class="row">

	
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>成为测试攻城狮一员</h5>
					</div>

					<div class="ibox-content">
						<div class="row">
							<div class="col-sm-3"></div>

							<div class="col-sm-6">

								<br> <br> <br> <br>


								<form class="form-horizontal m-t" id="signupForm" style="min-height: 800px;">
									<div class="form-group">
										<label class="col-sm-3 control-label">誓言：</label>
										<div class="col-sm-8">


											<div color="#7373B9">
												我愿意成为测试攻城狮一员，<br>为新人和同行分享自己的工作经验和技术，<br>为我们测试攻城狮的现状而努力；</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label">用户名：</label>
										<div class="col-sm-8">
											<input id="username" name="username" class="form-control"
												type="text" aria-required="true" aria-invalid="true"
												class="error">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">密码：</label>
										<div class="col-sm-8">
											<input id="password" name="password" class="form-control"
												type="password">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">确认密码：</label>
										<div class="col-sm-8">
											<input id="confirm_password" name="confirm_password"
												class="form-control" type="password"> <span
												class="help-block m-b-none"><i
												class="fa fa-info-circle"></i> 请再次输入您的密码</span>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label">头像地址：</label>
										<div class="col-sm-8">
											<input id="useravatar" name="useravatar" class="form-control"
												value="2.jpg"
												type="hidden"> <input name="imgAddress"
												type="hidden">
											<div id="uploader-demo">
												<!--用来存放item-->
												<div id="fileList" class="uploader-list"></div>
												<div id="upInfo">
													<!--  <img src="../../test/res/image.png" width="150" hight="150">-->
												</div>
												<div id="filePicker">选 择 图 片</div>
												<span class="help-block m-b-none"><i
													class="fa fa-info-circle"></i> 请输入头像地址</span>
											</div>





										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-8 col-sm-offset-3">
											<div class="checkbox">
												<label> <!--    <input type="checkbox" class="checkbox" id="agree" name="agree"> 我已经认真阅读并同意《H+使用协议》-->
												</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-8 col-sm-offset-3">
											<button class="btn btn-primary" type="submit">注册</button>
										</div>
									</div>
								</form>









							</div>
						</div>
					</div>
				</div>
		
		</div>

	</div>


	<%@ include file="/module/common/footer.jsp"%>



	<script>
  var baseUrl = '${pageContext.request.contextPath }';
  
//图片上传demo
jQuery(function() {
   var $ = jQuery,
       $list = $('#fileList'),
       // 优化retina, 在retina下这个值是2
       ratio = window.devicePixelRatio || 1,
 
       // 缩略图大小
       thumbnailWidth = 150 * ratio,
       thumbnailHeight = 150 * ratio,
       // Web Uploader实例
       uploader;
   // 初始化Web Uploader
   uploader = WebUploader.create({
       // 自动上传。
       auto: true,
       // swf文件路径
      // swf:  baseUrl+'js/Uploader.swf',
      swf:  baseUrl+'js/Uploader.swf',
       // 文件接收服务端。
       //server: baseUrl+'/files/addImg',
    
       server: baseUrl+'/module/usercenter/up.do',
       // 选择文件的按钮。可选。
       // 内部根据当前运行是创建，可能是input元素，也可能是flash.
       pick: '#filePicker',
    // 图片质量，只有type为`image/jpeg`的时候才有效。
       quality: 90,
       // 只允许选择文件，可选。
       fileNumLimit: 1,
       accept: {
           title: 'Images',
           extensions: 'gif,jpg,jpeg,bmp,png',
           mimeTypes: 'image/*'
       }
   });
 
 
// 当有文件添加进来的时候
   uploader.on( 'fileQueued', function( file ) {
	 
       var $li = $(
               '<div id="' + file.id + '" class="file-item thumbnail">' +
                   '<img>' +
     //              '<div class="info">' + file.name + '</div>' +
               '</div>'
               ),
           $img = $li.find('img');
       // $list为容器jQuery实例
       $list.html("");
       $list.append( $li );
 
       // 创建缩略图
       // 如果为非图片文件，可以不用调用此方法。
       // thumbnailWidth x thumbnailHeight 为 100 x 100
       uploader.makeThumb( file, function( error, src ) {
           if ( error ) {
               $img.replaceWith('<span>不能预览</span>');
               return;
           }
 
           $img.attr( 'src', src );
       }, thumbnailWidth, thumbnailHeight );
       
       $("#filePicker").on('click',function(){
    	   uploader.removeFile(file);
       });
    
   });
 
// 文件上传过程中创建进度条实时显示。
   uploader.on( 'uploadProgress', function( file, percentage ) {
       var $li = $( '#'+file.id ),
           $percent = $li.find('.progress span');
 
       // 避免重复创建
       if ( !$percent.length ) {
           $percent = $('<p class="progress"><span></span></p>')
                   .appendTo( $li )
                   .find('span');
       }
       $percent.css( 'width', percentage * 100 + '%' );
   });
   // 文件上传成功，给item添加成功class, 用样式标记上传成功。
   //注意我写样式了啊response:服务端返回的数据
   uploader.on( 'uploadSuccess', function( file,response) {
       $( '#'+file.id ).addClass('upload-state-done');
       //console.info(response);
    //   $("#upInfo").html("<font color='red'>"+response._raw+"</font>");
    //   $("#upInfo").html(" ");
       $("#useravatar").val(response._raw);
   });
 
   // 文件上传失败
   uploader.on( 'uploadError', function(file) {
       var $li = $( '#'+file.id ),
           $error = $li.find('div.error');
       alert(reson);
 
       // 避免重复创建
       if ( !$error.length ) {
           $error = $('<div class="error"></div>').appendTo( $li );
       }
 
       $error.text('上传失败!');
   });
 
   // 完成上传完了，成功或者失败，先删除进度条。
   uploader.on( 'uploadComplete', function( file ) {
       $( '#'+file.id ).find('.progress').remove();
   });
});
</script>




















	<script type="text/javascript">
	 function  Register() {
		var username=	document.getElementById("username").value ;
		var  password=	document.getElementById("password").value ;
		var  useravatar=	document.getElementById("useravatar").value ;
		$.ajax({
			type : "POST",
			url : "Register.do",
			data: {username: username, password: password , useravatar:useravatar},
			async : false,
			dataType : "text",
			success : function(data) {
		alert(data);
			}
		});	
	 }
    </script>

	<!-- 全局js -->
	<script src="../../test/js/jquery-form.js"></script>
	<script src="../../test/js/jquery.Jcrop.min.js"></script>
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<!-- jQuery Validation plugin javascript-->
	<script src="../../test/js/plugins/validate/jquery.validate.min.js"></script>
	<script src="../../test/js/plugins/validate/messages_zh.min.js"></script>
	<script src="../../test/js/demo/form-validate-demo.js"></script>
</body>

</html>