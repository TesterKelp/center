<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>身在江湖_用户中心_个人信息</title>
<meta name="keywords" content="身在江湖,用户中心,个人信息">
<link rel="shortcut icon" href="favicon.ico">
<link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" type="text/css"href="/test/res/webuploader.css">
<link href="/test/css/defect.css" rel="stylesheet">
<script type="text/javascript" src="/test/res/jquery.js"></script>
<script type="text/javascript" src="/test/res/webuploader.js"></script>

<style>  
    #filePicker div:nth-child(2){width:100%!important;height:100%!important;}  
</style>  
</head>

<body class="gray-bg" >
	<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>

	<div class="wrapper wrapper-content"   >
		<div class="row">
		
	
		<div class="col-sm-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-content mailbox-content">
                        <div class="file-manager">
                            <div class="space-25"></div>
                            <h5>个人中心</h5>
                            <ul class="folder-list m-b-md" style="padding: 0">
									<%@ include file="/module/common/menu.jsp"%>
							 </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
		
		

		
			<div class="col-sm-10" >
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>用户中心</h5>
					</div>
					<div class="ibox-content" style="min-height: 950px; height:100%">
						<div class="row">
							
							<div class="col-sm-11" style="line-height:35px">
							
							<div class="col-sm-8" style="line-height:35px">
							${member.username},您好！  <Br>
							
							
							欢迎来到用户中心。  <Br>
							
							在这里可以修改您的个人信息。  <Br>
							
							在这里可以设置博客分类。  <Br>
							
							在这里可以分享知识。  <Br>
							
							在这里您可以管理专题。  <Br>
							
							</div>
							
							<div class="col-sm-4" >
						
								<div id="fileList" class="uploader-list">
											<div id="WU_FILE_0" class="file-item thumbnail upload-state-done">
												<img height="200" width="200" class="img-circle circle-border" id="avatar" src="${member.useravatar}">
												<p class="progress"><span style="width: 100%;"></span></p>
											</div>
										</div>


							</div>
				</div>

			</div>

		</div>
		
	</div>
    </div> 
     
     
     
</div>
  <%@ include file="/module/common/footer.jsp"%> 	





<input type="hidden" class="form-control"  id="av">


	<script>
  var baseUrl = '${pageContext.request.contextPath }';

//图片上传demo
jQuery(function() {
   var $ = jQuery,
       $list = $('#fileList'),
       // 优化retina, 在retina下这个值是2
       ratio = window.devicePixelRatio || 1,
 
       // 缩略图大小
       thumbnailWidth = 100 * ratio,
       thumbnailHeight = 100 * ratio,
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
    
       server: '/module/usercenter/up.do',
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
               '<div id="' + file.id + '" class="file-item thumbnail"     >' +
                   '<img       class="img-circle circle-border" >' +
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
       $("#upInfo").html("<font color='red'>"+response._raw+"</font>");
    //   $("#upInfo").html(" ");
    
      // $("#topicimage").val("/module/usercenter/face/"+response._raw);
       
       $("#avatar").val("/module/usercenter/face/"+response._raw);
       $("#av").val("/module/usercenter/face/"+response._raw);
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













	<!-- 全局js -->
	<script src="/test/js/jquery.min.js?v=2.1.4"></script>
	<script src="/test/js/bootstrap.min.js?v=3.3.6"></script>

	<!-- 自定义js -->
	<script src="/test/js/content.js?v=1.0.0"></script>
	<script src="js/persioninfo.js"></script>
	
<script type="text/javascript">

$.ajax({
	type : "GET",
	url : "/module/admin/getUserName.do",
	dataType : "text",
	success : function(data) {	
		var  aa=	document.getElementById("defect").innerHTML;
		var  bb= document.getElementById("defect");
		bb.innerHTML=aa+data ;
		
		
	}
});	
</script>
 
</body>

</html>